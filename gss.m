function x=gss(f,x0,D,options)
%x=gss(f,x0,D)
%
% solve DFO problem by pattern search according to
% DOI: 10.1137/S0036144502428893
%
%Input parameters:
% f   objective function
% x0 starting point
% D   matrix of search directions (positive spanning set)
%
%Output parameters
% x   optimal solution

deltaTol=options.deltaTol
delta=options.delta0
maxiter=options.maxiter

if delta <= deltaTol
    error(DirectSearch:InitialError, "delta0 must be > deltaTol");
endif

x=x0(:);
n=length(x);
if size(D,1)<>n
    error(SizeMismatchError, "dimension of starting point and directions don't agree");
endif
 
Dcoord=[eye(n),-eye(n)]; %D% if too big, generate later ad hoc

for k=1:maxiter
  for kk=1:2*n
    if f(x+delta*Dcoord(:,kk)) < f(x)
      x=x+delta*Dcoord(:,kk);
      %delta=delta % keep delta
      break;
    endif
  endfor
  
  %x=x % keep x
  delta=0.5*delta;
  if delta < deltaTol
    return
   endif
 endfor
endfunction


function d=genDcoord(k,n)
  %% facilitate generation of dirrections from positove spanning set.
endfunction
  