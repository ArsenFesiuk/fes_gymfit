<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>FES_GYMFIT</title>
</head>
<body>
<h1>FES_GYMFIT</h1><hr>
<#if user.email??>
    <h4>Name: <i>${user.name}</i></h4>
    <form action="/logout" method="post">
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <input type="submit" value="Logout">
    </form>
    <#if user.isAdmin()>
        <a href="/admin">Panel of admin</a>
    </#if>
<#else>
    <a href="/login">Login</a>
</#if>
<h2>All Products</h2>
<form action="/" method="get">
    Search by title : <input type="text" name="title"><br>
    <input type="submit" value="Search">
</form>
<#list products as product>
    <div>
        <p><b>${product.title}</b>${product.price} $ | <a href="/product/${product.id}">Details...</a></p>
    </div>
    <#else >
    <h4>No products available</h4>
</#list>
<#if user.email??>
    <h3>Create new product</h3>
    <form action="/product/create" method="post" enctype="multipart/form-data">
        Name product: <input type="text"  name="title"/><br><br>
        Description product: <input type="text"  name="description"/><br><br>
        Price: <input type="text"  name="price"/><br><br>
        City: <input type="text"  name="city"/><br><br>
        First image: <input type="file"  name="file1"/><br><br>
        Second image: <input type="file"  name="file2"/><br><br>
        Third image: <input type="file"  name="file3"/><br><br>
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <input type="submit" value="Add product">
    </form>
</#if>
</body>
</html>