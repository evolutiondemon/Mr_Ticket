package mr_ticket

class Admins {
    String fullName
    String firstName
    String lastName
    String phoneNumber
    String adminEmail


    static constraints = {
        adminEmail email: true, blank: false
    }
}
