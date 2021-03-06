
detach( package:soiltexture ) 
rm(list=ls(all=TRUE)) 

setwd( "D:/Users/julienm/Documents/_WORKS/_PROJECTS/r_packages/soiltexture/pkg/soiltexture/vignettes" ) 

Stangle( "soiltexture_vignette.Rnw" ) 

Sweave( "soiltexture_vignette.Rnw" ) 

for( clean in c(FALSE,FALSE,TRUE) ){ 
    msg <- tools::texi2dvi( 
        file        = "soiltexture_vignette.tex", 
        pdf         = TRUE, 
        clean       = clean, 
        texinputs   = getwd() 
    )   
    
    # if( !clean ){ 
    #     detach( package:soiltexture ) 
    # }   
}   



## Copy the vignette's pdf into the 'doc' folder
file.copy( 
    from      = "soiltexture_vignette.pdf", 
    to        = "../inst/doc/soiltexture_vignette.pdf", 
    overwrite = TRUE )    

# file.remove( "soiltexture_vignette.pdf" ) 



for( ext in c( "\\.tex$", "\\.bib.bak$", "\\.R$", "\\.aux$", 
    "\\.bbl$", "\\.blg$", "\\.log$", "\\.out$", "\\.toc$", "\\.pdf$" ) ){ 
    
    file.remove( list.files( getwd(), ext, full.names = TRUE ) ) 
}   

