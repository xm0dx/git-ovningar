# .gitignore

Filer som aldrig ska med i repot, till exempel bin och obj som skapas av dotnet build.

    dotnet new gitignore    skapar en färdig .gitignore för .NET

Om bin och obj redan hunnit med i repot:

    git rm -r --cached bin obj
    git commit -m "Ta bort bin och obj"
