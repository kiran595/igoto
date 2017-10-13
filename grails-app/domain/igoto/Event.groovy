package igoto

class Event {
    String event_name;
    String event_type;
    String venue;
    String organizers_name;
    String contact;
    String event_time;
    Date event_date;
    String created_date;
    Category category;
    String description;
//    static hasMany = [joined:User]
    static belongsTo = [user:User]
    static constraints = {
        event_name(blank: true, nullable: true)
        event_type(blank: false, nullable: true)
        venue(blank: false, nullable: true)
        organizers_name(blank: false, nullable: true)
        contact(blank: false, nullable: true)
        event_time(blank: false, nullable: true)
        event_date(blank: false, nullable: true)
        created_date(blank: true,nullable: true)
        category(blank: true, nullable: true)
    }
}
