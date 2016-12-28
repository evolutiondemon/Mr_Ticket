<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
<meta name="layout" content="default"/>
    <title></title>
</head>

<body>
<g:form name="New Admin" action="addAdmin">
<div class="form-group">

    <div class="form-group">
        <label for="firstName">First Name: </label>
        <g:textField name="firstName" class="form-control"/>
    </div>
    <div class="form-group">
        <label for="lastName">Last Name: </label>
        <g:textField name="lastName" class="form-control"/>
    </div>
    <div class="form-group">
        <label for="phoneNumber">Phone Number: </label>
        <g:textField name="phoneNumber" class="form-control"/>
    </div>
    <div class="form-group">
        <label for="adminEmail">Email: </label>
        <g:textField name="adminEmail" class="form-control"/>
    </div>
    


</div>
    <g:actionSubmit value="Save" action="saveAdmin"/>
</g:form>
</body>
</html>