CREATE DATABASE library CHARACTER SET 'utf8';

COLLATE utf8_bin;

USE library;

CREATE TABLE book (
    id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    title VARCHAR(250) NOT NULL COLLATE utf8_general_ci,
    kind CHAR(20) NOT NULL COLLATE utf8_general_ci,
    pages VARCHAR(10),
    cover VARCHAR(250),
    author VARCHAR(100) COLLATE utf8_general_ci,
    price FLOAT(10),
    disponibility VARCHAR(3),
	intro VARCHAR(2000) COLLATE utf8_general_ci,
    PRIMARY KEY (id)
) CHARACTER SET utf8 COLLATE utf8_general_ci;

INSERT INTO book VALUES (
	1,
	'Les piétons lunaires',
	'Recueil',
	'250',
	'Couvertures_livres/1-Recueil-les-pietons-lunaires.jpg',
	'Tangi Talarmin',
	'8',
	'oui',
	"Étiez-vous devant votre téléviseur en cette matinée du 21 juillet 1969, pour voir un homme descendre la plus fabuleuse des échelles ? Mais Neil Armstrong et Buzz Aldrin ont-ils réellement marché sur la Lune, comme toutes les télévisions du monde l'ont montré ? Vous n'en doutez pas ? Et bien eux, après de nombreuses années passées sur Terre, n'en sont plus si sûrs !"
);

INSERT INTO book VALUES (
	2,
	'Un dernier homme, pour la route ?',
	'Recueil',
	'340',
	'Couvertures_livres/2-Recueil-un-dernier-homme.jpg',
	'Tangi Talarmin',
	'8',
	'oui',
	"Et si un jour on ne vous laissait travailler qu\'à la condition que vous soyez le premier à pointer ? En 2150 il y a du travail pour tous, oui mais c\'est la loi du plus fort. Ou plutôt, celle du plus rapide. Alors levez-vous de bonne heure, ou bien plus sûrement dormez sur le parking de votre entreprise. Et foncez ! Soyez le bienvenu au 22ème siècle. Plongez dans la société féroce de Fatima Sati et vivez à travers le regard hagard de Yves Tirelli d\'extraordinaires."
);

INSERT INTO book VALUES (
	3,
	"Les éléphants gris d'Europe et d'Amérique",
	'Recueil',
	'350',
	'Couvertures_livres/3-Recueil-les-elephants-gris.jpg',
	'Tangi Talarmin',
	'8',
	'oui',
	"C'est le cataclysme qui sonne le retour à l'âge de pierre ! Aujourd'hui-même, toutes les routes du monde, toutes les voies de communication ont perdu leur raison d'être ! Qui est de permettre à un véhicule d'aller, avec son chargement, d'un point A à un point B, en faisant des détours par C, par D et par E pour éviter des travaux, pour poster une lettre ou pour voir la mer, tout en polluant dans l'intervalle, naturellement. Ça ne fonctionne plus comme ça. On va dorénavant d'un point A à un point on ne sait quoi. On ne sait où. Dramatique ! Pensez aux familles brisées, aux enfants abandonnés, à tous ceux que l'on pourrait d'ores et déjà appeler les Égarés de l'Anomalie."
);

INSERT INTO book VALUES (
	4,
	'Les grands crocodiliens',
	'Recueil',
	'160',
	'Couvertures_livres/4-recueil.jpg',
	'Tangi Talarmin',
	'4',
	'oui',
	"Il est sans foie ni loi, et depuis de nombreux siècle il doit, pourchassé par les autorités, prendre la fuite après chaque repas, quand n'importe quel homme qu'on laisse digérer tranquillement se contente d'un rot et d'un cigare au coin du feu… Et il obtint son doctorat, mettant un terme à cette vie de cavale. Du moins l'espérait-il..."
);

/* Novels */

INSERT INTO book VALUES (
	5,
	'Les piétons lunaires',
	'Nouvelle',
	'35',
	'Couvertures_livres/1-1-les-pietons-lunaires.jpg',
	'Tangi Talarmin',
	'1',
	'oui',
	"Étiez-vous devant votre téléviseur en cette matinée du 21 juillet 1969, pour voir un homme descendre la plus fabuleuse des échelles ? Mais Neil Armstrong et Buzz Aldrin ont-ils réellement marché sur la Lune, comme toutes les télévisions du monde l'ont montré ? Vous n'en doutez pas ? Et bien eux, après de nombreuses années passées sur Terre, n'en sont plus si sûrs !"
);

