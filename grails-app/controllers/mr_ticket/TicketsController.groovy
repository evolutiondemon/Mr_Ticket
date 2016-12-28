package mr_ticket

class TicketsController {


    def index() {}

    def home() {

    }
    def newTicket() {}

    def saveTicket() {
        def today = new Date()
        today.format("MM/dd/yyyy HH:mm")
        params.dateSubmitted = today
        params.dateStatus = today
        def ticket = new Tickets(params)

        if (!ticket.save()) {
            ticket.errors.allErrors.each {
                println it
            }
        }
        def pDate = new Date()
        render(view: "submitted", model: [Tickets: ticket], pDate: pDate)
    }

    def submitted() {

    }

    def listTickets() {
        def model =   [ticketsInstanceList: Tickets.list(sort: params.sort, order: params.order)]

        model

    }
    def showTicket() {

    }

    def updateTicket(){
        println params.id
        def ticket = Tickets.get(params.id)

        [ticket: ticket]

    }
}

