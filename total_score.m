function [mtc]= total_score(mu,le,k,dim)

  i=1;
  tr=[];
  while i<=k
    trd=0;
    j=1;
    while j<=dim
      trd+=mu(i,j)*mu(i,j);
      j+=1;
    endwhile
    tr=[tr;trd];
    i+=1;
  endwhile
  mtc=max(tr)*le;
