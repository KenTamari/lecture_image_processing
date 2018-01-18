# 課題７レポート

フリー素材アイドル「MIKA☆RIKA」の「outdoor_92_rika.png」を原画像とする．  
この画像は縦512画像，横512画素による正方形のディジタルカラー画像である．  

ORG = imread('picture\outdoor_92_rika.png'); % 画像の読み込み
ORG = rgb2gray(ORG); % 白黒濃淡画像に変換
imagesc(ORG); colormap(gray); colorbar; % 画像の表示
によって，画像を読み込み，モノクロにしたものを表示した結果を図１に示す．

![原画像](https://github.com/KenTamari/lecture_image_processing/blob/master/picture/kadai7/img1.png?raw=true)  
図1 原画像

この画像の濃度ヒストグラムを表示するプログラムは  

imhist(ORG); % 濃度ヒストグラムを生成、表示  
pause;  

であり結果は図２のようになる.


![原画像](https://github.com/KenTamari/lecture_image_processing/blob/master/picture/kadai7/img2.png?raw=true)  
図2 モノクロ画像の濃度ヒストグラム

画素のダイナミックレンジを０から２５５にし，結果の画像を表示する．  
そのプログラムは  
ORG = double(ORG);  
mn = min(ORG(:)); % 濃度値の最小値を算出  
mx = max(ORG(:)); % 濃度値の最大値を算出  
ORG = (ORG-mn)/(mx-mn)*255;  
imagesc(ORG); colormap(gray); colorbar; % 画像の表示  
pause;  

である．結果を図3に示す



![原画像](https://github.com/KenTamari/lecture_image_processing/blob/master/picture/kadai7/img3.png?raw=true)  
図3 ダイナミックレンジを０から２５５にした画像  


そしてこの図３の濃度ヒストグラムを表示するプログラムは  

ORG = uint8(ORG); % この行について考察せよ  
imhist(ORG); % 濃度ヒストグラムを生成、表示  


となり結果は図４のようになる．
![原画像](https://github.com/KenTamari/lecture_image_processing/blob/master/picture/kadai7/img4.png?raw=true)  
図4 ダイナミックレンジを０から２５５にした画像の濃度ヒストグラム  

さて，プログラム中の  
ORG = uint8(ORG);  
について考察をする．

まず，この行をコメントアウトして濃度ヒストグラムを表示しようとすると  
図5のようになってしまう  

![原画像](https://github.com/KenTamari/lecture_image_processing/blob/master/picture/kadai7/img5.png?raw=true)  
図5 濃度ヒストグラムの表示失敗 

また，ORG = uint8(ORG);の意味は
>"配列の要素をクラス uint8 の符号なし 8 ビット (1 バイト) 整数に変換するものである．"
>> MathWorks公式ホームページ  <https://jp.mathworks.com/help/matlab/ref/uint8.html>

であるので，これらから  
imhist(ORG); % 濃度ヒストグラムを生成、表示  
はdouble配列による変数の中身の表示には対応していないため，一度  
ORG = uint8(ORG);  
によりクラスuint8に変換しなければいけないものと思われる．

