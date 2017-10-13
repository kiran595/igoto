package igoto

import org.springframework.web.multipart.MultipartHttpServletRequest
import org.springframework.web.multipart.commons.CommonsMultipartFile

class ProfileController {

    def index() {}

    def fullprofile(){
        render (view: "fullprofile")
    }

    def save_profile(){
        println("sadjflksad image ko kura"+params)
        uploadImage(params)
        def user = User.get(session.userid)
        if(!user.profile){
            def profile = new Profile();
            user.profile = profile;
        }
        if(params.fullName) {
            user.profile.properties['fullName'] = params
        }
        if(params.userName) {
            user.profile.properties['userName'] = params
        }
        if(params.address) {
            user.profile.properties['address'] = params
        }
        if(params.dob) {
            user.profile.properties['dob'] = params
        }
        if(params.sex) {
            user.profile.properties['sex'] = params
        }
        if(params.image){
            user.profile.properties['image'] = params
        }

        boolean  test = user.save();
        if(user.save()){
            render (view: "index",model: [user:user])
        }
        else{
            redirect(action: "fullprofile")
        }
    }

    def edit(){
        def user = User.get(session.userid);
        [userinfo:user]
    }

    def search(){
        def user = User.get(session.userid);
        println("jksjhfdk this user"+user.email)
        println("user profile params------------"+params.keyword)
        if(params.keyword != user?.profile?.userName){
            def profile = Profile.findAllByUserNameLike(params.keyword+"%",params)
            println("pugey cha ki chiana"+profile.size())
            render (template: "/profile/search",collection:profile, var: "profileinfo", model: [userGot: user])
        }
        else{
            flash.message = "No user found";
            redirect(action: "index")
        }
    }


    def follow(){
        User user = User.get(session.userid)
        Profile profile=Profile.get(params.id)
        println("we can do it "+profile.userName)
        User user1 = User.findByProfile(profile)
        user.addToFollowing(user1)
        user1.addToFollowers(user)
        render (view: "index",model: [user:user])
    }

    def unfollow(){
        User user = User.get(session.userid)
        User user1 = User.get(params.id)
        user.removeFromFollowing(user1)
        user1.removeFromFollowers(user)
        render (view: "index",model: [user:user])
    }

    def listfollowing(){
        def user = User.get(session.userid)

//        println("-----------"+session.userid)
        def userlist=User.findAll();
//        userlist=userlist.remove(user)
//        println("user list-----"+userlist[0].email)
//        println("user list-----"+userlist[1].email)
        render(view: "/profile/followinglist", model: [userlist:userlist,user:user])
    }

    def listfollower() {
        def user = User.get(session.userid);
        def userlist = User.findAll();
        render(view: "/profile/followerslist", model: [userlist: userlist, user: user])
    }

    def viewprofile(){
        def sessionUser = User.get(session.userid)
        def profile = Profile.get(params.id);
//        println("printing this-----"+profile.userName)
//        println("printing this id-----"+profile.id)
        def user = User.findByProfile(profile)
//        println("printing that is this"+user.email)
        def event = Event.findAllByUser(user)
        render(view: "/profile/viewprofile",model: [profile:profile, event:event,sessionUser:sessionUser])
    }

    def uploadImage(params){
        String path = grailsApplication.mainContext.servletContext.getRealPath("");
        MultipartHttpServletRequest mpr = (MultipartHttpServletRequest) request;
        CommonsMultipartFile file = (CommonsMultipartFile) mpr.getFile("imageName");
        if(!file.getOriginalFilename()){
            params.filename = params.hiddenimage;
        }
        else {
            params.filename = file.getOriginalFilename();
        }
        if(file) {
            println("-------------->" + path + "/images/profilepic/" + file.getOriginalFilename())
//            file.transferTo(new File(path+"/images/test/${file.getOriginalFilename()}"))
//            params.image = file.getOriginalFilename();
            try {
                file.transferTo(new File(path + "/images/profilepic/${params.filename}"));
            }
            catch (IOException) {

            }
            params.image = "${params.filename}";
            params.remove("hiddenimage");
            params.remove("stdimage");
        }
        else
        {
            println("i am null what to do")
        }

    }
}
