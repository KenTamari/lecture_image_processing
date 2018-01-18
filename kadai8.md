# 課題８レポート

今回は二値化した画像の連結成分にラベルをつける．  

フリー素材アイドル「MIKA☆RIKA」の「outdoor_92_rika.png」を原画像とする．  
この画像は縦512画像，横512画素による正方形のディジタルカラー画像である．  

ORG = imread('picture\outdoor_92_rika.png'); % 画像の読み込み
ORG = rgb2gray(ORG); % 白黒濃淡画像に変換
imagesc(ORG); colormap(gray); colorbar; % 画像の表示
によって，画像を読み込み，モノクロにしたものを表示した結果を図１に示す．

![原画像](https://github.com/KenTamari/lecture_image_processing/blob/master/picture/kadai8/img1.png?raw=true)  
図1 原画像

2値化しなければならないので  
IMG = ORG > 128; % 閾値128で二値化  
imagesc(IMG); colormap(gray); colorbar; % 画像の表示  
pause;  
で閾値128による２値化を行う．結果は図２に示す．

![原画像](https://github.com/KenTamari/lecture_image_processing/blob/master/picture/kadai8/img2.png?raw=true)  
図2 閾値128による２値化

そして図2の画像をラベリングする．ラベリングとその結果の表示は以下のようなプログラムで行える．

IMG = bwlabeln(IMG);  
imagesc(IMG); colormap(jet); colorbar; % 画像の表示  
pause;  

出力結果を図３に示す．
![原画像](https://github.com/KenTamari/lecture_image_processing/blob/master/picture/kadai8/img3.png?raw=true)  
図3 ラベリングの結果



同じ連結成分同士で色分けされていることがわかる．
