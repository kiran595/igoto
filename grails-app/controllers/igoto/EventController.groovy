package igoto

import javax.servlet.http.HttpSession
import java.text.SimpleDateFormat

class EventController {

    def index() {
        render (view: "/event/index")
    }

    def create(){
        User user = User.get(session.userid)
        Event event = new Event();
        SimpleDateFormat df = new SimpleDateFormat("dd/MM/yyyy");
        String date = df.format(new Date());

//        println("date printing000000"+date)

        event.event_name = params.event_name;
        if(params.event_type){
        event.event_type = params.event_type;
        }
        event.organizers_name = params.organizers_name;

        event.event_date = params.event_date;
        if(params.created_date){
        event.created_date = date;
        }
        event.venue = params.venue;
        event.contact = params.contact;
        event.event_time = params.event_time;
        event.description = params.description;
        def category = Category.get(params.category);
        event.category = category;


        println("userid-----"+user.id)
        println("event name date----"+event.event_date)
//        println("event date----"+event.created_date)
//        println("event date----"+event.event_date)
//        println("event date----"+event.event_type)
//        println("event date----"+event.venue)
//        println("event date----"+event.organizers_name)
//        println("event cat222----"+event.category)
//        println("event date----"+event.contact)
//        println("event date----"+event.event_time)
        boolean test1=user.addToEvent(event)
//        println("hello how are you"+test1)

        boolean test = user.save()
//        println("test value------"+test)

        if(test){
            redirect(controller: "event" ,action: "join")
        }
        else{
            redirect(action:  "index")
        }
    }


    def delete(){
        def event = Event.get(params.id);
        if(event){
            event.delete();
            redirect(controller: "profile",action: "viewprofile")
        }
        else {
            redirect(action: "index")
        }
    }

    def edit(){
        def event = Event.get(params.id);
        render (view:"/event/edit",model: [editEvent:event])
    }

    def update(){
        User user = User.get(session.userid)

        Event event = Event.get(params.id)
        SimpleDateFormat df = new SimpleDateFormat("dd/MM/yyyy");
        String date = df.format(new Date());

        println("date printing000000"+date)

        event.event_name = params.event_name;
//        println("event bla bla "+event.event_name)
        if(params.event_type){
            event.event_type = params.event_type;
        }
        event.organizers_name = params.organizers_name;
        event.event_date = params.event_date;
        if(params.created_date){
            event.created_date = date;

        }
        event.venue = params.venue;
        event.contact = params.contact;
        event.event_time = params.event_time;
        event.description = params.description;
        def category = Category.get(params.category);
        event.category = category;


        println("userid-----"+user.id)
        println("event name date----"+event.event_date)
//        println("event date----"+event.created_date)
//        println("event date----"+event.event_date)
//        println("event date----"+event.event_type)
//        println("event date----"+event.venue)
//        println("event date----"+event.organizers_name)
//        println("event cat222----"+event.category)
//        println("event date----"+event.contact)
//        println("event date----"+event.event_time)
        boolean test1=user.addToEvent(event)
//        println("hello how are you"+test1)

        boolean test = user.save()
//        println("test value------"+test)

        if(test){
            redirect(controller: "event" ,action: "join")
        }
        else{
            redirect(action:  "index")
        }
    }

    def showPublic(){
//        println("params of programming---"+params.keyword)
        def event = Event.list();
        def check = event.event_type;
        List<Event> publiceventList=new ArrayList<>();
//        eventList.add((check));

        for(int i=1;i<event.size();i++){
            if(check[i].equalsIgnoreCase("public")){
                publiceventList.add(event[i]);
            }
        }
        println("list list list---"+publiceventList)
        render(view: "/index", model: [eventinfo: publiceventList])
    }

    def join(){
        def user = User.get(session.userid);
        println("user info in join------------"+user.email)
        def event = Event.get(params.id);
        println("joined event printwed---"+params.id);
        def recom = Recommend.findByUserAndEvent(user,event);
        println("hurray again feri"+recom)
        if (!recom) {
            def recommend = new Recommend();
            recommend.setUser(user);
            recommend.setEvent(event);
            recommend.save(flush: true);
            flash.message = "You have joined"
        }
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
        eventlist.sort{it.created_date}
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
        eventlist.sort{it.event_date};

        render(view: "/profile/index", model: [use: user, sevent: wholeeventlist, eventList: eventlist, peopleYouKnow: peopleYouKnow,recommendList: list])
    }



    def unjoin(){
        def user = User.get(session.userid);
        println("user info in join------------"+user.email)
        def event = Event.get(params.id);
        println("joined event printwed---"+params.id);
        def recom = Recommend.findByUserAndEvent(user,event);
        println("hurray unjoin ko recomm "+recom)
        if (recom) {
           recom.delete(flush: true);

        }

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
        eventlist.sort{it.created_date}
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
        eventlist.sort{it.event_date};

        render(view: "/profile/index", model: [use: user, sevent: wholeeventlist, eventList: eventlist, peopleYouKnow: peopleYouKnow,recommendList: list])

    }

    def search(){
        List<Event> elist = new ArrayList<>();
        def event = Event.findAllByEvent_nameLike(params.keyword+"%",params);
        if(event.event_type.equals("public")){
            elist.add(event);
        }
        render (view: "/index", model: [elist:elist])
    }
}

