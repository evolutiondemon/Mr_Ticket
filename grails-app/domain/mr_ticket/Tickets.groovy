package mr_ticket

class Tickets {
    String title
    String description
    String status
    String submittedBy
    String userEmail
    String assignedTo
    Date dateSubmitted
    Date dateStatus
    
    static constraints = {
        userEmail email: true, blank: false
        dateStatus nullable: true
        dateSubmitted nullable: true
    }
}
