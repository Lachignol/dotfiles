# Tutoriel complet sur l'utilisation du débogueur GDB

Ce tutoriel vous guide pas à pas pour utiliser **GDB (GNU Debugger)**, un outil puissant pour déboguer des programmes C/C++ en ligne de commande. Vous apprendrez aussi à utiliser le **mode interactif** de GDB pour piloter l'exécution du programme.

---

## 1. Préparation

### Compiler avec les informations de débogage

Pour que GDB fonctionne efficacement, compilez votre programme avec l'option `-g` pour inclure les symboles de débogage :

```bash
gcc -g mon_programme.c -o mon_programme
````


---

## 2. Lancer GDB

Dans un terminal, tapez :

```bash
gdb ./mon_programme
````

Cela ouvre GDB en mode interactif où vous pouvez entrer des commandes.

---

## 3. Commandes de base

Voici les commandes essentielles du mode interactif :

- `run` ou `r` : lance l'exécution du programme
- `break <ligne>` ou `b <ligne>` : place un point d'arrêt à la ligne indiquée
- `break <fonction>` : point d'arrêt au début d'une fonction
- `next` ou `n` : passe à l'instruction suivante (sans entrer dans les fonctions)
- `step` ou `s` : entre dans la fonction appelée
- `continue` ou `c` : reprend l’exécution jusqu’au prochain point d’arrêt
- `print <variable>` ou `p <variable>` : affiche la valeur d’une variable
- `list` ou `l` : affiche le code source autour de la position actuelle
- `quit` ou `q` : quitte GDB

---

## 4. Exemple complet

Supposons ce programme simple `exemple.c` :

```c
#include <stdio.h>

void somme(int a, int b) {
int c = a + b;
printf("Somme = %d\n", c);
}

int main() {
int x = 3;
int y = 4;
somme(x, y);
return 0;
}
````
### Étapes de débogage :

1. Compilez :

```bash
gcc -g exemple.c -o exemple
```

2. Lancez GDB :

```bash
gdb ./exemple
```

3. Placez un point d'arrêt sur `somme` :

```bash
break somme
```

4. Démarrez le programme :

```bash
run
```

5. Lorsque GDB s’arrête sur `somme`, affichez la source :

```bash
list
```
6. Affichez la valeur de `a` et `b` :

```bash
print a
print b
```
7. Avancez ligne par ligne avec :

```bash
next
```

8. Affichez la variable `c` après son affectation :

```bash
print c
```

9. Continuez l’exécution ou quittez :

```bash
continue
quit
```

---

## 5. Mode interactif avancé

### Commandes utiles :

- `info breakpoints` ou `i b` : liste tous les points d’arrêt
- `delete <numéro>` : supprime un point d’arrêt
- `watch <variable>` : arrête l’exécution dès que la variable change
- `backtrace` ou `bt` : affiche la pile d'appels (call stack)
- `frame <numéro>` : se positionne sur un cadre d'appel donné
- `set variable <var>=<valeur>` : modifie la valeur d’une variable en cours d'exécution

### Travailler avec les threads et processus

- `info threads` : liste les threads
- `thread <numéro>` : change de thread

---

## 6. Résumé et conseils

- Utilisez `break` pour stopper l’exécution là où vous le souhaitez
- Naviguez pas à pas avec `step` (dans les fonctions) ou `next` (ligne suivante)
- Inspectez variables avec `print` et suivez leurs changements avec `watch`
- Utilisez `info breakpoints` pour gérer vos points d’arrêt
- GDB est interactif : tapez `help` pour plus d’aide en direct

---

> **Astuce :** Prendre l’habitude d’ouvrir GDB, mettre un breakpoint, et progresser pas à pas en affichant les variables. Cela développe un réflexe d’analyse efficace.

---

