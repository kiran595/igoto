package igoto

class Category {
    String cat_name;
    static constraints = {
        cat_name(blank: false, nullable: false)
    }
}
