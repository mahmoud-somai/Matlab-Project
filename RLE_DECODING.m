function image_decompressee=RLE_Decoding(image_compresse)  %Fonction de Decodage
nb_L=size(image_compresse,1);                     %Connaitre La Taille De L'image Codé 
ligne=image_compresse(1,1);                      %un variable ligne pour les lignes
colonne=image_compresse(1,2);                      %un variable colonne pour les colonnes
nouvelle_image=zeros(ligne,colonne);              %creation d'une matrice                 
compteur_nouvelle_image=1;                        %compteur ^pour les colonnes
compteur=1;                                         %compteur pour les lignes
for i=2:(nb_L)                           
    for j=1:image_compresse(i,2)              
        if(compteur==ligne+1)                                        %test sur l'occurrance de l'element de données
            compteur_nouvelle_image=compteur_nouvelle_image+1;         
            compteur=1;
        end
        nouvelle_image(compteur,compteur_nouvelle_image)=image_compresse(i,1); %stock les elements de données dans la matrice de nouvelle image
        compteur=compteur+1;                                                 %incrementation de compteur
    end
end
image_decompressee=nouvelle_image;             %stocké la matrice de nouvelle image dans une variable
end