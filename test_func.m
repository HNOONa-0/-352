## Copyright (C) 2023 Ahmed hany
##
## This program is free software: you can redistribute it and/or modify
## it under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
##
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
##
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <https://www.gnu.org/licenses/>.

## -*- texinfo -*-
## @deftypefn {} {@var{retval} =} test_funcs (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Ahmed hany <Ahmed hany@DESKTOP-LVBHF97>
## Created: 2023-02-20

function ans = test_func ()
  ex=input('Enter exact solution: ','s');
  f=input('Enter dy/dx: ','s');
  x0=input('Enter x0: ');
  xf=input('Enter xf(x final): ');
  y0=input('Enter y0: ');
  h=input('Enter h: ');


  [x_pts,y_euler]=euler_forward(f,x0,xf,y0,h);

  n=(xf-x0)/h;

  y_exact=[0:n];
  abs_err=[0:n];
  rel_err=[0:n];

  for i=0:n
    x=x_pts(i+1);
    y_exact(i+1)=eval(ex);
    abs_err(i+1)=abs(y_exact(i+1)-y_euler(i+1) );
    rel_err(i+1)=abs(abs_err(i+1)/y_exact(i+1) );
  endfor

  y_euler
  y_exact
  abs_err
  rel_err
  plot(x_pts,y_euler,'r',x_pts,y_exact,'b');

endfunction
