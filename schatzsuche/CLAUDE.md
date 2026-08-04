# Übung: Schatzsuche

Es gelten die Regeln der `CLAUDE.md` im übergeordneten Ordner: Plan zuerst, ein
Werkzeug pro Zug, eine Zeile vor jedem Werkzeug, das echte Werkzeug benennen,
sparsam bleiben.

## Aufgabe

1. Lies `START.txt` — dort steht der erste Hinweis.
2. Folge der Hinweiskette. Öffne immer nur die Datei, die der letzte Hinweis
   beim Namen nennt.
3. Zähle unterwegs, was zu zählen ist.
4. Schreibe den Schatz-Code in `SCHATZ.txt` in diesem Ordner.

## Für diese Übung zusätzlich

- Benutze **nur Lesen und Schreiben**. Keine Shell-Befehle. Einzige Ausnahme:
  Fehlt eine Datei, die ein Hinweis beim Namen nennt, greift REGEL 5 — erst
  `📋 PLAN-ÄNDERUNG`, dann suchen, mit eigener Schritt-Zeile und
  `Werkzeug: Nase (Suchen)`.
- Die Hinweiskette umfasst genau **5 Dateien zum Lesen** und **1 Datei zum
  Schreiben**. Dazu kommt diese Aufgabendatei, falls du sie selbst lesen musst:
  Startest du in `schatzsuche/`, ist sie schon geladen und du kommst auf
  6 Werkzeug-Einsätze; startest du im Hauptordner, sind es 7. Mehr als das
  macht die Übung unbrauchbar — dann stimmt die Zahl nicht mehr, die das
  Publikum mitgezählt hat.
- Kein Notizblock, keine Zwischendateien. Es entsteht genau eine neue Datei.
- `SCHATZ.txt` gehört in **diesen** Ordner, neben `START.txt`.
