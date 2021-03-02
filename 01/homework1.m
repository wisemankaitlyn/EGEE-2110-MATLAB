% EGEE-2110 Matlab Homework Set I
% Kaitlyn Wiseman
% 03 05 2021

clear;
clc;

disp('***************************************************************')
disp(' 1.')
% Create 4 matrices:
A = [-4 -3  2;
      4  3 -1;
     -3 -2  1]
B = [ 1 -1 -3;
     -1  2  4;
      1  1  1]
C = [ 2  1  3;
     -1  0  2;
      3  2  1]
D = [ 0  1  2;
      1  2  0;
      0  2  1]

  
disp('***************************************************************')
disp(' 2.') 
% Show by multiplication that B is not the inverse of A.
disp(' If B is the inverse of A, AB should equal I:')
A * B 
disp(' =\= I.')


disp('***************************************************************')
disp(' 3.')
% Find the actual inverse of A and prove it is the inverse.
invA = inv(A)
A * invA 
disp(' = I.')


disp('***************************************************************')
disp(' 4.')
% Compute the point-by-point multiplication of C and D.
C .* D


disp('***************************************************************')
disp(' 5.')
% Find the characteristic polynomials for C and D.
polyC = poly(C)
polyD = poly(D)


disp('***************************************************************')
disp(' 6.')
% Find the roots of the polynomials.
roots(polyC)
roots(polyD)


disp('***************************************************************')
disp(' 7.')
% Show that the determinant |CD| is equal to |C||D|.
det(C * D)
det(C) * det(D)


disp('***************************************************************')
disp(' 8.')
% Create the matrix E.
E = [ 5  3 -4;
      6 -2  2;
      7  7 -9]
%   a) Find the matrix containing the eigenvectors of E (call it P).
[P,D] = eigs(E)
%   b) Show that inv(P)EP results in a diagonal matrix which contains the 
%      eigenvalues of E on the main diagonal.
P \ E * P  % I would have used inv(P) * E * P, but it was slightly 
           % inaccurate compared to this


disp('***************************************************************')
disp(' 9.')
%    a) Plot the function y from zero to 100 in steps of 0.001.  Label the 
%       x-axis "Time", and the y-axis "Magnitude".  Display the grid.  Give
%       the plot the title "Exponentially decaying Sine".
t = 0:0.001:100;
y = exp(-0.05*t) .* sin(t/2);

figure(1)
plot(t,y,'linewidth',2)
grid on
xlabel('Time')
ylabel('Magnitude')
title('Exponentially decaying Sine')

hold on

%    b) Plot the function z on the same plot in a different color.  Give
%       the figure a legend, and identify each function with a name ("y"
%       and "z" will work).
z = exp(-0.05*t);

plot(t,z,'linewidth',2,'color','m','linestyle','-.')
legend('y','z')

hold off

disp('***************************************************************')
disp(' 10.')
% Compute the RMS value of the signal y from problem 9.  Recall that the 
% name "RMS" tells you the algorithm in reverse order.
yRMS = sqrt(mean(y.^2))
