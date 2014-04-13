<?php header('Content-type: text/html; charset=UTF-8'); ?>
<?php
function suppr_accents($chaine) {
   $accents = array('À','Á','Â','Ã','Ä','Å','Ç','È','É','Ê','Ë','Ì','Í','Î','Ï','Ò','Ó','Ô','Õ','Ö','Ù','Ú','Û','Ü','Ý','à','á','â','ã','ä','å','ç','è','é','ê','ë','ì','í','î','ï','ð','ò','ó','ô','õ','ö','ù','ú','û','ü','ý','ÿ');
   $sans = array('A','A','A','A','A','A','C','E','E','E','E','I','I','I','I','O','O','O','O','O','U','U','U','U','Y','a','a','a','a','a','a','c','e','e','e','e','i','i','i','i','o','o','o','o','o','o','u','u','u','u','y','y');
   return str_replace($accents, $sans, $chaine);
}

ini_set('mbstring.internal_encoding', 'UTF-8');
ini_set('mbstring.http_input', 'UTF-8');
ini_set('mbstring.http_output', 'UTF-8');
ini_set('default_charset', 'UTF-8');

?>

<?php
  function utf8_urldecode($str) {
    $str = preg_replace("/%u([0-9a-f]{3,4})/i","&#x\\1;",urldecode($str));
    return html_entity_decode($str,null,'UTF-8');;
  }
?>

<?php
function to_utf8( $string ) {
// From http://w3.org/International/questions/qa-forms-utf-8.html
    if ( preg_match('%^(?:
      [\x09\x0A\x0D\x20-\x7E]            # ASCII
    | [\xC2-\xDF][\x80-\xBF]             # non-overlong 2-byte
    | \xE0[\xA0-\xBF][\x80-\xBF]         # excluding overlongs
    | [\xE1-\xEC\xEE\xEF][\x80-\xBF]{2}  # straight 3-byte
    | \xED[\x80-\x9F][\x80-\xBF]         # excluding surrogates
    | \xF0[\x90-\xBF][\x80-\xBF]{2}      # planes 1-3
    | [\xF1-\xF3][\x80-\xBF]{3}          # planes 4-15
    | \xF4[\x80-\x8F][\x80-\xBF]{2}      # plane 16
)*$%xs', $string) ) {
        return $string;
    } else {
        return iconv( 'CP1252', 'UTF-8', $string);
    }
}


if(!function_exists('mb_detect_encoding')) {
function mb_detect_encoding($string, $enc=null) {
   
    static $list = array('utf-8', 'iso-8859-1', 'windows-1251');
   
    foreach ($list as $item) {
        $sample = iconv($item, $item, $string);
        if (md5($sample) == md5($string)) {
            if ($enc == $item) { return true; }    else { return $item; }
        }
    }
    return null;
}
}
	
	
	
?> 

<!DOCTYPE html>
<html lang="en" class="no-js">
	<head>
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
		<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
		<title>Vound</title>
		<meta name="description" content="Vound, moteur de recherche des sens" />
		<link rel="shortcut icon" href="../favicon.ico">
		<link rel="stylesheet" type="text/css" href="css/normalize.css" />
		<link rel="stylesheet" type="text/css" href="css/icons.css" />
		<link rel="stylesheet" type="text/css" href="css/component.css" />
		<script src="js/modernizr.custom.js"></script>
	</head>
	
	
<?php
include 'config.inc.php';

//On determine l'expression a rechercher
if(isset($_POST['recherche']))
{
        $rec = htmlentities($_POST['recherche']);
}
else
{
        $rec = '';
}
//On determine le type de recherche
if(isset($_POST['type']))
{
        if($_POST['type']=='un')//Un des mots
        {
                $type = 1;
        }
        elseif($_POST['type']=='tout')//Tout les mots
        {
                $type = 2;
        }
        else//L'expression exacte
        {
                $type = 3;
        }
}
else
{
        $type = 1;//type par defaut: L'expression exacte
}
//On determine si on doit surligner les mots dans les resultats
if(!isset($_POST['surligner']) or $_POST['surligner']!='true')
{
        $surligner = false;
}
else
{
        $surligner = true;
}
//On dertermine les identifiants, les noms et les informations des utilisateur
$req = 'SELECT id, nom, pseudo, genre, clip, infos FROM musiques WHERE ';
if($type==1)
{//ayant un des mots dans leurs informations
        $mots = explode(' ',$rec);//En separre lexpression en mots cles
        foreach($mots as $mot)
        {
                $req .= ' infos LIKE "%'.$mot.'%" OR';
        }
        $req .= ' 1=0';
}
elseif($type==2)
{//ayant tout des mots dans leurs informations
        $mots = explode(' ',$rec);//En separre lexpression en mots cles
        foreach($mots as $mot)
        {
                $req .= ' infos LIKE "%'.$mot.'%" AND';
        }
        $req .= ' 1=1';
}
else
{//ayant l'expression exacte dans leurs informations
        $req .= 'infos LIKE "%'.$rec.'%"';
}
//Les musiques seront classees par id en ordre croissant
$req .= ' order by id asc';
$requete = mysql_query("SET NAMES UTF8");
$requete = mysql_query($req);
//Le formulaire de recherche
?>

			
			

	<body>
		<div id="st-container" class="st-container">
		<div class="st-pusher">

			<div class="st-content"><!-- this is the wrapper for the content -->
				<div class="st-content-inner"><!-- extra div for emulating position:fixed of the menu -->
					<!-- Top Navigation -->
					<div class="kiki-la-praline-top clearfix">
						</div>
					<header class="kiki-la-praline-header">
						
						<div id="head-logo" class="main">
						
						
						<h1>Voici les clips dans le moteur de recherche <span>Regardez les, et retrouvez les...</span></h1>

						<a href="http://kiranriehl.fr/app/">
						<table class="logo">
							<tr>
								<td><img src="img/v.jpg" alt="Vound"></td>
								<td><img src="img/preload.gif" alt="Vound"></td>
								<td><img src="img/und.jpg" alt="Vound"></td>
							</tr>
						</table>
						</a>
												

						</div>
						
					</header>
					<div class="main clearfix">
					
					
							
						<?php
						//On affiche les resultats
						while($dnn = mysql_fetch_array($requete))
						{
						?>
						
						<div class="clip-demo"><?php echo $dnn['clip']; ?> </div>
						<?php } ?>			
						
						

						
													
						</div><!-- /main -->
					</div><!-- /st-content-inner -->
				</div><!-- /st-content -->
			</div><!-- /st-pusher -->
		</div><!-- /st-container -->
		<script src="js/classie.js"></script>
		<script src="js/sidebarEffects.js"></script>
		<script src="js/svgcheckbx.js"></script>
	</body>
</html>