class UrlMappings {

	static mappings = {
		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}

        "/"(controller: "event", action: "showPublic")
        "500"(view:'/error')
	}
}
