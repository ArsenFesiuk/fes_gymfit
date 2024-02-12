<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>FES_GYMFIT</title>
</head>
<body>
<h1>FES_GYMFIT</h1><hr>
<h2>Detail info</h2>
<#list images as img>
    <img src="/images/${img.id}" height="60px"/><br><br>
</#list>
<b>Name product: </b>${product.title}<br><br>
<b>Description product: </b>${product.description}<br><br>
<b>Price: </b>${product.price}<br><br>
<b>City: </b>${product.city}<br><br>
<b>Author: </b><a href="/user/${product.user.id}">${product.user.name}</a><br>
<b>Number phone: </b>${product.user.numberPhone}<br><br>
</body>
</html>