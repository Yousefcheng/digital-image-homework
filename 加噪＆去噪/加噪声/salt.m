im=imread('1.png');

imshow(im);

g=imnoise(im,'salt'); 



figure;imshow(g)

imwrite(g,'salt.png')
