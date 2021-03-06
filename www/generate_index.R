
setwd( file.path( Sys.getenv(x = "rPackagesDir" ), "svn", 
    "soiltexture", "www" ) )

library( "markdown" )

markdownToHTML(
    file     = "index.md", 
    output   = "index.html", 
    title    = "soiltexture: The Soil Texture Wizard",
    encoding = "UTF-8" )

library( "knitr" ) 

knit2html(
    input    = "FAQ.Rmd", 
    output   = "FAQ.html", 
    title    = "soiltexture: FAQ",
    encoding = "UTF-8" )
