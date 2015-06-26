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
			type='number' min='0' step='0.01'></label> <input type='submit'
			value='Toevoegen' id='toevoegknop'>
	</form>
	<script>
		document.getElementById('toevoegform').onsubmit = function() {
			document.getElementById('toevoegknop').disabled = true;
		};
	</script>
</body>
</html>