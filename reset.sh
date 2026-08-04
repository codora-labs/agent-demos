#!/usr/bin/env bash
# Setzt beide Übungen auf den Ausgangszustand zurück.
# Vor jedem Durchlauf ausführen — sonst liegt die Lösung vom letzten Mal noch da.
set -euo pipefail
cd "$(dirname "$0")"

rm -f schatzsuche/SCHATZ.txt
rm -f redaktion/geschichte.txt redaktion/noten.txt

# Die Schatzsuche-Variante zurückdrehen, falls sie benutzt wurde.
if [ -f schatzsuche/keller/giesskanne_verlegt.txt ]; then
  mv schatzsuche/keller/giesskanne_verlegt.txt schatzsuche/garten/giesskanne.txt
fi

# Platzhalter der Redaktions-Übung: mit --beispiel die getestete Fassung einsetzen.
if [ "${1:-}" = "--beispiel" ]; then
  cp redaktion/AUFTRAG.beispiel.txt redaktion/AUFTRAG.txt
  cp redaktion/.claude/agents/kritiker.beispiel.md redaktion/.claude/agents/kritiker.md
  echo "Zurückgesetzt. Redaktions-Platzhalter mit der Beispiel-Fassung gefüllt."
else
  echo "Zurückgesetzt. Die Platzhalter in redaktion/ sind unberührt."
fi
