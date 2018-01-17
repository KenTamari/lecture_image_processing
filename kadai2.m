% 課題２　階調数と疑似輪郭
% ２階調，４階調，８階調の画像を生成せよ．
% 下記はサンプルプログラムである．
% 課題作成にあたっては「Lenna」以外の画像を用いよ．

clear; % 変数のオールクリア

ORG=imread('picture\outdoor_92_rika.png'); % 原画像の入力
ORG = rgb2gray(ORG); colormap(gray); colorbar;
imagesc(ORG); axis image; % 画像の表示
pause; % 一時停止

% ２階調画像の生成
IMG = ORG>128;
imagesc(IMG); colormap(gray); colorbar;  axis image;
pause;

% ４階調画像の生成
IMG0 = ORG>64;
IMG1 = ORG>128;
IMG2 = ORG>192;
IMG = IMG0 + IMG1 + IMG2;
imagesc(IMG); colormap(gray); colorbar;  axis image;

pause;
% ８階調については，各自検討してください．
IMG00 = ORG>32;
IMG01 = ORG>64;
IMG02 = ORG>96;
IMG03 = ORG>128;
IMG04 = ORG>160;
IMG05 = ORG>192;
IMG06 = ORG>224;


IMG = IMG00 + IMG01 + IMG02 + IMG03 + IMG04 + IMG05 + IMG06;
imagesc(IMG); colormap(gray); colorbar;  axis image;


