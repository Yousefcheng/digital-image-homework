im=imread('1.png');

imshow(im);

g=imnoise(im,'poisson'); 



figure;imshow(g)

imwrite(g,'poisson.png')
