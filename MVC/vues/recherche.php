<div>
	<div id="error"><p><?php if (isset($error) && !empty($error)) echo $error; ?></p></div>
	<div id="recherche">
		<form action="?page=resultat" method="POST" >
 			
 	<p>
 	<input type="text" name="keyword" size='30'>
       <input type="radio" name="vue" value="vue1"/> <label>Vue 1</label>
       <input type="radio" name="vue" value="vue2"/> <label>Vue 2</label>
  	<input type="submit" value="Rechecher">
	</p>

		</form> 
	</div>
</div>