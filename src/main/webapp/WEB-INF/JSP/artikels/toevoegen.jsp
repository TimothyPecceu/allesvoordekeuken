<%@page contentType='text/html' pageEncoding='UTF-8' session='false'%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="v" uri="http://vdab.be/tags"%>
<!doctype html>
<html>
<v:head title="Artikel Toevoegen" />
<body>
	<v:menu />
	<h1>Artikel Toevoegen</h1>
	<form method="post" id="toevoegform">
		<label>Naam:<span>${fouten.naam}</span> <input name='naam'
			value='${param.naam}' required autofocus></label> <label>Aankoopprijs:<span>${fouten.aankoopprijs}</span>
			<input name='aankoopprijs' value='${param.aankoopprijs}' required
			type='number' min='0' step='0.01'></label> <label>Verkoopprijs:<span>${fouten.verkoopprijs}</span>
			<input name='verkoopprijs' value='${param.verkoopprijs}' required
			type='number' min='0' step='0.01'></label>
		<div>
			<span>${fouten.soort}</span><label> <input name="soort"
				value="F" type="radio" id="food"
				${param.soort == "F" ? "checked" : "" }>Food
			</label>
		</div>
		<label>Houdbaarheid: <span>${fouten.houdbaarheid}</span> <input
			name="houdbaarheid" value="${param.houdbaarheid}" type="number" min="1" id="houdbaarheid"></label>
		<div>
			<label><input name="soort" value="NF" type="radio"
				id="nonfood" ${param.soort == "NF" ? "checked" : ""}>Non-Food</label>
		</div>
		<label>Garantie: <span>${fouten.garantie}</span> <input
			name="garantie" value="${param.garantie}" type="number" min="0"
			id="garantie"></label> <label>Artikelgroep:<span>${fouten.artikelgroepid}</span>
			<select name="artikelgroepid" size="${artikelgroepen.size()}"
			required>
				<c:forEach items="${artikelgroepen}" var="artikelgroep">
					<option value="${artikelgroep.id}"
						${artikelgroep.id == param.artikelgroepid ? 'selected' : ''}>
						${artikelgroep.naam}</option>
				</c:forEach>
		</select></label> <input type='submit' value='Toevoegen' id='toevoegknop'>
	</form>
	<script>
		document.getElementById('toevoegform').onsubmit = function() {
			document.getElementById('toevoegknop').disabled = true;
		};
	</script>
</body>
</html>