INSERT INTO book VALUES (
	6,
	'Un serpent dans le sapin',
	'Nouvelle',
	'26',
	'Couvertures_livres/1-2-un-serpent-dans-le-serpent.jpg',
	'Tangi Talarmin',
	'1',
	'oui',
	"Noël ! Un moment merveilleux pour la plupart des parents, et pour tous les enfants, sauf pour ceux chez qui le sapin abrite un serpent affamé. Fils cadet d'une famille nombreuse, Papa Ben évoque ses douloureux souvenirs d'enfance et raconte à ses quatre filles comment ses frères et ses sœurs furent, au fil des ans, offerts en pâture à Oukamba, ce terrifiant serpent de Noël…"
);

INSERT INTO book VALUES (
	7,
	'La mitamorphose',
	'Nouvelle',
	'60',
	'Couvertures_livres/1-3-la-mitamorphose.jpg',
	'Tangi Talarmin',
	'1',
	'oui',
	"Si vous circulez le soir venu dans les rues du Multiplexe, regardez bien autour de vous si l'homme-mite n'est pas là, quelque part, aux aguets mais discret. Il est pourtant là, il veille à la quiétude de ses concitoyens. N'ayez plus peur de rentrer seul du restaurant ou du cinéma, ne craignez plus de faire une mauvaise rencontre. Mothman, l'homme-mite, n'est jamais loin, et un seul cri d'effroi le mettra en alerte, il sera auprès de vous avant que vous ayez fini de crier…"
);

INSERT INTO book VALUES (
	8,
	'Un hamac pour deux',
	'Nouvelle',
	'26',
	'Couvertures_livres/1-4-un-hamac-pour-deux.jpg',
	'Tangi Talarmin',
	'1',
	'oui',
	"Leur lanceriez-vous plus qu'un regard, voire même une petite pièce ? De la caisse du supermarché au caniveau d'en face, suivez le quotidien mélodramatique de deux inséparables camarades de coudées."
);

INSERT INTO book VALUES (
	9,
	'Le choix du précog',
	'Nouvelle',
	'25',
	'Couvertures_livres/1-5-le-choix-du-precog.jpg',
	'Tangi Talarmin',
	'1',
	'oui',
	"Des milliers d'années s'écouleront sans que le souvenir des génies qui ont bâti l'Humanité ne se perdent dans les limbes de l'oubli. Et même mieux, vous aurez peut-être l'occasion, si vous réussissez votre examen, d'être renvoyé dans le passé, en lieu et date où vous pourrez croiser certaines légendes, Beethoven, Chaplin, Pelé et Vaclav Vavel…"
);

INSERT INTO book VALUES (
	10,
	'Les mauvaises manières de ludwig',
	'Nouvelle',
	'21',
	'Couvertures_livres/1-6-les-mauvaises-manieres.jpg',
	'Tangi Talarmin',
	'1',
	'oui',
	"Quoi de plus difficile que de faire un choix quand l'avenir n'a aucun secret pour vous ? Car c'est bien souvent se résigner au pire."
);

INSERT INTO book VALUES (
	11,
	'Le médecin imaginaire et le malade à tout prix',
	'Nouvelle',
	'20',
	'Couvertures_livres/1-7-le-medecin-imaginaire.jpg',
	'Tangi Talarmin',
	'1',
	'oui',
	"Max Dorothy se lèvera-t-il ce matin ? Trouvera-t-il les ressources, dans les méandres de sa routine, de se lever, de sortir de chez lui ? Affrontera-t-il les aléas et les embûches des tracas quotidien ?"
);

INSERT INTO book VALUES (
	12,
	'Instinct maternel',
	'Nouvelle',
	'17',
	'Couvertures_livres/1-8-instinct-maternel.jpg',
	'Tangi Talarmin',
	'1',
	'oui',
	"Nous les trouvons dégoûtantes, nous préférerions les écraser sous notre semelle plutôt que de leur accorder la moindre attention. Aujourd'hui dans la chaleur de l'été, les éléments vont mettre à mal l'académique hiérarchie de la morale."
);
