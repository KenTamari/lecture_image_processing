

clear; % •Ï”‚ÌƒI[ƒ‹ƒNƒŠƒA

ORG=imread('picture\outdoor_92_rika.png'); % Œ´‰æ‘œ‚Ì“ü—Í
ORG = rgb2gray(ORG); colormap(gray); colorbar;
imagesc(ORG); axis image; % ‰æ‘œ‚Ì•\Ž¦
pause; % ˆêŽž’âŽ~

% ‚QŠK’²‰æ‘œ‚Ì¶¬
IMG = ORG>128;
imagesc(IMG); colormap(gray); colorbar;  axis image;
pause;

% ‚SŠK’²‰æ‘œ‚Ì¶¬
IMG0 = ORG>64;
IMG1 = ORG>128;
IMG2 = ORG>192;
IMG = IMG0 + IMG1 + IMG2;
imagesc(IMG); colormap(gray); colorbar;  axis image;

pause;
% ‚WŠK’²‰æ‘œ‚Ì¶¬
IMG00 = ORG>32;
IMG01 = ORG>64;
IMG02 = ORG>96;
IMG03 = ORG>128;
IMG04 = ORG>160;
IMG05 = ORG>192;
IMG06 = ORG>224;


IMG = IMG00 + IMG01 + IMG02 + IMG03 + IMG04 + IMG05 + IMG06;
imagesc(IMG); colormap(gray); colorbar;  axis image;


