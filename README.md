# Projet 8: Journal des accès aux fichiers
# Objectif
Ecrire un script trace.sh qui permet de tracer tous les accès aux fichiers dans /etc sur une
journée. Ce journal devra inclure le nom du fichier, le nom de l'utilisateur et l'heure d'accès.
Vous indiquerez si le fichier a été modifié. Écrivez toute cette information dans un fichier
journal, sous forme d'une suite d'enregistrements clairement séparés par des tablutations.
Fonctionnalités
On se propose d’écrire un script journal.sh qui permet d’afficher des informations sur des
dossiers donnés en paramètre
1. Ecrire la fonction show_usage qui affiche sur la sortie standard le message
" trace.sh: [-h] [-T] [-t] [-n] [-N] [-d] [-m] [-s] chemin.." .
2. Le script doit tester la présence d’au moins un argument, sinon il affiche l’usage sur la
sortie d’erreur et échoue.
3. fonction nommée HELP qui permet d’afficher le help à partir d’n fichier texte contenant une
description bien détaillée de l’application.
4. Ecrire la fonction AfficheFile qui permet de tracer le nom de dossier ainsi que les noms
des fichiers de ce dernier dans un fichier qui a pour nom nomdefichier_journal.(cut –d ...)
5. Ecrire la fonction AfficheDirectory qui permet de tracer le nom de dossier ainsi que les
noms des dossiers de ce dernier dans un fichier qui a pour nom nomdedossier_journal.
(cut –d ..)
6. Ecrire la fonction NB qui permet de tracer le nombre des dossiers et des fichiers de cet
argument dans un fichier qui a pour nom count. (wc)
7. Ecrire la fonction DirectoryUser qui prend en argument un dossier et qui permet de
tracer le nom de son propriétaire à l’entête (ls, cut)
8. Ecrire la fonction dateAcess qui permet d’écrire dans le fichier date_journal la date de
son dernier accès. (stat file)
9. Ecrire la fonction datemodif qui permet d’écrire dans le fichier modif_journal la date de
sa dernière modification.(stat file)
10. Ecrire la fonction stat qui permet d’Afficher les statistiques qui permettent de visualiser un
Dashboard qui a le rôle d’indiquer le nombre de fichiers et le nombre de dossiers dans ce
dossier (plot).

# Options

• -h: Pour afficher le help détaillé à partir d’un fichier texte
• -g: Pour afficher un menu textuel et gérer les fonctionnalité de façon graphique(Utilisation de YAD).
• -v: Pour afficher le nom des auteurs et version du code.
• -m: Pour afficher un menu textuel
