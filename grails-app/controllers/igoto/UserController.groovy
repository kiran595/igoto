package igoto

import java.security.MessageDigest

class UserController {

    def save(){
        User user = new User(params);
        user.email = params.email;
//        byte[] password = params.password;
//        MessageDigest md = MessageDigest.getInstance("MD5");
//        byte[] digest = md.digest(password);
//        println("registration digest------"+(String)digest)
        user.password = params.password;
        user.user_type = params.user_type;
        boolean test = user.save()
        if(test){
            render (view: "/login/index",model: [userinfo:user])
        }
        else {
            redirect(controller: "login",action: "registration")
        }
    }

//    def edit(){
//        def user = User.get(params.id);
//        [userinfo:user]
//    }
//
//    def update(){
//        def user = User.get(params.id);
//        user.username = params.username;
//        user.password = params.password;
//        user.user_type = params.user_type;
//        if(user.save()){
//            redirect(action: "index")
//        }
//        else {
//            render (view: "edit",model: [userinfo: user])
//        }
//    }
//
//    def delete(){
//        def user = User.get(params.id);
//        if(user){
//            user.delete();
//            flash.message = "User Deleted Successfully"
//            redirect(action: "index")
//        }
//        else{
//            flash.message = "Not Deleted"
//            redirect(action: "index")
//        }
//    }
}
