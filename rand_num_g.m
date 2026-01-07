 function [data,sd,m]=rand_num_g(k,sd,ub,np,dim,m,run)
   data=[];
   num=1;

   while num<=k
     if run==1
       m1=randi(ub);
       m=[m,m1];
     else
       m1=m(num);
     endif
     randn ("seed", sd);
     C = m1*randn (np, dim);
     data=[data;C];
     sd+=1;
     num+=1;
   endwhile
 endfunction
