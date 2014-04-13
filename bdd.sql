-- phpMyAdmin SQL Dump
-- version 4.1.8
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Dim 13 Avril 2014 à 21:51
-- Version du serveur :  5.5.36-cll
-- Version de PHP :  5.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `vound`
--

-- --------------------------------------------------------

--
-- Structure de la table `musiques`
--

CREATE TABLE IF NOT EXISTS `musiques` (
  `id` bigint(20) NOT NULL,
  `pseudo` varchar(255) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `genre` varchar(255) NOT NULL,
  `infos` text NOT NULL,
  `clip` text NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `musiques`
--

INSERT INTO `musiques` (`id`, `pseudo`, `nom`, `genre`, `infos`, `clip`) VALUES
(10, 'Teardrop', 'Massive Attack', 'Trip hop', 'massive attack teardrop noir bébé bebe foetus chant art ventre mere mère orange rouge cercle rond ambiance enfant chante noirceur secte mezzanine 1998 elizabeth fraser cocteau twins UK singles chart version instrumentale prison break assassin''s creed pub publicité publicite blue lines protection heligoland scream team remix  27 avril trip hop  	Robert Del Naja Grantley Marshall Andrew Vowles Elizabeth Fraser virgin ', '<iframe width="575" height="415" src="//www.youtube.com/embed/u7K72X4eo_s?rel=0" frameborder="0" allowfullscreen></iframe>'),
(2, 'Stinky Toys', 'Plastic Faces', 'rock''n roll', 'jouet puant plastic faces stinky toys herve zenouda 1977 jaquenot albain bruno elie rock''n roll lycee concert live jeunes punk hard batterie rouge jaune orange scène animateur questions temps jeunesse jeunes fille garçons', '<iframe width="575" height="415"  src="//www.youtube.com/embed/9HxcDY-ea4s" frameborder="0" allowfullscreen></iframe>'),
(3, 'Love Letters ', 'Metronomy ', 'Electro pop rock ', 'Love letters metronomy electro pop rock Travelling Décor théâtre carton studio enregistrement groupe enregistrement studio horloge batterie guitare piano synthétiseur synthé basse tambourin baffle veste bordeau rouge pull col roulé noir pantalon blanc sautille danse changement décor rue fausse voiture à travers vitre vitres concert scène théâtre balcons bureau ordinateur écouteurs bouteille clavier portable icône portable projecteur I Love You dossier notes musique double croche forêt cerf cervidé fleurs bus arbres chemins tête peinte oreille son musique moustache maison cheveux bleus partition émission vintage 50’s 60’s 70’s lumière noire chien grue gratte ciel Rintintin berger allemand panneau autouroute foule rose yeah lampe architecte anglepoise crayon tasse café crayon papier stylo plume calepin carnet post it  soda cadre photo livre cassette K7 main manche marron borne kilométrique autobus fleurs chanson d’amour rose violet blanc blanche câble blanc lumière siège producteur \r\n', '<iframe width="575" height="415" src="//www.youtube.com/embed/riEBi8BJ9Tw?rel=0" frameborder="0" allowfullscreen></iframe>'),
(4, 'Twins Flames', 'Klaxons', 'Rock', 'twins flames klaxons rock homme mec accroupis accroupie assis baguette batterie cube noire fond bleu vert eau ciel canard chemise blanche manche courte fille femme jupe chemisette blanche rampe genou à terre chaussure noire écolier assis en indien personnes assises arbre droit culotte jupe retournée amie chorégraphie entrelacé entrelacés bras tambour militaire mains visage 	écoliers écolière anglais anglaise crachat bouche ensemble corps collé soutien gorge cou coude soudure chaine humaine roule pelle baisers baiser lesbiennes lesbiens partouse dentelle déshabillage nudité sexe torse sphinx nu nudité flash lumière clignote clignotant contre jour humidité lascif gang bang gel eau sauna humide déformation Brian Yuzna Asger Carlsen \r\n', '<iframe width="575" height="415" src="//www.youtube.com/embed/umS0sw8_D30?rel=0" frameborder="0" allowfullscreen></iframe>'),
(5, 'Wonderwall', 'Oasis', 'Pop Rock', 'wonderwall oasis pop rock noir et blanc film hangar homme vinyle 33 45  tours chaufferie lecture  baisse Oasis guitare chaise bistrot  seule Beatles de dos scies guitares mouvement mobile suspendue danseuses plume cabaret chapeau maillot jupe paillettes miroir visages cut passage chaises journal spots médecin fond blanc format 4/3 escabeau lunette ronde John Lennon violoncelle violon archet chemise carreau assis Aria Pro II clown marionnette nœud papillon nœud rouge maquillage spirale chapeau bleu concert jongle quille étoile vélo équilibriste monocycliste caléidoscope cow boy machine à sous scie musicale négatif jongle boule cirque billard fléchette vert verte aligné mégaphone batterie jaune mégaphone barbier fauteuil tambourin \r\n', '<iframe width="575" height="415" src="//www.youtube.com/embed/FAPtTS0TYtU?rel=0" frameborder="0" allowfullscreen></iframe>'),
(6, 'We Can’t Stop', 'Miley Cyrus ', 'pop', 'we can''t stop miley cyrus pop lit écriture jaune typographie ciseaux rose géant ballerine tennis blanche bracelet électronique prisonnier prison enceinte Vodaphone bijoux or paillettes vernis bagues chaines tatouage rouge à lèvre blonde cheveux courts boucle d’oreilles diamants brillants peigne moquette verte sous lit fumée brune sexe flamme cris blouson noir maquillage lunette soleil Dior buisson couple moustache bougeoir cire couleur verte bleu blanc orange jaune bougie laiton chamalow branche brûle chauffe mange sandwich billets dollars homme noir veste jean piercing boule rouge à lèvres crâne vanité frites langue dessin double langue piscine maillots de bain sexy projections cuisine fessée danseuse pointe eau chewingum fête repos lit doigts couteau coupé blessure sang rose peinture glue gel ours nounours peluche géante danseuses talons basket cuisinière grille masque 3D west cool sac à dos rappeur trotinette pâte alphabet booty check vélo appartement grille fer forgé biche lunette soleil miroir fractale belette furet empaillé manteau fourrure renard blanc censure barbie lesbienne ojectumphilie panneau led pinata fête danse lampe torche suce pouce eau violette tartine store pain de mie bonnet bob lutte lendemain de fête ', '<iframe width="575" height="415" src="//www.youtube.com/embed/LrUvu1mlWco?rel=0" frameborder="0" allowfullscreen></iframe>'),
(7, 'Blurred Lines ft. T.I., Pharrell', 'Robin Thicke', 'Raph Hip Hop', 'fille peignoir lunette soleil chapeau  paille chemise costume tatouage paille brin fille fond blanc studio costume argent mannequin botte dès vélo chignon or danse poule booty check crooner démarche roule du cul main dans la poche montre voiture jouet rouge ferrari tabouret main gant mousse  chien empaillé glace chocolat basket cigarette briquet géant vodka jus d’orange Terry Richardson fessée séduction pegne casque pieds fouet mouton agneau dollars \r\n', '<iframe width="575" height="415" src="//www.youtube.com/embed/yyDUC1LUXSU?rel=0" frameborder="0" allowfullscreen></iframe>'),
(8, 'Thrift Shop Feat. Wanz', 'Macklemore & Ryan Lewis', 'Rap', 'thrift shop feat ryan lewis rap trotinette patinette roller vélo enfant chariot fourrure léopard tigre mur brique rue usine de lorean grise  gobelet glace pailles parking bar fête club veste cuir indien sofa canapé fauteuil 99cts tie bow chaussures occasion vintage fripperie grand père tête corne trophée de chasse sneakers robe ronde pois lampe commode 	broche éventail rideau coussins tenture kennedy flipper centre de donnation œuvre de charité casquette pijama batman addition machine à calculer calculette pull chambre adolescent globe voiture bateau décapotable piano girafe Elvis linge \r\n', '<iframe width="575" height="415" src="//www.youtube.com/embed/QK8mJJJvaes?rel=0" frameborder="0" allowfullscreen></iframe>'),
(9, 'Bangarang feat. Sirah \r\n', 'Skrillex', 'Electro', 'skrillex electro bangarang chien rue brique matin voiture rouge tatouage grisaille enfant fourrière mendiant cornet de glace obèse course moustache aboiement collier électricité dynamite vandale jumelle hip hop bang lance pierre explosion billes braquage glisse glaces or cornet échappe coup de pied vol avec violence porte clef sac à dos capuches ombre soir jumelle adulte noir cagoule braquage armes bazooka kalachnikov valises joie amie glaces crochet payer ses dettes\r\n', '<iframe width="575" height="415" src="//www.youtube.com/embed/YJVmu6yttiw?rel=0" frameborder="0" allowfullscreen></iframe>'),
(11, 'House of Cards ', 'Radiohead', 'Art Rock', 'radiohead video House of Cards cameras lumières lumiere lumière 3D technologies object hologramme hologrammes visage décors decors expression expressif visualisations visualisation données donnees data i don''t wanna be your friend, i just wanna be your lover chanteur visuel pixels bleu noir bleuté bleute constellation frequence ville rue rues jaune vert arc en ciel degrade chemin vent particule particules gens groupe rassemblement assemblee chanteur jeune homme facial maison 6 avril 2008 in rainbow art rock', '<iframe width="575" height="415" src="//www.youtube.com/embed/8nTFjVm9sTQ?rel=0" frameborder="0" allowfullscreen></iframe>');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
