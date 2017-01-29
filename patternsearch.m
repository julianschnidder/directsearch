function [x,fval,exitflag,output] = patternsearch(f,x0,A,b,Aeq,beq,l,u,constr,options)
%x = patternsearch(f,x0)
%x = patternsearch(f,x0,A,b)
%x = patternsearch(f,x0,A,b,Aeq,beq)
%x = patternsearch(f,x0,A,b,Aeq,beq,l,u)
%x = patternsearch(f,x0,A,b,Aeq,beq,l,u,constr)
%x = patternsearch(f,x0,A,b,Aeq,beq,l,u,constr,options)
%x = patternsearch(problem)
%[x,val] = patternsearch()
%[x,val,exitstat,output] = patternsearch()

switch nargin
  case 0:
    print("input expected, exiting");
    return;
    break;
  case 1:
    problem=f;
    f=problem.f;
    x0=problem.x0;
    break;
  case 2:
    break;
end    
