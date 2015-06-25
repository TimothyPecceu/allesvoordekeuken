<%@page contentType='text/html' pageEncoding='UTF-8' session='false'%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="v" uri="http://vdab.be/tags"%>
<!doctype html>
<html>
<v:head title="alles voor de keuken"/>
<body>
<v:menu />
<h1>Alles Voor De Keuken</h1>
<img alt="logo" src="<c:url value='/images/logo${random}.jpg'/>" id="logo">
</body>
</html>