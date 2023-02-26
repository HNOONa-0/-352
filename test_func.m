function ans = test_func ()
  method = input("enter used wanted method (euler_forward,midpoint,euler_backward,) :\n","s");
  while strcmp (method ,"euler_forward") != 1 && strcmp (method ,"midpoint")!=1 && strcmp (method ,"euler_backward")!=1 && strcmp (method ,"huen")!=1
      disp('Enter valid  method pls one of the brackets ones!!!');
      method = input("enter used wanted method (Trap,Simp,Mid,lAnalyzis) :\n","s");
  endwhile
  ex=input('Enter exact solution: ','s');
  f=input('Enter dy/dx: ','s');
  x0=input('Enter x0: ');
  y0=input('Enter y0: ');
  h=input('Enter h: ');
  n=input('Enter number of steps : ');

  function fxret= dydx(x,y)
     fxret=eval(f);
  endfunction
  [x_m,y_m]=feval(method,@dydx,x0,y0,h,n);
  y_exact=[0:n];
  abs_err=[0:n];
  rel_err=[0:n];

  for i=0:n
    x=x_m(i+1);
    y_exact(i+1)=eval(ex);
    abs_err(i+1)=abs(y_exact(i+1)-y_m(i+1) );
    rel_err(i+1)=abs(abs_err(i+1)/abs(y_exact(i+1) ) );
  endfor
  y_m
  y_exact
  abs_err
  rel_err
  plot(x_m,y_m,'r',x_m,y_exact,'b');

endfunction
