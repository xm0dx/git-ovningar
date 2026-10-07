# git restore

Ångrar ändringar i en fil som inte är committad än.

    git restore Program.cs            tillbaka till senaste commit
    git restore --staged Program.cs   ta bort från add, behåll ändringen i filen
    git restore .                     ångra allt i mappen, går inte att ångra tillbaka
