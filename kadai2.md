# 課題２レポート

フリー素材アイドル「MIKA☆RIKA」の「outdoor_92_rika.png」を原画像とする．この画像は縦512画像，横512画素による正方形のディジタルカラー画像である．

ORG=imread('picture\outdoor_92_rika.png'); % 原画像の入力  
ORG = rgb2gray(ORG); colormap(gray); colorbar;
imagesc(ORG); axis image; % 画像の表示  

によって，画像を読み込み，モノクロにしたものを表示した結果を図１に示す．

![原画像](https://github.com/KenTamari/lecture_image_processing/blob/master/picture/kadai2/img.PNG?raw=true)  
図1 モノクロ画像

２階調画像を生成するにはしきい値128で白か黒に判別すればよいので

IMG = ORG>128;  
imagesc(IMG); colormap(gray); colorbar;  axis image;
によって、２階調画像にする．

２階調画像の結果を図２に示す．

![原画像](https://github.com/KenTamari/lecture_image_processing/blob/master/picture/kadai2/img2.PNG?raw=true)  
図2 ２階調画像

４階調画像を生成するにはしきい値64、128,192で２階調画像を生成して合成すればできる．
よって

IMG0 = ORG>64;  
IMG1 = ORG>128;  
IMG2 = ORG>192;  
IMG = IMG0 + IMG1 + IMG2;  
imagesc(IMG); colormap(gray); colorbar;  axis image;  

とする．４階調画像の結果を図３に示す．

![原画像](https://github.com/KenTamari/lecture_image_processing/blob/master/picture/kadai2/img3.PNG?raw=true)  
図3 ４階調画像

８階調画像は４階調画像と同じ要領でしきい値を３２倍数でとっていき，２階調画像を生成して合成すればできる．
よって
IMG00 = ORG>32;  
IMG01 = ORG>64;  
IMG02 = ORG>96;  
IMG03 = ORG>128;  
IMG04 = ORG>160;  
IMG05 = ORG>192;  
IMG06 = ORG>224;  
IMG = IMG00 + IMG01 + IMG02 + IMG03 + IMG04 + IMG05 + IMG06;  
imagesc(IMG); colormap(gray); colorbar;  axis image;  
とする．８階調画像の結果を図４に示す．

![原画像](https://github.com/KenTamari/lecture_image_processing/blob/master/picture/kadai2/img4.PNG?raw=true)  
図4 ８階調画像





