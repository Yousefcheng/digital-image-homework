im=imread('1.png');

imshow(im);

g=imnoise(im,'speckle'); 



figure;imshow(g)

imwrite(g,'speckle.png')
