clc
clear all
close all

image=imread('football.jpg');                   %lire l'image 
subplot(2,2,1);
imshow(image);                                  %afficher l'image
title('image Principale');                      %affecter un titre pour l'image
image_taille_fixe=imresize(image,[256,256]);   % retourne l'image en une matrice de 256 ligne et 256 colonne
image_niveaux_gris=rgb2gray(image_taille_fixe);         %convertir l'image en une image en niveaux de gris
subplot(2,2,2);
imshow(image_niveaux_gris);
title('image en niveaux de gris');
Matrice_Image=reshape(image_niveaux_gris,size(image_niveaux_gris));      %stocké les element de  l'image en niveaux de gris en une matrice         
Matrice_img_code=RLE_CODING(Matrice_Image);                          %appliquer le codage RLE sur la matrice 
subplot(2,2,3);
imshow(Matrice_img_code);
title('image apres le  codage ')
Matrice_img_decode=RLE_DECODING(Matrice_img_code);                           %appliquer le decodage RLE sur la matrice           
subplot(2,2,4);
imshow(Matrice_img_code);
title('image apres le Decodage ')
           