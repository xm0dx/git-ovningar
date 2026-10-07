# Merge-konflikt

Händer när samma rad ändrats på två håll. Git markerar raderna i filen:

    <<<<<<< HEAD
    min version
    =======
    den andra versionen
    >>>>>>> main

Välj vad som ska vara kvar, ta bort markeringarna, sedan git add och git commit.
