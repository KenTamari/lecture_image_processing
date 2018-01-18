# 課題１０レポート
今回はエッジ抽出を体験する．
フリー素材アイドル「MIKA☆RIKA」の「outdoor_92_rika.png」を原画像とする．  
この画像は縦512画像，横512画素による正方形のディジタルカラー画像である．  

ORG = imread('picture\outdoor_92_rika.png'); % 原画像の入力  
ORG = rgb2gray(ORG); %カラーからグレイへの変換  
imagesc(ORG); colormap('gray'); colorbar;% 画像表示  
pause; % 一時停止  
によって，画像を読み込み，モノクロにしたものを表示した結果を図１に示す．

![原画像](https://github.com/KenTamari/lecture_image_processing/blob/master/picture/kadai10/img1.png?raw=true)  
図1 原画像

図1の画像のプレウィット法によるエッジ抽出を行うプログラムは  

IMG = edge(ORG,'prewitt'); % エッジ抽出（プレウィット法）  
imagesc(IMG); colormap('gray'); colorbar;% 画像表示  
pause; % 一時停止  
  
であり結果は図2のようになる.  


![原画像](https://github.com/KenTamari/lecture_image_processing/blob/master/picture/kadai10/img2.png?raw=true)  
図2 プレウィット法によるエッジ抽出  

図1の画像のソベル法によるエッジ抽出を行うプログラムは  

IMG = edge(ORG,'sobel'); % エッジ抽出（ソベル法）  
imagesc(IMG); colormap('gray'); colorbar;% 画像表示  
pause; % 一時停止  
  
であり結果は図3のようになる.  


![原画像](https://github.com/KenTamari/lecture_image_processing/blob/master/picture/kadai10/img3.png?raw=true)  
図3 ソベル法によるエッジ抽出  

図1の画像のキャニー法によるエッジ抽出を行うプログラムは  

IMG = edge(ORG,'canny'); % エッジ抽出（キャニー法）  
imagesc(IMG); colormap('gray'); colorbar;% 画像表示  
pause; % 一時停止  
  
であり結果は図4のようになる.  


![原画像](https://github.com/KenTamari/lecture_image_processing/blob/master/picture/kadai10/img4.png?raw=true)  
図4 キャニー法によるエッジ抽出  


