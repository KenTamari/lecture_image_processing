# 課題５レポート

フリー素材アイドル「MIKA☆RIKA」の「outdoor_92_rika.png」を原画像とする．この画像は縦512画像，横512画素による正方形のディジタルカラー画像である．

ORG=imread('picture\outdoor_92_rika.png'); % 原画像の入力  
ORG= rgb2gray(ORG); % カラー画像を白黒濃淡画像へ変換  
imagesc(ORG); colormap(gray); colorbar; % 画像の表示  

によって，画像を読み込み，モノクロにしたものを表示した結果を図１に示す．

![原画像](https://github.com/KenTamari/lecture_image_processing/blob/master/picture/kadai3/img0.PNG?raw=true)  
図1 原画像

閾値６４で2値化するプログラムは

IMG = ORG > 64; % 輝度値が64以上の画素を1，その他を0に変換  
imagesc(IMG); colormap(gray); colorbar;

である．結果を図２に示す

![原画像](https://github.com/KenTamari/lecture_image_processing/blob/master/picture/kadai3/img1.PNG?raw=true)  
図2 閾値６４で２値化  

同様に閾値９６で2値化するプログラムは  
IMG = ORG > 96;  
imagesc(IMG); colormap(gray); colorbar;  

である．結果を図３に示す

![原画像](https://github.com/KenTamari/lecture_image_processing/blob/master/picture/kadai3/img2.png?raw=true)  
図3 閾値９６で２値化

同様に閾値１２８で2値化するプログラムは  

IMG = ORG > 128;
imagesc(IMG); colormap(gray); colorbar;

である．結果を図４に示す

![原画像](https://github.com/KenTamari/lecture_image_processing/blob/master/picture/kadai3/img3.png?raw=true)  
図4 閾値１２８で２値化

同様に閾値１９２で2値化するプログラムは  

IMG = ORG > 192;  
imagesc(IMG); colormap(gray); colorbar;

である．結果を図５に示す

![原画像](https://github.com/KenTamari/lecture_image_processing/blob/master/picture/kadai3/img4.png?raw=true)  
図5 閾値１９２で２値化



