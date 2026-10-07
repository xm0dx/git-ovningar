# git fetch och git pull

    git fetch    hämtar nya commits från GitHub men ändrar inget i min mapp
    git pull     fetch plus merge, min mapp uppdateras

Fetch först när jag vill se vad som är nytt innan jag tar in det:

    git fetch origin
    git log --oneline HEAD..origin/main
