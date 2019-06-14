im=imread('1.png');
figure;imshow(im);
imfinfo 1.png


imwrite(im,'after.png')

imgrey=rgb2gray(im);
imgrey=im2double(imgrey);

% 图像类型转换
b=logical(imgrey);
imuint8=im2uint8(im);
imuint16=im2int16(im);
im2gray=mat2gray(im);

%图像格式传唤
imwrite(im,'1.jpg');

% 画直方图
h=imhist(imgrey);
h1=h(1:10:256);
horz=1:10:256;
figure;bar(horz,h1);

%求均值
avg=mean2(imgrey);
%求图像的方差
sqr=var(imgrey(:));
%求图像的最小值
minNum=min(min(imgrey));
%求图像的最大值
maxNum=max(max(imgrey));
%求图像的中值
medianNum = median(median(imgrey));

%均衡话滤波
eqImg= histeq(imgrey,256);
figure;imshow(eqImg);

%图像相加
addimg=imgrey+imgrey;
figure;imshow(addimg);


