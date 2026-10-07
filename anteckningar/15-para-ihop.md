# Jobba två på samma commit

När jag och en klasskompis sitter ihop och kodar ska båda synas på commiten.
Sista raden i meddelandet pekar på kompisens GitHub-konto, med en tom rad före:

    git commit -m "Lägg till Withdraw-metod

    Co-authored-by: Kompisens Namn <kompisens-mejl-på-github>"

Mejlen hittar kompisen under Settings, Emails på GitHub. Den som inte vill visa
sin riktiga mejl kan använda sin noreply-adress, den står på samma sida.

Pusha grenen, öppna en pull request och slå ihop den. Då räknas commiten för oss båda.
