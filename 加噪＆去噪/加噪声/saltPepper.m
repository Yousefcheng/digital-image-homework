im=imread('1.png');

imshow(im);

g=imnoise(im,'salt & pepper'); 



figure;imshow(g)

imwrite(g,'saltPepper.png')
