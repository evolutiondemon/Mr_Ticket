
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
<meta name="layout" content="default"/>

    <title></title>
</head>

<body>
<table class="table-bordered table-hover">
<thead>
    <tr>
    <g:sortableColumn property="id" title="Ticket #"/>
    <g:sortableColumn property="submittedBy" title="Submitted By"/>
    <th>Title</th>
    <g:sortableColumn property="dateSubmitted" title="Date Submitted"/>
    </tr>


</thead>
<tbody>
<g:each in="${show}">
    <tr>
        <td>${it.id}</td>
        <td>${it.submittedBy}</td>
        <td>${it.title}</td>
        <td>${it.dateSubmitted}</td>
    </tr>
</g:each>
</tbody>
</table>
</body>
</html>