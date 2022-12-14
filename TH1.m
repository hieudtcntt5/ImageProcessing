
% 2.2.1
new_image_black = zeros(200,300)
% imshow(new_image_black)
% 2.2.2
new_image_white = ones(200,300)*255
% imshow(new_image_white)
% 2.2.3
new_image_gray = ones(200,300)*200
% imshow(double(new_image_gray)/255)
%2.2.4
image_gray = ones(200,300)*100
% imshow(double(image_gray)/255)
%2.2.5
image_line_black = ones(200,300)*200
image_line_black(20:30,:) = 0
% imshow(double(image_line_black)/255)
%2.2.6
image_line_b = ones(200,300)*100
image_line_b(20:30,:) = 0
image_line_b(:,20:30) = 255
image_line_b(20:30,20:30) = 200
% imshow(double(image_line_b)/255)
% 2.2.7
image_line = ones(200,300)*200
image_line(85:115,135:165) = 0
% imshow(image_line)
%3.2.1
X1 = imread('cameraman.tif')
X1 = double(X1)/255
% 3.2.2
X2 = imnoise(X1,'gaussian',0,0.01)
% imshow(X2)
% 3.2.3
X3 = imnoise(X1,'salt & pepper',0.05)
% imshow(X3)
% 3.2.4

% 4.2.1
h = fspecial('average',[3,3])
Y2 = imfilter(X2,h,'replicate')
% imshow(Y2)
% 4.2.2
Y3 = medfilt2(X3, [ 3 3 ] )
% imshow(Y3)
% 4.2.3
% PSNR_2 = psnr(Y2,X2)
% disp(PSNR_2)
% PSNR_3 = psnr(Y3,X3)
% disp(PSNR_3)
% PSNR_2_with_1 = psnr(Y2,X1)
% disp(PSNR_2_with_1)
% PSNR_3_with_1 = psnr(Y3,X1)
% disp(PSNR_3_with_1)
% 4.2.4
h1 = fspecial('average',[3,3])
h2 = fspecial('average',[5,5])
h3 = fspecial('average',[7,7])

g1 = 2
g2 = 1.5
g3 = 1
g4 = 0.5

Y_2_with_h1 = imfilter(X2,h1,'replicate')
Y_2_with_h2 = imfilter(X2,h2,'replicate')
Y_2_with_h3 = imfilter(X2,h3,'replicate')

Y_3_with_h1 = imfilter(X3,h1,'replicate')
Y_3_with_h2 = imfilter(X3,h2,'replicate')
Y_3_with_h3 = imfilter(X3,h3,'replicate')

Y_2_with_g1 = imnoise(X2,'gaussian',0,g1)
Y_2_with_g2 = imnoise(X2,'gaussian',0,g2)
Y_2_with_g3 = imnoise(X2,'gaussian',0,g3)
Y_2_with_g4 = imnoise(X2,'gaussian',0,g4)

Y_3_with_g1 = imnoise(X3,'gaussian',0,g1)
Y_3_with_g2 = imnoise(X3,'gaussian',0,g2)
Y_3_with_g3 = imnoise(X3,'gaussian',0,g3)
Y_3_with_g4 = imnoise(X3,'gaussian',0,g4)

Y_2_with_median1 =  medfilt2(X2, [ 3 3 ] )
Y_2_with_median2 =  medfilt2(X2, [ 5 5 ] )
Y_2_with_median3 =  medfilt2(X2, [ 7 7 ] )


Y_3_with_median1 =  medfilt2(X3, [ 3 3 ] )
Y_3_with_median2 =  medfilt2(X3, [ 5 5 ] )
Y_3_with_median3 =  medfilt2(X3, [ 7 7 ] )

disp(psnr(Y_3_with_median1,X3))

