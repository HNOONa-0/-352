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
## @deftypefn {} {@var{retval} =} huen (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Ahmed hany <Ahmed hany@DESKTOP-LVBHF97>
## Created: 2023-02-26

function [x_arr,y_arr]= euler_forward (f,x0,y0,h,n)
  x=x0;
  y=y0;

  x_arr=[0:n];
  y_arr=[0:n];

  x_arr(1)=x;
  y_arr(1)=y;
  for i=0:n
    x_arr(i+1)=x;
    y_arr(i+1)=y;

    pred=y+h*f(x,y);
    corr=y+(h/2)*(f(x,y)+f(x+h,pred) );

    y=corr;
    x=x+h;
  end

  ## x=x_arr;
  ## y=y_arr;
endfunction
