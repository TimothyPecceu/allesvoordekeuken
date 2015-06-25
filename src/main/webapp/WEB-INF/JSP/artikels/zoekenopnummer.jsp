<%@page contentType='text/html' pageEncoding='UTF-8' session='false'%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="v" uri="http://vdab.be/tags"%>
<!doctype html>
<html>
<v:head title="Zoeken op artikelnummer"/>
<body>
<v:menu/>
<h1>Zoeken Op Artikelnummer</h1>
<form>
		<label>Nummer:<span>${fouten.id}</span> <input name='id'
			value='${param.id}' required autofocus type='number' min='1'></label>
		<input type='submit' value='Zoeken'>
	</form>
	<c:if test="${not empty param and empty fouten and empty artikel}">
	Artikel niet gevonden
</c:if>
	<c:if test="${not empty artikel}">
	<h2>${artikel.naam}</h2>
	<dl>
	<dt>aankoopprijs:</dt><dd> &euro; <fmt:formatNumber value='${artikel.aankoopprijs}'/></dd>
	<dt>verkoopprijs:</dt><dd> &euro; <fmt:formatNumber value='${artikel.verkoopprijs}'/></dd>
	<dt>winstpercentage:</dt><dd><fmt:formatNumber value='${artikel.winstPercentage}'/>%</dd>
	</dl>
	</c:if>
</body>
</html>