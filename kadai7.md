# 課題７レポート

フリー素材アイドル「MIKA☆RIKA」の「outdoor_92_rika.png」を原画像とする．  
この画像は縦512画像，横512画素による正方形のディジタルカラー画像である．  

clear; % 変数のオールクリア  
ORG=imread('picture\outdoor_92_rika.png'); % 原画像の入力  
ORG = rgb2gray(ORG);  
imagesc(ORG); colormap(gray); colorbar; % 画像の表示  
によって，画像を読み込み，モノクロにしたものを表示した結果を図１に示す．

![原画像](https://github.com/KenTamari/lecture_image_processing/blob/master/picture/kadai6/img1.png?raw=true)  
図1 原画像


今回は単純に閾値１２８で２値化したものとディザ法によって2値化したものを表示する．  
プログラムは以下の通りになる．


IMG = ORG>128; % 128による二値化  
imagesc(IMG); colormap(gray); colorbar; % 画像の表示  
pause;  
  
IMG = dither(ORG); % ディザ法による二値化  
imagesc(IMG); colormap(gray); colorbar; % 画像の表示  


出力結果を図２，図３に示す．

![原画像](https://github.com/KenTamari/lecture_image_processing/blob/master/picture/kadai6/img2.png?raw=true)  
図2 閾値128による２値化画像


![原画像](https://github.com/KenTamari/lecture_image_processing/blob/master/picture/kadai6/img3.png?raw=true)  
図3 ディザ法による２値化画像

