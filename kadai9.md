# 課題９レポート

今回はメディアンフィルターを適用し，ノイズ除去を体験する．  

フリー素材アイドル「MIKA☆RIKA」の「outdoor_92_rika.png」を原画像とする．  
この画像は縦512画像，横512画素による正方形のディジタルカラー画像である．  

ORG = imread('picture\outdoor_92_rika.png'); % 画像の読み込み  
ORG = rgb2gray(ORG); % 白黒濃淡画像に変換  
imagesc(ORG); colormap(gray); colorbar; % 画像の表示  
によって，画像を読み込み，モノクロにしたものを表示した結果を図１に示す．  

![原画像](https://github.com/KenTamari/lecture_image_processing/blob/master/picture/kadai9/img1.png?raw=true)  
図1 原画像

ノイズをのせる．  
ノイズをのせ，画像を表示するプログラムは  
ORG = imnoise(ORG,'salt & pepper',0.02); % ノイズ添付  
imagesc(ORG); colormap(gray); colorbar; % 画像の表示  
pause;  
である．

表示された画像は図2に示す．  
![原画像](https://github.com/KenTamari/lecture_image_processing/blob/master/picture/kadai9/img2.png?raw=true)  

図2 ノイズをのせた画像  

平滑化フィルタで雑音を除去する．  
平滑化フィルタで雑音を除去し，画像を表示するプログラムは 

IMG = filter2(fspecial('average',3),ORG); % 平滑化フィルタで雑音除去  
imagesc(IMG); colormap(gray); colorbar; % 画像の表示  
pause;  

である．

表示された画像は図3に示す．  
![原画像](https://github.com/KenTamari/lecture_image_processing/blob/master/picture/kadai9/img3.png?raw=true)  

図3 平滑化フィルタでノイズを除去した画像  

メディアンフィルタで雑音を除去する．  
メディアンフィルタで雑音を除去し，画像を表示するプログラムは 

IMG = medfilt2(ORG,[3 3]); % メディアンフィルタで雑音除去  
imagesc(IMG); colormap(gray); colorbar; % 画像の表示  
pause;  

である．

表示された画像は図4に示す．  
![原画像](https://github.com/KenTamari/lecture_image_processing/blob/master/picture/kadai9/img4.png?raw=true)  

図4 メディアンフィルタでノイズを除去した画像  

自分でフィルタを作成する．
自作のフィルタを適応し，画像を表示するプログラムは 

f=[0,-1,0;-1,5,-1;0,-1,0]; % フィルタの設計  
IMG = filter2(f,IMG,'same'); % フィルタの適用  
imagesc(IMG); colormap(gray); colorbar; % 画像の表示  
pause;  

である．

表示された画像は図5に示す．

![原画像](https://github.com/KenTamari/lecture_image_processing/blob/master/picture/kadai9/img5.png?raw=true)  
図5 自作フィルタを適応した画像
