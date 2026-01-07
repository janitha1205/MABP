function [idx,centers,xn,nm,mun] = ob_cen(data2,k,dim)

   [idx, centers] = kmeans (data2, k);
   theta = linspace(0, 2 * pi, 1000);
   unit_circle = [cos(theta); sin(theta)];
   factor = 1.5;
   n=1;
   nm=[];
   xn=[];
   while n<=k
      mu1=[centers(n,1),centers(n,2)];
      R=cov([data2(idx==n,1) data2(idx==n,2)]);
      A = chol(R, "lower");
      x = mu1' + factor .* A * unit_circle;
      nm=[nm;mu1];
      xn=[xn;x];
      n=n+1;
    endwhile
    m=1;
    mun=[];
    while m<=k

       n=1;
       mu=[];
       while n<=dim
         mu=[mu,centers(k,n)];
         n+=1;
       endwhile
       mun=[mun;mu];
       m+=1;
    endwhile





endfunction
