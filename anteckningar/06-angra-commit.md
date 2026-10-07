# Ångra senaste commit

När jag committade för tidigt eller skrev fel meddelande.

    git reset --soft HEAD~1    tar bort commiten men behåller ändringarna som tillagda
    git commit --amend         ändra meddelandet på senaste commit

Gör bara detta på commits som inte är pushade än.
