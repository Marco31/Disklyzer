Spécifications 
Le script devra pouvoir se lancer des manières suivantes :

Sans argument, il affichera un tableau indiquant la taille du répertoire courant et de ses sous-dossiers directs.

Avec une ou plusieurs des options suivantes :


- `-d <dossier>` permettra de cibler un autre dossier que le répertoire courant
- `-h` affichera les tailles des différents dossiers de manière lisible pour un être humain (Ko, Mo, Go...)
- `-s` triera les résultats obtenus par ordre décroissant d’espace disque utilisé
- `-r <regex>` ciblera uniquement les éléments correspondant à l’expression régulière passée en paramètre
- `-f` affichera également les fichiers du dossier ciblé, en plus de ses sous-dossiers directs
- `-a` prendra en compte dans son affichage les fichiers et dossiers cachés
- `-o <fichier>` renverra le résultat dans un fichier, en indiquant la date et l’heure du lancement du script


Les options sont cumulables entre elles, par exemple :

- `dirstat.sh -h -s` affichera les tailles du répertoire courant et de ses sous-dossiers directs, de manière lisible pour un 
être humain, triées par ordre décroissant
- `dirstat.sh -d ∼/Videos/ -f -r "unicorn"` affichera la taille du répertoire Videos et de ses fichiers et sous-dossiers 
directs dont le nom contient unicorn