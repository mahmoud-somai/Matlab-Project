function image_Compresse=RLE_CODING(image)    %Fonction de Codage
colonne=size(image,2);                    %connaitre les nbres des colonne de l'imaga a cod� et le stock� dans un variable "colonne"
ligne=size(image,1);                    %connaitre les nbres des lignes de l'imaga a cod� et le stock� dans un variable "colonne"
compteur_Freq=1;                        %compteur de frequence pour chaque lettre
L=2;                                %compteur r pour varier les lignes
image_Compresse(1,1)=colonne;                   %
image_Compresse(1,2)=ligne;                   %
k=1;                                %compteur k de nbre de ligne  pour l'image compresser
for j=1:colonne                         
    for i=1:ligne
        elements(k,1)=image(i,j);     %stock� dans un seul ligne les donn�es de l'image principale
        k=k+1;                      %incrementation de compteur pour passer a la ligne suivante
    end
end
    for k=1:size(elements,1) 
        if size(elements,1)==k          %test si l
            image_Compresse(L,1)=elements(k,1); %stock� l'element dans l'image cod�
            image_Compresse(L,2)=compteur_Freq;     %stock� la frequence de cet element(nbre de r�p�tition successive)
        elseif elements(k,1)==elements(k+1,1)  %test si l'element est egale a l'element suivant pour cr�menter le compteur de frequence
            compteur_Freq=compteur_Freq+1;      %incrementation de compteur de fr�quence 
        else
            image_Compresse(L,1)=elements(k,1); % affecter a la colonne d'element l'element de matrice en cas il y n'a pas des elements occurences
            image_Compresse(L,2)=compteur_Freq;     %affcter a la colonne de nbre de frequence appartient a l"element
            compteur_Freq=1;                %affecter a la variable de la colonne de nbre de frequence la nbre 1 car il y n'a pas des elements occurences
            L=L+1;                      %incr�menter le compteur r +1
        end

    end

end
     

