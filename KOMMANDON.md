# Kommandon

## Gren och pull request

    git checkout -b namn-pa-grenen      skapa gren och byt till den
    git add -A                          lägg till ändringarna
    git commit -m "Vad jag gjorde"      spara dem
    git push -u origin namn-pa-grenen   skicka grenen till GitHub
    gh pr create                        öppna en pull request
    gh pr merge --merge --delete-branch slå ihop och ta bort grenen

## Ärende (issue)

    gh issue create --title "Rubrik"    skapa ett ärende
    gh issue list                       visa öppna ärenden
    gh issue close 1                    stäng ärende nummer 1
