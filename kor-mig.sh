#!/usr/bin/env bash
# Kör: bash ~/code/git-ovningar/kor-mig.sh
# Skapar repot på GitHub, slår ihop två pull requests och stänger ett ärende.
set -e
cd ~/code/git-ovningar

echo "== 1. Skapa repot på GitHub och skicka upp README =="
git add README.md
git commit -q -m "Första versionen av README" || true
gh repo create xm0dx/git-ovningar --public --source=. --remote=origin --description "Övningar med branches, pull requests och issues" --push

echo "== 2. Pull request 1: kommandon =="
git checkout -q -b kommandon
git add KOMMANDON.md
git commit -q -m "Lägg till lista med git-kommandon"
git push -q -u origin kommandon
gh pr create --title "Lägg till lista med git-kommandon" --body "Kommandon för gren, pull request och issue som jag använder i övningarna." --base main --head kommandon
gh pr merge --merge --delete-branch
git checkout -q main && git pull -q

echo "== 3. Pull request 2: anteckningar =="
git checkout -q -b anteckningar
git add ANTECKNINGAR.md
git commit -q -m "Anteckningar om grenar, pull requests och ärenden"
git push -q -u origin anteckningar
gh pr create --title "Anteckningar om grenar, pull requests och ärenden" --body "Korta anteckningar om vad varje steg gör." --base main --head anteckningar
gh pr merge --merge --delete-branch
git checkout -q main && git pull -q

echo "== 4. Ärende: öppna och stäng direkt =="
url=$(gh issue create --title "Övning: öppna och stäng ett ärende" --body "Testar hur man skapar och stänger ett ärende på GitHub.")
echo "$url"
gh issue close "${url##*/}" --comment "Övningen är klar."

echo "== 5. Lägg till skriptet i repot =="
git add kor-mig.sh
git commit -q -m "Skript som gjorde övningarna"
git push -q

echo
echo "Klart. Sammanslagna pull requests: $(gh pr list --state merged --json number --jq 'length'), stängda ärenden: $(gh issue list --state closed --json number --jq 'length')"
echo "Märkena dyker upp på https://github.com/xm0dx inom några minuter till någon dag."
