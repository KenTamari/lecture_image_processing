# 課題４レポート

clear; % 変数のオールクリア

ORG=imread('picture\outdoor_92_rika.png'); % 原画像の入力
ORG=rgb2gray(ORG); % カラー画像を白黒濃淡画像へ変換
imagesc(ORG); colormap(gray); colorbar;

によって，画像を読み込み，モノクロにしたものを表示した結果を図１に示す．

![原画像](https://github.com/KenTamari/lecture_image_processing/blob/master/picture/kadai4/img2.png?raw=true)  
図1 原画像

ヒストグラムとはディジタル画像における各濃度値の出現頻度を表すグラフである．   
ヒストグラムは次のようなプログラムで表示できる．

imhist(ORG); % ヒストグラムの表示

結果を図２に示す

![原画像](https://github.com/KenTamari/lecture_image_processing/blob/master/picture/kadai4/img1.png?raw=true)  
図2 ヒストグラムの表示





