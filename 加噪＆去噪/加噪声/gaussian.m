im=imread('1.png');

imshow(im);

g=imnoise(im,'gaussian',0,0.01); 



figure;imshow(g)

imwrite(g,'gaussian.png')


