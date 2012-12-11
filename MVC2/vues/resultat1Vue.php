<h1>Resultat Vue 1</h1>
 
<div id="toto">
	<div id="tata">
		<p> lorem ipsum...</p>
	</div> </br>

	<div id="resultat">
		<p> Resultat pour le descripteur : <?php echo $resultat['keyword']; ?> <br/>
			<?php
				foreach ($resultat['resultat'] as $value) {
					echo $value.'<br/>';
				}
			?>

		</p>
		</br>
		<a href="?page=accueil">Nouvelle recherche</a>		
	</div>
</div>
