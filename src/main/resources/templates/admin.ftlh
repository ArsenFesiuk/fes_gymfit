<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>FES_GYMFIT</title>
</head>
<body>
<h1>FES_GYMFIT</h1><hr>
<h2>Panel for admin</h2>
<table>
    <tr>
        <th>Email</th>
        <th>Phone number</th>
        <th>Active</th>
        <th>Roles</th>
        <th>Ban user</th>
        <th>Edit</th>
        <th>Details information</th>
    </tr>
    <#list users as user>
        <tr>
            <th>${user.email}</th>
            <th>${user.numberPhone}</th>
            <th><#if user.active>true<#else>false</#if></th>
            <th><#list user.roles as role>${role}<#sep>, </#list></th>
            <th><form action="/admin/user/ban/${user.id}" method="post">
                    <input type="hidden" name="_csrf" value="${_csrf.token}">
                    <input type="submit" value="Ban user">
                </form></th>
            <th></th>
            <th><a href="/admin/user/edit/${user.id}">Edit</a></th>
            <th><a href="/user/${user.id}">Details information</a></th>
        </tr>
        <#else>
        <h5>User not available</h5>
    </#list>
</table>
</body>
</html>