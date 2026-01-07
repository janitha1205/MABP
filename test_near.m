function [test_v_loc,treg] =test_near(mu,test_v,k,dim,le)
  i=1;
  test_v_loc=[];
  #len=length(test_v);
  #mu,len,k,dim
  [t_r]=total_score(mu,le,k,dim);
  reg=0;
  while i<= le
    j=1;
    dis=[];
    while j<=k
      l=1;
      dist=0;
      while l<=dim
        dist+=abs(mu(j,l)-test_v(i,l));
        l+=1;
      endwhile
      dis=[dis;dist];
      j+=1;
    endwhile
    [val,loc]=min(dis);

    reg1=0;
    h=1;
    while h<=dim
      reg1+=mu(loc,h)*mu(loc,h);
      h+=1;

    endwhile
    reg=reg+reg1;
    test_v_loc=[test_v_loc;loc];
    i+=1;

  endwhile
  treg=t_r-reg;
