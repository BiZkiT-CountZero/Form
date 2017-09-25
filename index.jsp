<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>Unpretentious application</title>
</head>
<body>
<% String login = (String)session.getAttribute("user_login"); %>

<% if (login == null || "".equals(login)) { %>
<form action="/login" method="POST">
    <p align="center">Login: </p><p align="center"><input type="text" name="login"></p><br>
    <p align="center">Password: </p><p align="center"><input type="password" name="password"></p><br>
    <p align="center"><input type="submit" /></p>
</form>
<% } else { %>
<h1>You are logged in as: <%= login %> <br> <em>You are welcome!</em> </h1>
<br>Click this link to <a href="/login?a=exit">logout</a>
<form action="/stat" method="post">
    <fieldset style="width: 300px; background-color: #f5f5f0">
        <p><h4>Choose your sex</h4>
        <input type="radio" name="sex" value="male">Male<br>
        <input type="radio" name="sex" value="female">Female<br>
    </fieldset>
    <fieldset style="width: 300px; background-color: #f5f5f0">
        <p><h4>Choose your age</h4>
        <input type="radio" name="age" value="less 20">Less than 20<br>
        <input type="radio" name="age" value="over 20">From 21 to 30<br>
        <input type="radio" name="age" value="over 30">From 31 to 40<br>
        <input type="radio" name="age" value="over 40">From 41 to 50<br>
        <input type="radio" name="age" value="over 50">More than 50<br>
    </fieldset>
    <fieldset style="width: 300px; background-color: #f5f5f0">
        <p><h4>Family status</h4>
        <input type="radio" name="status" value="single">Single<br>
        <input type="radio" name="status" value="married">Married<br>
    </fieldset>
    <button type="submit">Done!</button>
</form>
<br>
<button><a href="/login?a=exit">Log out</a></button>
<% } %>
</body>
</html>
