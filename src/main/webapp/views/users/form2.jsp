<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="mb-3">
	<label for="name" class="col-form-label">Username:</label> <input
		type="text" class="form-control" id="name" name="username"
		required>
</div>
<div class="mb-3">
	<label for="coins"
		class='col-form-label ${user.errors.get("coins") != null ? "is-invalid" : "" }'>Monedas:</label>
	<input class="form-control" type="number" id="coins" name="coins"
		required></input>
	<div class="invalid-feedback">
		<c:out value='${user.errors.get("coins")}'></c:out>
	</div>
</div>

<div class="mb-3">
	<label for="time"
		class='col-form-label ${user.errors.get("time") != null ? "is-invalid" : "" }'>Tiempo:</label>
	<input class="form-control" type="number" id="time" name="time"
		required></input>
	<div class="invalid-feedback">
		<c:out value='${user.errors.get("time")}'></c:out>
	</div>
</div>

<div class="mb-3">
	<label for="password"
		class='col-form-label ${user.errors.get("password") != null ? "is-invalid" : "" }'>Contraseņa:</label>
	<input class="form-control" id="password" name="password"
		required></input>
	<div class="invalid-feedback">
		<c:out value='${user.errors.get("password")}'></c:out>
	</div>
</div>
<div class="mb-3">
		<label for="admin"
			class='col-form-label'>Seleccionar:</label>
		<select class="form-select" aria-label="Default select example" id="admin" name="admin" required>
		<option selected>Es Administrador</option>
 			<option value="true">Si</option>
 			<option value="false">No</option>
		</select>
	</div>
<label for="type">Selecciona el tipo:</label>
	<select class="form-select" aria-label="Default select example" id="type" name="type" required>
    <option></option>
  <option value="Gastronomia">Gastronomia</option>
  <option value="Aventura">Aventura</option>
  <option value="Visita_Guiada">Paseo *debe contener 3 atracciones</option>
</select>

<div>
	<button type="submit" class="btn btn-primary">Guardar</button>
	<a onclick="window.history.back();" class="btn btn-secondary"
		role="button">Cancelar</a>
</div>