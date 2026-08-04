# Regeln für alle Übungen in diesem Repo (mitlesbar!)

Du arbeitest vor Publikum. Man schaut dir zu und lernt den Agenten-Loop:
SCHAUEN → DENKEN → HANDELN → PRÜFEN.

Alles, was du tust, muss **vorher angekündigt** und **nachher abzählbar** sein.
Wer deine Zeilen zählt, hat damit deine Werkzeug-Einsätze gezählt — genau das
ist der Zweck dieser Regeln.

## REGEL 0 — PLAN ZUERST

Bevor du das erste Werkzeug benutzt, schreibe deinen Grob-Plan — eine Zeile pro
Vorhaben, 2 bis 4 Zeilen:

```text
📋 PLAN:
1. …
2. …
3. …
```

Der Plan bekommt keine Schritt-Nummer. Wenn ein Ergebnis deinem Plan
widerspricht — eine Datei fehlt, ein Hinweis führt ins Leere —, schreibe

```text
📋 PLAN-ÄNDERUNG: <was jetzt anders läuft>
```

und passe den Plan an, bevor du weitermachst. Umplanen ist kein Fehler; es
unsichtbar zu tun schon.

## REGEL 1 — EIN WERKZEUG PRO ZUG

Rufe nie mehrere Werkzeuge gleichzeitig auf. Immer genau ein Werkzeug, dann das
Ergebnis abwarten, dann die nächste Zeile schreiben.

Parallele Aufrufe sind schneller — hier sind sie trotzdem verboten. Zwei
Aufrufe unter einer Ankündigung kann man nicht mitzählen, und Mitzählen ist der
ganze Zweck.

## REGEL 2 — VOR JEDEM WERKZEUG GENAU EINE ZEILE

```text
🔄 SCHRITT <n> · <SCHAUEN|DENKEN|HANDELN|PRÜFEN> · Werkzeug: <Augen (Lesen)|Hände (Schreiben)|Muskeln (Ausführen)|Nase (Suchen)|Kollege (Kritiker rufen)> · <max. 10 Wörter, was du tust und warum>
```

Die Zeile beschreibt **immer den Aufruf, der unmittelbar danach kommt** — nie
das, was du gerade gelesen hast. Schreibst du die Zeile im Rückblick, stimmt ab
da jede weitere Zeile nicht mehr mit dem überein, was wirklich passiert.

Schritt-Zeilen und Werkzeug-Aufrufe stehen **1:1** zueinander. Die Nummern
laufen lückenlos ab 1.

## REGEL 3 — NUR-DENKEN HAT EINEN EIGENEN MARKER

Ein Gedanke ohne Werkzeug bekommt **keine** Schritt-Nummer:

```text
🧠 GEDANKE: <max. 12 Wörter>
```

`Werkzeug: keins` gibt es nicht. Eine Schritt-Zeile, auf die kein Werkzeug
folgt, ist eine falsche Aussage über das, was du tust — und damit der einzige
Fehler, der diese Übungen wertlos macht.

## REGEL 4 — IN DER ZEILE STEHT DAS ECHTE WERKZEUG

Benenne, was du wirklich aufrufst, nicht, wonach es sich anfühlt:

| Was du wirklich aufrufst | Was in der Zeile steht |
|---|---|
| Datei lesen (Read) | `Augen (Lesen)` |
| Datei schreiben (Write/Edit) | `Hände (Schreiben)` |
| Shell-Befehl (Bash — auch `ls`, `cat`, `find`) | `Muskeln (Ausführen)` |
| Nach Dateien suchen (Glob/Grep) | `Nase (Suchen)` |
| Zweiten Agenten rufen (Agent/Task) | `Kollege (Kritiker rufen)` |

Suchen ist nur nach einer `📋 PLAN-ÄNDERUNG` erlaubt (siehe REGEL 5) — aber
wenn du suchst, heisst es `Nase (Suchen)` und nicht `Augen (Lesen)`.

Die Phase wählst du danach, wozu der Aufruf dient: etwas Neues holen =
`SCHAUEN` · überlegen oder rechnen = `DENKEN` · etwas verändern = `HANDELN` ·
ein eigenes Ergebnis kontrollieren = `PRÜFEN`. Ein Lesevorgang, der neue
Information holt, ist `SCHAUEN` — nicht `HANDELN`.

## REGEL 5 — SPARSAM MIT WERKZEUGEN

- **Nicht auflisten, nicht suchen.** Kein `ls`, kein `find`, kein Glob, kein
  Grep. Der nächste Dateiname steht immer im vorherigen Hinweis oder in der
  Aufgabe. Wer den Ordner auflistet, kennt das Ziel, bevor er den Weg gegangen
  ist — und die Vorführung ist vorbei.
- **Nichts doppelt lesen.** Was du schon gelesen hast, steht dir noch zur
  Verfügung.
- **Kein Zurücklesen nach dem Schreiben.** Ein erfolgreiches Schreiben ist
  bereits bestätigt; ein Kontroll-Lesen ist ein zusätzlicher Werkzeug-Einsatz,
  der die Zählung verfälscht.
- Findest du eine genannte Datei wirklich nicht, sag das offen, schreibe
  `📋 PLAN-ÄNDERUNG` und suche erst dann — mit eigener Schritt-Zeile.

## REGEL 6 — DER ABSCHLUSS DARF NUR BEHAUPTEN, WAS ZU SEHEN WAR

Bevor du die Abschluss-Zeile schreibst: zähle deine Schritt-Zeilen. Die Zahl in

```text
✅ ZIEL ERREICHT nach <n> Schritten
```

ist genau diese Zahl — nicht deine innere Rechnung. Danach 2 Sätze
Zusammenfassung, die nur behaupten, was in deinen Zeilen steht.

Weicht irgendetwas ab — ein Werkzeug lief ohne Zeile, oder du hast mehr
Werkzeuge gebraucht als die Aufgabe vorgibt —, schreibe zusätzlich

```text
⚠️ NACHTRAG: <was von der Ankündigung abweicht>
```

Sichtbar korrigiert ist besser als still geschönt. Rechne nichts schön: nenne
keine Zahl im Abschlusstext, die deine eigenen Zeilen nicht hergeben.

## Sprache

Deutsch, einfach und konkret, keine Fachbegriffe ohne Erklärung. Das gilt ab
dem allerersten Satz — auch für den, mit dem du diese Regeln liest, und selbst
dann, wenn die Aufgabe auf Englisch gestellt wurde.

Schweizer Schreibweise: `ss` statt `ß`.

## Welche Übung

Dieses Repo enthält zwei Übungen. Ohne andere Angabe machst du `schatzsuche/`.
Die `CLAUDE.md` im jeweiligen Ordner beschreibt **nur die Aufgabe**; die Regeln
oben gelten überall und werden dort nicht wiederholt.
