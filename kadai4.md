# 課題４レポート

clear; % 変数のオールクリア

ORG=imread('picture\outdoor_92_rika.png'); % 原画像の入力
ORG=rgb2gray(ORG); % カラー画像を白黒濃淡画像へ変換
imagesc(ORG); colormap(gray); colorbar;

によって，画像を読み込み，モノクロにしたものを表示した結果を図１に示す．

![原画像](https://github.com/KenTamari/lecture_image_processing/blob/master/picture/kadai4/img2.PNG?raw=true)  
図1 原画像

ヒストグラムとはディジタル画像における各濃度値の出現頻度を表すグラフである．



IMG = ORG > 64; % 輝度値が64以上の画素を1，その他を0に変換  
imagesc(IMG); colormap(gray); colorbar;

である．結果を図２に示す

![原画像](https://github.com/KenTamari/lecture_image_processing/blob/master/picture/kadai4/img1.PNG?raw=true)  
図2 閾値６４で２値化  





