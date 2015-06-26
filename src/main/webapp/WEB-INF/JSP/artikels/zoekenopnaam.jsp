<%@page contentType='text/html' pageEncoding='UTF-8' session='false'%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="v" uri="http://vdab.be/tags" %>
<!doctype html>
<html>
<v:head title="Artikel zoeken op naam"></v:head>
<body>
<v:menu/>
<h1>Artikel Zoeken Op Naam</h1>
<form>
<label>Naam: <span>${fout}</span>
<input type="text" name="woord" autofocus required></label>
<input type="submit" value='Zoeken'>
</form>
<c:if test="${not empty artikels}">
<table>
<thead>
<tr><th>Nummer</th><th>Naam</th><th>Aankoopprijs</th><th>Verkoopprijs</th></tr>
</thead>
</table>
</c:if>
</body>
</html>