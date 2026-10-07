# git revert

Ångrar en commit som redan är pushad, genom att skapa en ny commit som gör tvärtom.

    git log --oneline          hitta commitens id
    git revert a1b2c3d         ångra den
    git push

Historiken rörs inte, så det är säkert när andra också har koden.
