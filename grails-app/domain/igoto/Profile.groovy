package igoto

class Profile {

    String fullName;
    String userName;
    String address;
    String dob;
    String sex;
    String image;
    static belongsTo = [User]
    static constraints = {
        fullName(nullable:true)
        userName(nullable:true)
        address(nullable:true)
        dob(nullable:true)
        sex(nullable:true)
        image(nullable: true)
    }
}
