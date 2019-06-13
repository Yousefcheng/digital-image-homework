image_original=imread('1.png');
figure(1)
subplot(2,4,1);
image_original=rgb2gray(image_original);
imshow(image_original);
title('原输入图像');
axis square;
 
%生成含高斯噪声图像并显示
%pp=0.05;
%image_gaosi_noise=imnoise(image_original,'gaussian',0,pp);


 
%生image_original成含椒盐噪声图像并显示
dd=0.05;
image_saltpepper_noise=imnoise(image_original,'salt & pepper',dd);
 
%生成含乘性噪声图像并显示
%var=0.05;
%image_speckle_noise=imnoise(image_original,'speckle',var);
 

image_saltpepper_noise_after1=medfilt2(image_saltpepper_noise,[3,3]);
subplot(2,4,2);
imshow(image_saltpepper_noise_after1);title('中值滤波去椒盐噪声效果图');
axis square;
imwrite(image_saltpepper_noise_after1,'中值滤波去椒盐噪声效果图.png')
 
h_gaosi1=fspecial('gaussian',3,1);
image_saltpepper_noise_after2=imfilter(image_saltpepper_noise,h_gaosi1);
subplot(2,4,3);
imshow(image_saltpepper_noise_after2);title('高斯平滑去椒盐噪声效果');
axis square;
imwrite(image_saltpepper_noise_after2,'高斯平滑去椒盐噪声效果.png')
 
image_saltpepper_noise_after3=wiener2(image_saltpepper_noise,[5 5]);
subplot(2,4,4);
imshow(image_saltpepper_noise_after3);title('维纳滤波去椒盐噪声效果');
axis square;
imwrite(image_saltpepper_noise_after3,'维纳滤波去椒盐噪声效果.png')
 
 
% %原图像直方图
% r=0:255;  
% bb=image_original(:); 
% pg=hist(bb,r);  
% pgr1=pg/length(bb);  
% subplot(245);bar(pgr1);title('源输入图像的直方图');
%  
% r=0:255;  
% bl=image_saltpepper_noise_after1(:); 
% pg=hist(bl,r);  
% pgr2=pg/length(bl);  
% subplot(246);bar(pgr2);title('中值滤波去椒盐噪声后的直方图');
%  
% r=0:255;  
% bh=image_saltpepper_noise_after2(:); 
% pu=hist(bh,r);  
% pgr3=pu/length(bh);  
% subplot(247);bar(pgr3);title('高斯平滑去椒盐噪声后的直方图');
%  
% r=0:255;  
% ba=image_saltpepper_noise_after3(:); 
% pa=hist(ba,r);  
% pgr4=pa/length(ba);  
% subplot(248);bar(pgr4);title('维纳滤波去除椒盐噪声后的直方图');