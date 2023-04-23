% threedsurf of box calc for exam 2
vv = [10000:1000:15000];   %create Volume vector
wv = [15:35];              %create width vector
[VV, WV] = meshgrid(vv,wv);     %create matricies
CostC = .0005;             %define CostC
CostF = .0003;             %define CostF
ZTotalC = PackCost(VV,WV,CostC,CostF);   %call PackCost calc
surf(VV,WV,ZTotalC)        %generate 3D surface plot
title('3D Analysis of Volume and Width to Total Cost')   %title
xlabel('Volume(cm^3)');ylabel('Width(cm)');zlabel('Total Cost($)')  %label