package igoto

class CategoryController {
    def create(){}
    def index() {
        def cat=Category.list();
        [categorylist:cat]
    }
    def save(){
        def cat=new Category(params);
        if(cat.save())
        {
            redirect(action:"index")
        }
        else
        {
            redirect(action:"create")
        }
    }

    def edit(){
        def cat = Category.get(params.id);
        [catinfo:cat]
    }

    def update(){
        def cat = Category.get(params.id);
        if(cat){
            cat.cat_name = params.cat_name;
            redirect(action: "index")
        }
        else{
            render (view: "edit",model: [catinfo: cat])
        }
    }

    def delete(){
        def cat = Category.get(params.id);
        if(cat){
            cat.delete();
            redirect(action: "index")
        }
        else {
            redirect(action: "index")
        }
    }
}

