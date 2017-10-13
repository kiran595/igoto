package igoto

class  User {
    String email;
    String password;
    String user_type;
    Profile profile;

    static hasMany = [event:Event,followers:User,following:User]
    static constraints = {
        email(blank: false, nullable: false)
        password(blank: false, nullable: false)
        profile(nullable: true);
    }
}