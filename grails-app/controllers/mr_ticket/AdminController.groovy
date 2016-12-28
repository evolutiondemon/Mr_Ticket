package mr_ticket

class AdminController {

    def index() { }

    def addAdmin() {

    }
    def saveAdmin() {
        params.fullName = "$params.firstName $params.lastName"
        def admin = new Admins(params)
        if (!admin.save()) {
            admin.errors.allErrors.each {
                println it
            }
        }
    }
}
