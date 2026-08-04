# Übung: Redaktion

Es gelten die Regeln der `CLAUDE.md` im übergeordneten Ordner: Plan zuerst, ein
Werkzeug pro Zug, eine Zeile vor jedem Werkzeug, das echte Werkzeug benennen,
sparsam bleiben.

Hier kommt ein Werkzeug dazu, das die andere Übung nicht hat: du darfst einen
**zweiten Agenten** um Hilfe bitten. In der Schritt-Zeile heisst er
`Kollege (Kritiker rufen)`. Man soll genau sehen, WANN ein zweiter Agent
startet.

## Dein Auftrag

1. Lies `AUFTRAG.txt` — dort steht das Thema und die maximale Länge.
2. Schreibe die Geschichte in `geschichte.txt`.
3. Rufe den Subagenten **kritiker** auf und lass die Geschichte benoten.
4. Verbessere die Geschichte anhand der Kritik.
5. Wiederhole 3–4, bis die Note **8 oder besser** ist.

## Regeln für die Kritiker-Runden

- **Nach jeder Runde** schreibst du diese Zeile **zweimal**: einmal sichtbar in
  den Chat, und einmal ans Ende von `noten.txt`. Format:
  `📊 RUNDE <n> · Note <x>/10 · <max. 8 Wörter, was der Kritiker bemängelt hat>`
  Nur im Notizblock reicht nicht — wer zuschaut, liest den Chat.
- Sag vor jeder Verbesserung in einem Satz, WAS du jetzt änderst und WARUM.
  Nicht einfach neu schreiben.
- **Erfinde niemals eine Note selbst.** Die Note kommt ausschliesslich vom
  Kritiker. Wenn er keine Note liefert, ruf ihn erneut auf.
- Höchstens 6 Runden. Wenn nach 6 Runden keine 8 erreicht ist, hör auf und sag
  ehrlich, woran es gescheitert ist.

## Dein Notizblock: `noten.txt`

Ein Agent denkt nicht im Kopf — er schreibt mit. `noten.txt` ist dein sichtbarer
Notizblock: man darf jederzeit hineinschauen und den Verlauf nachlesen, auch
wenn im Chat längst nach oben gescrollt wurde.

- Hänge nach **jeder** Runde die `📊 RUNDE …`-Zeile dort an.
- Notiere darunter mit `📝`, was du als Nächstes änderst — **bevor** du es tust.
- Jedes Schreiben in den Notizblock ist ein normaler Schritt mit eigener Zeile
  («Werkzeug: Hände (Schreiben)»). Er ist kein Geheimversteck.

Beispiel für den Aufbau:

```text
📊 RUNDE 1 · Note 6/10 · Anfang zu langsam, kein Pirat
📝 Nächste Änderung: mit dem Sturm einsteigen, Piraten einführen
📊 RUNDE 2 · Note 9/10 · Schluss jetzt witzig
```

## Abschluss

Wenn die Note ≥ 8 ist, schreibe:
`✅ ZIEL ERREICHT nach <n> Schritten und <r> Runden`
Danach 2 Sätze: was den Unterschied gemacht hat, und welche der vorgegebenen
Regeln den Kritiker am meisten beeinflusst hat.

## Was du NICHT tust

- **`.claude/agents/kritiker.md` nicht lesen.** Der Kritiker soll dich
  überraschen. Wer die Bewertungsregeln vorher kennt, schreibt die erste Fassung
  direkt auf die Note hin — dann gibt es nur eine Runde, und der
  Verbesserungs-Loop, den man sehen soll, fällt aus.
- Die Regeln in `.claude/agents/kritiker.md` auch nicht ändern oder ergänzen —
  die kommen vom Benutzer.
- `AUFTRAG.txt` nicht umschreiben.
- Nicht ausserhalb dieses Ordners lesen oder schreiben.
