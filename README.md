<div align="center">

# agent-demos

**Zwei kleine Übungen, die sichtbar machen, wie ein KI-Agent arbeitet — Werkzeug für Werkzeug.**

[![License: CC BY-SA 4.0](https://img.shields.io/badge/License-CC%20BY--SA%204.0-blue)](LICENSE)
[![Keine Installation](https://img.shields.io/badge/Installation-keine-green)](#in-claude-code-benutzen)
[![Sprache: Deutsch](https://img.shields.io/badge/Sprache-Deutsch-lightgrey)](#voraussetzungen)

</div>

Ein Agent, der einfach «fertig» meldet, ist eine Blackbox. Beide Übungen
zwingen ihn deshalb, **vor jedem Werkzeug-Einsatz eine Zeile zu schreiben** —
welchen Schritt er macht, welches Werkzeug er nimmt, und warum. Aus einem
undurchsichtigen Vorgang wird etwas, das man mitlesen, vorhersagen und abzählen
kann.

So sieht das aus — ein echter Lauf, gekürzt:

```text
📋 PLAN:
1. START.txt lesen und der Hinweiskette folgen
2. Rosen zählen, Code zusammensetzen
3. Code in SCHATZ.txt schreiben
🔄 SCHRITT 1 · SCHAUEN · Werkzeug: Augen (Lesen) · START.txt lesen für den ersten Hinweis
   → Read START.txt
🔄 SCHRITT 2 · SCHAUEN · Werkzeug: Augen (Lesen) · Keller-Kiste öffnen, dort steht der nächste Hinweis
   → Read keller/kiste.txt
   …
🧠 GEDANKE: Rose kommt 3-mal vor, erste Ziffer ist also 3.
🔄 SCHRITT 6 · HANDELN · Werkzeug: Hände (Schreiben) · Code 371 in SCHATZ.txt schreiben
   → Write SCHATZ.txt
✅ ZIEL ERREICHT nach 6 Schritten
```

Sechs Zeilen, sechs Werkzeug-Einsätze. Wer die Zeilen mitgezählt hat, hat die
Werkzeug-Einsätze gezählt — das ist die ganze Idee.

| Marker | Wo | Wofür |
|---|---|---|
| `📋 PLAN` | Chat, **vor** dem ersten Werkzeug | Was der Agent vorhat, bevor er anfängt |
| `📋 PLAN-ÄNDERUNG` | Chat, wenn etwas schiefgeht | Umplanen zum Zuschauen |
| `🔄 SCHRITT` | Chat, **vor** jedem Werkzeug-Einsatz | Welcher Schritt, welches Werkzeug, warum |
| `🧠 GEDANKE` | Chat, ohne Nummer | Denken ohne Werkzeug — zählt nicht mit |
| `📊 RUNDE` | Chat + Notizblock (`redaktion/`) | Note dieser Kritiker-Runde |
| `📝` | Notizblock (`redaktion/noten.txt`) | Was der Agent als Nächstes ändert |
| `✅ ZIEL ERREICHT` | Chat, am Ende | Der Agent stoppt selbst — sichtbar |

Die Schritt-Zeile hat ein festes Format:

```text
🔄 SCHRITT <n> · <SCHAUEN|DENKEN|HANDELN|PRÜFEN> · Werkzeug: <Augen (Lesen)|Hände (Schreiben)|Muskeln (Ausführen)|Nase (Suchen)|Kollege (Kritiker rufen)> · <max. 10 Wörter>
```

Welche Phasen man zu sehen bekommt, hängt von der Übung ab: `schatzsuche/`
zeigt `SCHAUEN` und `HANDELN` als Schritte, das Denken läuft als `🧠 GEDANKE`
nebenher. `PRÜFEN` sieht man in `redaktion/` — dort ist der Anruf beim Kritiker
genau das.

Der Notizblock ist die zweite Hälfte: man sieht nicht nur, *was* passiert,
sondern auch, *was der Agent vorhat*. In `schatzsuche/` gibt es bewusst keinen —
diese Übung soll die Werkzeug-Einsätze abzählbar halten (5× lesen, 1× schreiben),
und jede zusätzliche Datei würde genau das kaputtmachen.

## Was drin ist

- **[`schatzsuche/`](schatzsuche/)** — Der Agent folgt einer Hinweiskette durch
  Ordner, muss unterwegs etwas zählen und schreibt das Ergebnis in eine Datei.
  Zeigt den Loop: mehrfach lesen → denken → einmal schreiben → selbst stoppen.
  **Fang hiermit an.**
- **[`redaktion/`](redaktion/)** — Man legt die Regeln eines **Subagenten**
  fest (was er liebt, was er hasst, ab wann es eine 8 gibt). Der Hauptagent
  schreibt eine Geschichte, lässt sie benoten und überarbeitet sie, bis die Note
  stimmt. Zeigt: ein Agent kann einen anderen Agenten rufen — und dessen Urteil
  fällt härter aus, weil der Kritiker die Ausreden des Autors nicht kennt.
- **Beobachtbar statt erklärt** — man sagt den nächsten Schritt voraus und hakt
  ihn ab, statt einen Vortrag über Agenten zu hören.
- **Nichts zu installieren** — reine Text- und Ordnerstrukturen.
- **Absichtlich unfertig** — die Kritiker-Regeln und das Geschichten-Thema sind
  Platzhalter. Sie werden beim Durchführen selbst festgelegt, nicht vorgegeben.

## In Claude Code benutzen

```bash
git clone https://github.com/codora-labs/agent-demos.git
cd agent-demos/schatzsuche
claude
```

Dann eingeben:

```text
Lies CLAUDE.md und starte.
```

Das genügt. Fünf Dinge, die den Unterschied machen:

1. **Im Übungsordner starten.** Claude Code lädt automatisch die `CLAUDE.md` des
   Arbeitsverzeichnisses **und aller übergeordneten Ordner**. Aus
   `schatzsuche/` heraus sind damit beide geladen: die Regeln aus dem
   Hauptordner und die Aufgabe der Übung — ohne einen einzigen Werkzeug-Einsatz.
   Aus dem Hauptordner zu starten funktioniert auch, kostet aber einen
   zusätzlichen Schritt, weil der Agent die Aufgabe erst selbst nachlesen muss.
   Was **nicht** funktioniert: einen Übungsordner einzeln herauskopieren — dann
   fehlen die Regeln, und man sieht nur noch das Ergebnis.
2. **Vor jedem Lauf zurücksetzen** — sonst liegt die Lösung vom letzten Mal noch
   da und der Agent ist in drei Sekunden «fertig»:
   ```bash
   ./reset.sh              # beide Übungen zurücksetzen
   ./reset.sh --beispiel   # zusätzlich die Platzhalter mit der getesteten Fassung füllen
   ```
3. **Nicht `claude -p` benutzen, um zuzuschauen.** Der Druck-Modus gibt nur die
   letzte Nachricht aus — die ganze Schritt-Narration ist darin unsichtbar, und
   ein funktionierender Lauf sieht aus wie ein kaputter. Interaktiv starten. Wer
   automatisiert prüfen will, nimmt
   `claude -p --output-format stream-json --verbose`.
4. **Die Regeln nicht kürzen.** Die `CLAUDE.md`-Dateien sind kein Platzhalter,
   sondern der Grund, warum man überhaupt etwas sieht. Ohne sie läuft dieselbe
   Aufgabe in der Hälfte der Zeit und man sieht nichts als das Ergebnis.
5. **Eine Frage im Voraus stellen.** «Wie viele Werkzeug-Einsätze braucht er?»
   Die Antwort steht in `schatzsuche/CLAUDE.md` — und am Ende kann man
   nachzählen, ob sie gestimmt hat.

### Woran man einen sauberen Lauf erkennt

- Der Plan steht **vor** dem ersten Werkzeug-Einsatz.
- Die Schritt-Nummern laufen lückenlos: 1, 2, 3 … kein Sprung.
- Vor jedem Werkzeug steht eine Zeile — und das darin genannte Werkzeug ist das,
  das gleich benutzt wird.
- Die Zahl im Abschluss ist die Zahl der Zeilen, die man mitgezählt hat.

### Und wenn nicht

| Was man sieht | Was passiert ist | Was man tut |
|---|---|---|
| Nummernsprung (1 → 4) | Werkzeug-Einsätze ohne Ankündigung | Nachfragen: «Was war Schritt 2 und 3?» — die Antwort ist der Lerneffekt |
| Der Agent listet den Ordner auf | Er kennt jetzt alle Hinweise auf einmal | Abbrechen, `./reset.sh`, neu starten |
| Abschlusszahl höher als das Gezählte | Die Zahl kommt von innen, nicht vom Sichtbaren | Nachrechnen lassen |
| Gar keine Schritt-Zeilen | Die Regeln sind nicht geladen | Prüfen, ob `CLAUDE.md` im Hauptordner liegt und aus dem Repo heraus gestartet wurde |
| Der Lauf endet nach zwei Sekunden ohne alles | Fehlstart der CLI, kommt gelegentlich vor | Einfach nochmal starten |

## Variante: den Plan absichtlich brechen

Der stärkste Moment der Schatzsuche ist nicht der gefundene Code, sondern der
Agent, der merkt, dass sein Plan nicht mehr stimmt. Vor dem Lauf:

```bash
mv schatzsuche/garten/giesskanne.txt schatzsuche/keller/giesskanne_verlegt.txt
```

Der Agent plant, läuft in die Lücke, schreibt `📋 PLAN-ÄNDERUNG`, sucht, findet
und macht weiter — Umplanen zum Zuschauen statt Umplanen als Behauptung.
`./reset.sh` dreht die Verschiebung wieder zurück.

## Die Platzhalter füllen

Vor der Redaktions-Übung werden die Regeln eingetragen:

| Datei | Was hineingehört | Vorlage |
|---|---|---|
| `redaktion/.claude/agents/kritiker.md` | Was der Kritiker liebt, hasst, und wann es eine 8 gibt | `kritiker.beispiel.md` |
| `redaktion/AUFTRAG.txt` | Thema der Geschichte + maximale Länge | `AUFTRAG.beispiel.txt` |

Ungefüllt enthalten beide Dateien nur Unterstriche — der Kritiker benotet dann
ins Blaue. Entweder selbst ausfüllen (das ist der eigentliche Lerneffekt) oder
`./reset.sh --beispiel` nehmen, das die getestete Fassung einsetzt.

Der Hauptagent darf `kritiker.md` **nicht lesen** — das ist eine Regel in
`redaktion/CLAUDE.md`, kein Zufall. Kennt er die Bewertungsregeln vorher,
schreibt er die erste Fassung direkt auf die Note hin, bekommt sofort eine 9,
und der Verbesserungs-Loop, um den es geht, fällt aus.

## Gemessen

Alle Zahlen gemessen am 04.08.2026 mit den `CLAUDE.md`-Dateien dieses Repos,
je ein Lauf pro Zeile (ausser wo vermerkt). Die Redaktions-Zeilen setzen
`./reset.sh --beispiel` voraus.

| Übung | Modell | Start in | Dauer | Schritte | Ergebnis |
|---|---|---|---|---|---|
| `schatzsuche/` | Opus | `schatzsuche/` | 41 s | 6 | Code 371 korrekt |
| `schatzsuche/` | Sonnet | `schatzsuche/` | 53–56 s (2 Läufe) | 6 | Code 371 korrekt |
| `schatzsuche/` | Opus | Hauptordner | 46 s | 7 | Code 371 korrekt |
| `schatzsuche/` | Sonnet | Hauptordner | 65 s | 7 | Code 371 korrekt |
| `schatzsuche/` · Variante | Opus | Hauptordner | 64 s | 9 | Code 371 korrekt — Sackgasse, `📋 PLAN-ÄNDERUNG`, Suche, beides angekündigt |
| `redaktion/` | Opus | `redaktion/` | 104 s | 7 · 2 Runden | Note 5/10 → 9/10 |
| `redaktion/` | Sonnet | `redaktion/` | 7 min | 16 · 5 Runden | Note 5/10 → 8/10 |

Die Schritt-Zahl der Schatzsuche war in allen sechs Läufen exakt die
angekündigte — 6 aus dem Übungsordner, 7 aus dem Hauptordner. Dauer und
Rundenzahl sind es nicht: dieselbe Redaktions-Aufgabe brauchte einmal 2 Runden
in 104 Sekunden und einmal 5 Runden in 7 Minuten. Abzählbar ist die Mechanik,
nicht die Uhr — vor Publikum also keine Dauer versprechen.

## Voraussetzungen

[Claude Code](https://claude.com/claude-code) oder ein anderer Agent, der
`CLAUDE.md` bzw. `AGENTS.md` liest. Die Übungen benutzen nur Datei-Lesen,
Datei-Schreiben und — in `redaktion/` — Subagenten.

Eine bewusste Einschränkung: die Regeln verbieten parallele Werkzeug-Aufrufe.
Das macht die Läufe etwas langsamer, ist aber die Bedingung dafür, dass eine
Ankündigung genau einem Werkzeug-Einsatz entspricht. Zwei Aufrufe unter einer
Zeile kann man nicht mitzählen.

## Verwandt

- [`game-starter-kit`](https://github.com/codora-labs/game-starter-kit) — das
  Null-Abhängigkeits-Paket, um danach ein eigenes Spiel zu bauen.

## Lizenz

[CC BY-SA 4.0](LICENSE) — © 2026 codora AG. Teilen und bearbeiten ausdrücklich
erwünscht, **auch kommerziell**. Zwei Bedingungen: codora AG nennen (mit
Lizenzlink und Hinweis, ob geändert wurde) und Bearbeitungen unter derselben
Lizenz weitergeben. Vorlage für die Namensnennung steht in [`NOTICE`](NOTICE).
