# 課題５レポート

フリー素材アイドル「MIKA☆RIKA」の「outdoor_92_rika.png」を原画像とする．  
この画像は縦512画像，横512画素による正方形のディジタルカラー画像である．  

ORG=imread('picture\outdoor_92_rika.png'); % 原画像の入力  
ORG = rgb2gray(ORG); % カラー画像を白黒濃淡画像へ変換  
imagesc(ORG); colormap(gray); colorbar;  
pause; 
によって，画像を読み込み，モノクロにしたものを表示した結果を図１に示す．

![原画像](https://github.com/KenTamari/lecture_image_processing/blob/master/picture/kadai5/img1.png?raw=true)  
図1 原画像


今回は判別分析法を用いて画像二値化する．
判別分析法とは対象物の濃度と背景の濃度とがそれぞれ最もよくまとまり，かつ  
対象物と背景との違いが際立つようにしきい値を定める方法である．  

具体的には候補となる閾値tを１から２５５まで全て調べ，  
それぞれクラス内分散σwとクラス間分散σBを求めて  
σw/σBが最大となったときのtを閾値とする．  
それをプログラムにすると以下のようになる．


H = imhist(ORG); %ヒストグラムのデータを列ベクトルEに格納  
myu_T = mean(H);  
max_val = 0;  
max_thres = 1;  
for i=1:255  
C1 = H(1:i); %ヒストグラムを2つのクラスに分ける  
C2 = H(i+1:256);  
n1 = sum(C1); %画素数の算出  
n2 = sum(C2);  
myu1 = mean(C1); %平均値の算出  
myu2 = mean(C2);  
sigma1 = var(C1); %分散の算出  
sigma2 = var(C2);  
sigma_w = (n1 *sigma1+n2*sigma2)/(n1+n2); %クラス内分散の算出  
sigma_B = (n1 *(myu1-myu_T)^2+n2*(myu2-myu_T)^2)/(n1+n2); %クラス間分散の算出  
if max_val<sigma_B/sigma_w  
max_val = sigma_B/sigma_w;  
max_thres =i;  
end;  
end;  

IMG = ORG > max_thres;  
imagesc(IMG); colormap(gray); colorbar;  
pause;  


出力結果を図２に示す．

![原画像](https://github.com/KenTamari/lecture_image_processing/blob/master/picture/kadai5/img2.png?raw=true)  
図2 判別分析法による２値化画像

