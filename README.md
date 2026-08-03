<div align="center">

# agent-demos

**Zwei kleine Übungen, an denen Kinder (11–14) sehen, wie ein KI-Agent arbeitet — Werkzeug für Werkzeug.**

[![License: CC BY-NC-SA 4.0](https://img.shields.io/badge/License-CC%20BY--NC--SA%204.0-blue)](LICENSE)
[![Keine Installation](https://img.shields.io/badge/Installation-keine-green)](#schnellstart)
[![Sprache: Deutsch](https://img.shields.io/badge/Sprache-Deutsch-lightgrey)](#)

</div>

Ein Agent, der einfach «fertig» meldet, ist für Kinder eine Blackbox. Beide Übungen
zwingen den Agenten deshalb, **vor jedem Werkzeug-Einsatz eine Zeile zu schreiben** —
welchen Schritt er macht, welches Werkzeug er nimmt, und warum. Aus einem
undurchsichtigen Vorgang wird etwas, das man mitlesen, vorhersagen und abzählen kann.

Das sind die Marker, auf die die Kinder achten — `CLAUDE.md` erzwingt sie in
jeder Übung:

| Marker | Wo | Wofür |
|---|---|---|
| `🔄 SCHRITT` | Chat, **vor** jedem Werkzeug-Einsatz | Welcher Schritt, welches Werkzeug, warum |
| `📊 RUNDE` | Chat + Notizblock (`redaktion/`) | Note dieser Kritiker-Runde |
| `📝` | Notizblock (`redaktion/noten.txt`) | Was der Agent als Nächstes ändert |
| `✅ ZIEL ERREICHT` | Chat, am Ende | Der Agent stoppt selbst — sichtbar |

Die Schritt-Zeile hat ein festes Format:

```text
🔄 SCHRITT <n> · <SCHAUEN|DENKEN|HANDELN|PRÜFEN> · Werkzeug: <Augen (Lesen)|Hände (Schreiben)|Kollege (Kritiker rufen)|keins> · <max. 10 Wörter>
```

Der Notizblock ist die zweite Hälfte: das Kind sieht nicht nur, *was* passiert,
sondern auch, *was der Agent vorhat*. In `schatzsuche/` gibt es bewusst keinen —
diese Übung soll die Werkzeug-Einsätze abzählbar halten (4× lesen, 1× schreiben),
und jede zusätzliche Schreiboperation würde genau das kaputtmachen.

Beide Übungen sind im Kurs gelaufen (Messung 03.08.2026):

| Übung | Dauer | Ergebnis |
|---|---|---|
| `schatzsuche/` | ~28 s | 8 Schritte, Code korrekt gefunden |
| `redaktion/` | ~123 s | Note 7/10 → 9/10 in 2 Kritiker-Runden |

## Was drin ist

- **[`schatzsuche/`](schatzsuche/)** — Der Agent folgt einer Hinweiskette durch
  Ordner, muss unterwegs etwas zählen und schreibt das Ergebnis in eine Datei.
  Zeigt den Loop: mehrfach lesen → denken → einmal schreiben → selbst stoppen.
- **[`redaktion/`](redaktion/)** — Die Kinder legen die Regeln eines **Subagenten**
  fest (was er liebt, was er hasst, ab wann es eine 8 gibt). Der Hauptagent
  schreibt eine Geschichte, lässt sie benoten und überarbeitet sie, bis die Note
  stimmt. Zeigt: ein Agent kann einen anderen Agenten rufen.
- **Beobachtbar statt erklärt** — die Kinder sagen den nächsten Schritt voraus
  und haken ihn ab, statt einen Vortrag über Agenten zu hören.
- **Nichts zu installieren** — reine Text- und Ordnerstrukturen.
- **Absichtlich unfertig** — die Kritiker-Regeln und das Geschichten-Thema sind
  Platzhalter. Sie werden im Kurs von den Kindern diktiert, nicht vorgegeben.

## Schnellstart

```bash
git clone https://github.com/codora-labs/agent-demos.git
cd agent-demos/schatzsuche
claude
```

Dann diesen Prompt eingeben:

```text
Lies CLAUDE.md und starte.
```

Der Agent liest `START.txt`, folgt der Hinweiskette und schreibt `SCHATZ.txt`.
Jeder Schritt erscheint als eigene Zeile im vorgegebenen Format.

## Vor jedem Durchlauf zurücksetzen

Beide Übungen erzeugen Dateien, die beim nächsten Lauf im Weg sind:

```bash
rm -f schatzsuche/SCHATZ.txt
rm -f redaktion/geschichte.txt redaktion/noten.txt
```

Diese Dateien sind per `.gitignore` ausgeschlossen — die Lösung landet also nicht
versehentlich im Repository.

## Die Platzhalter füllen

Vor der Redaktions-Übung tragen die Kinder ihre Regeln ein:

| Datei | Was hineingehört | Vorlage |
|---|---|---|
| `redaktion/.claude/agents/kritiker.md` | Was der Kritiker liebt, hasst, und wann es eine 8 gibt | `kritiker.beispiel.md` |
| `redaktion/AUFTRAG.txt` | Thema der Geschichte + maximale Länge | `AUFTRAG.beispiel.txt` |

Die `.beispiel`-Dateien sind die im Kurs getestete Fassung. Sie funktionieren, wenn
gerade keine Zeit zum Diktieren ist — der eigentliche Lerneffekt entsteht aber beim
Selbst-Festlegen.

> Die `CLAUDE.md`-Dateien sind kein Platzhalter. Sie enthalten das
> Narrations-Protokoll und den Ablauf — ohne sie ist die Übung nicht mehr
> beobachtbar. Nicht kürzen.

## Voraussetzungen

[Claude Code](https://claude.com/claude-code) oder ein anderer Agent, der
`CLAUDE.md` bzw. `AGENTS.md` liest. Die Übungen benutzen nur Datei-Lesen,
Datei-Schreiben und — in `redaktion/` — Subagenten.

## Verwandt

- [`game-starter-kit`](https://github.com/codora-labs/game-starter-kit) — das
  Null-Abhängigkeits-Paket, mit dem die Kinder danach ihr eigenes Spiel bauen.

## Lizenz

[CC BY-NC-SA 4.0](LICENSE) — © 2026 codora AG. Nutzung im eigenen Unterricht
ausdrücklich erwünscht, Namensnennung vorausgesetzt. Kommerzielle Nutzung auf
Anfrage: hallo@codora.ch
