
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
<meta name="layout" content="default"/>

    <title></title>
</head>

<body>
<div class="content" role="main">
<table class="table-bordered table-hover">
<thead>
    <tr>
    <g:sortableColumn property="status" title="Status"/>
    <g:sortableColumn property="dateStatus" title="Date Last Status"/>
    <th>Summary</th>
    <th>Description</th>
    <th>Submitted By</th>
    <g:sortableColumn property="dateSubmitted" title="Date Submitted"/>
    <g:sortableColumn property="assignedTo" title="Assigned To"/>
    <g:sortableColumn property="id" title="Ticket #"/>

    </tr>


</thead>
<tbody>
<g:each in="${ticketsInstanceList}" >

    <tr>

        <td><g:link id="${it.id}" action="updateTicket">${it.status}</g:link></td>
        <td><g:formatDate format="HH:mm  dd-MMM-yy" date="${it.dateStatus}"/></td>
        <td>${it.title}</td>
        <td>${it.description}</td>
        <td>${it.submittedBy}</td>
        <td><g:formatDate format="HH:mm  dd-MMM-yy" date="${it.dateSubmitted}"/></td>
        <td>${it.assignedTo}</td>
        <td>${it.id}</td>

    </tr>
</g:each>
</tbody>
</table>
</div>
</body>
</html>