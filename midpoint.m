function [x_arr,y_arr] = midpoint(f, x0, y0, h,n)
  x=x0;
  y=y0;
  x_arr=[0:n];
  y_arr=[0:n];
  for i=0:n
    x_arr(i+1)=x;
    y_arr(i+1)=y;
    y=y+h*f(x+(h/2),y+(h/2 * f(x,y)));
    x=x+h;
  end
  x=x_arr;
  y=y_arr;
end
