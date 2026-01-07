dim=2;#dimension of vector
 sd=31#seed number
 k=4;#number of clusters
 ub=1000;#rand int generator max limit
 np=100;#number of points
 m=[];
 data1=[];
[data,sd,m]=rand_num_g(k,sd,ub,np,dim,m,1);
data1=data;
 t_reg=1000;
 while(t_reg>10)

     lead=rand*100;
     lead
     if lead>80
     #mun,test,k,dim,le
      ## Generate a two-cluster problem
       [idx,centers,x,nm,mun] = ob_cen(data1,k,dim);
       [t_reg]=exploitation(mun,test,k,dim,le);
     else
       [data,sd,m]=rand_num_g(k,sd,ub,500,dim,m,0);
       data1=[data1;data];

       [idx,centers,x,nm,mun] = ob_cen(data1,k,dim);


     endif
     t_reg
 endwhile
 mu1=[centers(1,1),centers(1,2)];
 mu2=[centers(2,1),centers(2,2)];
 mu3=[centers(3,1),centers(3,2)];
 mu4=[centers(4,1),centers(4,2)];

 x1 = [x(1,:,:);x(2,:,:)];
 x2 = [x(3,:,:);x(4,:,:)];
 x3 = [x(5,:,:);x(6,:,:)];
 x4 = [x(7,:,:);x(8,:,:)];
 ## Plot the result
 figure;
 plot (data1(idx==1, 1), data1(idx==1, 2), "*r");
 hold on;
 plot (data1(idx==2, 1), data1(idx==2, 2), "*b");
 hold on;
 plot (data1(idx==3, 1), data1(idx==3, 2), "*y");
 hold on;
 plot (data1(idx==4, 1), data1(idx==4, 2), "*g");
 hold on;
 plot(x1(1,:), x1(2,:), "k", "LineWidth", 1);
 hold on;
 plot(x2(1,:), x2(2,:), "k", "LineWidth", 1);
 hold on;
 plot(x3(1,:), x3(2,:), "k", "LineWidth", 1);
 hold on;
 plot(x4(1,:), x4(2,:), "k", "LineWidth", 1);
 plot (centers (:, 1), centers (:, 2), "kv", "markersize", 10);
 title ("A simple four-clusters example");
 hold off;


