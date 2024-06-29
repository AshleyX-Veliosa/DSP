// Define the step function
function y = u(n)
    y = n >= 0;
endfunction

// Define the input sequence x(n) = u(n) - u(n-10)
n = 0:50;
x_n = u(n) - u(n-10);

// Define the impulse response h(n) = (0.9^n) * u(n)
h_n = (0.9.^n) .* u(n);

// Perform the convolution of x_n and h_n to get y_n
y_n = convol(x_n, h_n);

// Function to create stem-like plots using plot2d
function stem2d(k, y, color)
    for i = 1:length(k)
        plot2d([k(i); k(i)], [0; y(i)], style=color);
        plot2d(k(i), y(i), style=color);
    end
endfunction

// Plotting the results
clf; // Clear current figure

// Plot x(n)
subplot(3, 1, 1);
stem2d(n, x_n, 5); // 5 for blue
xtitle('Input Sequence x(n) = u(n) - u(n-10)', 'n', 'x(n)');

// Plot h(n)
subplot(3, 1, 2);
stem2d(n, h_n, 5); // 5 for blue
xtitle('Impulse Response h(n) = (0.9^n) * u(n)', 'n', 'h(n)');

// Plot the output sequence y(n)
subplot(3, 1, 3);
n_y = 0:length(y_n)-1;
stem2d(n_y, y_n, 5); // 5 for blue
xtitle('Output Sequence y(n)', 'n', 'y(n)');

show_window();
