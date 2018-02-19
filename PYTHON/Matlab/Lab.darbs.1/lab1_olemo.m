mkdir matlab
Warning: Directory already exists. 
cd matlab
%% Mērijumu datu apstrāde
Um = [-1 0.3 1.5 2.5 3.2];
Um = [1.1 2.2 2.1 3.2 4.7];
plot(Um,Im,'o-')
Undefined function or variable 'Im'.
 
Did you mean:
Im = [1.1 2.2 2.1 3.2 4.7];
plot(Um,Im,'o-')
Um = [1.1 2.2 2.1 3.2 4.7];
Im = [1.1 2.2 2.1 3.2 4.7];
plot(Um,Im,'o-')
%mēģināsim atminēt sakarību
%kas saistita x(Um) un y(Im)
%sakarību mēs meklēsim kā 2. kārtas polinomu
%koeficientus 2. kārtas polinomus atradīsim ar POLYFIT funkciju
%Poly - polynominal
%Fit - fitting
%c = polyfit (x,y,N) N- polinoma kārta
c
Undefined function or variable 'c'.
 
C = polyfit(Um,Im,2)

C =

   -0.0000    1.0000   -0.0000

% noformēšu vektoru c ar sīkāku soli
U - -1:0.01:3.2;
Undefined function or variable 'U'.
 
U = -1:0.01:3.2;
%aprēķinasim y
I = C(1)*U.^2+C(2)*U+C(3);
% zi,ēsim to kas sanāca
plot(Um,Im,'o',U,I)
Um = [-1 0.3 1.5 2.5 3.2];
C = polyfit(Um,Im,2)

C =

    0.1716    0.3662    1.5034

I = C(1)*U.^2+C(2)*U+C(3);
plot(Um,Im,'o',U,I)
% atkārtojam to pašu ar 3. kārtas polinomu
C = polyfit(Um,Im,2)

C =

    0.1716    0.3662    1.5034

I = C(1)*U.^2+C(2)*U+C(3);
C = polyfit(Um,Im,2)

C =

    0.1716    0.3662    1.5034

I = C(1)*U.^3+C(2)*U+C(3)*U+C(4);
Index exceeds matrix dimensions.
 
I = C(1)*U.^3+C(2)*U.^2+C(3)*U+C(4);
Index exceeds matrix dimensions.
 
C = polyfit(Um,Im,3)

C =

    0.1838   -0.4328    0.3391    2.0688

I = C(1)*U.^3+C(2)*U.^2+C(3)*U+C(4);
plot(Um,Im,'o',U,I)
% tkārotsim 4. kārtas polinomam, bet pašas izteiksmes sastādīšana ir laikietilpīga
%tāpēc to automatizēsim izmantojot POLYVAL funkciju
% POLY- polinominal, VAL- value
% y = polyval(C,x)
%būtībā tas pats kā Y = C(1)*x.2^+C(2)*x+C(3)
% ja ir 2. kārta,...
% piemērs 3. kārtai
C = polyfit(Um,Im,3)

C =

    0.1838   -0.4328    0.3391    2.0688

C = polyfit(Um,Im,3);
I = polyval(C,U);
plot(Um,Im,'o',U,I)
C = polyfit(Um,Im,4);
I = polyval(C,U);
plot(Um,Im,'o',U,I)


%% Pie lialš polinoma pakāpes gan aproksimācijai, gan interpolācijai
%radīsies nevēlamas oscilācijas
C = polyfit(Um,Im,10);
Warning: Polynomial is not unique; degree >= number of data points. 
> In polyfit (line 70) 
I = polyval(C,U);
plot(Um,Im,'o',U,I)


% lineāra sakarība
C = polyfit(Um,Im,1);
I = polyval(C,U);
plot(Um,Im,'o',U,I)


%% vairākas mērijumu sērijas
Um = [-1 0.3 1.5 2.5 3.2];
Im = [1.1 2.2 2.1 3.2 4.7;
         0.9 1.8 2.6 3.3 4.5;
         1.0 2.0 2.4 3.4 4.3;
         0.8 1.9 2.5 3.5 4.4;
         1.0 2.1 2.2 3.3 4.6];
%% Jautājums kā matlabs zīmēs matricas?
figure,plot(Um,Im,'o-')
figure,plot(Um,Im','o-')
% pielaikosim polinomu
% meklwsim vidējo vērtību
Ivid = mean(Im)

Ivid =

    0.9600    2.0000    2.3600    3.3400    4.5000

C = polyfit(Um,Ivid,3);
U = -1:0.01:3.2;
I = polyval(C,U);
% uzdevums- uzzimēt grafiku, lai mērijumu pinkti būtu ar 'o'
%laividējais starp mērijumiem būtu ar '*k'
%lai pielaikotais polinoms būtu ar līniju '-'
plot(Um,Im,'o',Um,Ivid,'*k',U,I,'-')
plot(Um,Im','o',Um,Ivid,'*k',U,I,'-')


% kad ir vairākas mērijumu sērijas, rēkina vidējo kvadrātisko novirzi
Ivnk = std(Im);
Ivnk = std(Im)

Ivnk =

    0.1140    0.1581    0.2074    0.1140    0.1581

errorbar(Um,Ivid,Ivnk)



%% Kā ielasīt skeneto grafiku
% un iegūt mērinumu punktus
cd

/home/user/matlab

ls
image1.JPG  image2.JPG

%% ielasīsim bildes matlab\
imread('image1.JPG');
A = imread('image1.JPG');
B = imread('image2.JPG');
figure(1),image(A),shg
figure(2),image(B),shg
% 2. grafikam uzstādīsim īstus  x y
figure(2),image([0 14],[0 80],B),
figure(2),image([0 14],[80 0],B),
set(gca,'YDir','normal')
% atliek nolasiit grafiku
[x,y] = ginput(5)

x =

    3.5579
    4.5598
    5.9819
    8.3090
   10.7007


y =

    9.1533
   19.2018
   27.8483
   35.5599
   40.4674

