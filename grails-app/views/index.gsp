<!doctype html>
<html>
<head>
    <meta name="layout" content="default"/>
    <title>Welcome to the MNIS Helpdesk</title>

    <asset:link rel="icon" href="favicon.ico" type="image/x-ico" />
</head>
<body>

<div class="container">

    <g:form class="panel panel-default" name="New Ticket" action="saveTicket" controller="tickets">
        <div class="panel-heading">
            <h2>Help Request</h2>
        </div>
        <div class="panel-body">
        <div class="form-group">
            <label for="submittedBy" >Name: </label>
            <g:textField style="width: 400px" class="form-control" name="submittedBy"/>
        </div>

        <div class="form-group">
            <label for="userEmail" >Email: </label>
            <g:field class="form-control" style="width: 400px" type="email" name="userEmail"/>
        </div>

        <div class="form-group">
            <label for="title" >Description: </label>
            <g:textField style="width: 400px" class="form-control" name="title"/>
        </div>

        <div class="form-group">
            <label for="description" >Summary: </label>
            <g:textArea class="form-control" rows="10" style="width: 650px" name="description"/>
        </div>

        <g:field type="text" name="status" value="New" hidden="true"/>
        <g:field type="text" name="assignedTo" value="Awaiting Assignment" hidden="true"/>
        <g:field type="datetime" name="dateSubmitted" value="${new Date()}" hidden="true"/>
        <g:field type="datetime" name="dateStatus" value="${new Date()}" hidden="true"/>

        <div class="form-group">
            <div class="col-sm-offset-2">
                <g:actionSubmit class="btn btn-default" value="Submit New Ticket" action="saveTicket" controller="tickets"/>
            </div>
        </div>
        </div>

    </g:form>
</div>
</body>
</html>
