package igoto

import java.security.MessageDigest

/**
 * Created by Crown on 6/10/2017.
 */
class LoginController {

    def index() { render(view: "/login/index") }

    def postLogin() {

        if (params.email && params.password) {
//            String password = params.password;
//            String md5enc = "";
//            MessageDigest md = MessageDigest.getInstance("MD5");
//            md.reset();
//            md.update(password.getBytes("UTF-8"));
//            byte[] digest = md.digest(password);
//            BigInteger bigint = new BigInteger(1,digest);
//            String hash = bigint.toString(16);
//            while(hash.length()<32)
//                hash = "0"+hash;
//            md5enc+=hash;
//            println("jkhdsakjfhadsk digest---"+md5enc)
            def user = User.findByEmailAndPassword(params.email, params.password);
            if (user) {
                session.userid = user.id;
                session.email = user.email;
                session.type = user.user_type;
                println("session type printing" + session.type)
                def event = Event.list();

//**************************EVENT RECOMMENDATION KO LAGI**********************************//
                List<Event> eventlist = new ArrayList();
                List<Event> eventcheck = new ArrayList();
                List<String> category = new ArrayList<>();
                def wholeeventlist = Event.list();
                def list = Recommend.list();   //contains all records from recommend table
                for (Recommend list1 : list) {
                    if (list1.user.id == user.id) {
                        eventcheck.add(list1.event); //contains recommend table ko event list matching to session user
                        category.add(list1.event.category.cat_name);
                    }
                }
                for (String catName : category) {
                    for (Event finalList : wholeeventlist) {
                        if (!eventcheck.contains(finalList)) {
                            if (finalList.category.cat_name == catName) {
                                eventlist.add(finalList);  //contains events for recommendation

                            }
                        }
                    }
                }
                eventlist.sort{it.event_date};

//**********************************FOLLOW RECOMMENDATION KO LAGI***************************************************//
                def userList = User.list();
                userList.remove(user);
                Set<User> peopleYouKnow = new HashSet<>();
                for (User ul : userList) {
                    if (user?.following?.contains(ul)) {
                        ul.following.each {
                            peopleYouKnow.add(it)
                        }
                    }
                }

//*******************************END RECOMMENDATION PART***********************************************************//


                render(view: "/profile/index", model: [use: user, sevent: event, eventList: eventlist, peopleYouKnow: peopleYouKnow,recommendList: list])
            } else {
                redirect(controller: "login", action: "index");
            }
        } else {
            redirect(action: "index");
        }
    }

    def registration(){
        render(view:"/login/registration")
    }


    def logout(){
        if(session.userid){
            session.userid="";
            session.username="";
            session.invalidate();
            redirect(action: "index");
        }
    }

}