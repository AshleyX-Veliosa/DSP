import numpy as np
import matplotlib.pyplot as plt

def unit_step(n):
    return np.where(n >= 0, 1, 0)

#3.3
def Ex_3_3(a):
    n = np.arange(0, 10)
    x_n = a**n * unit_step(n)
    h_n = unit_step(n)
    y_n = np.convolve(x_n, h_n)[:len(n)]

    plt.stem(n, y_n, basefmt=" ", use_line_collection=True)
    plt.title('Ex 3.3: y[n]')
    plt.xlabel('n')
    plt.ylabel('y[n]')
    plt.grid(True)
    plt.show()

#3.4
def Ex_3_4(a):
    n = np.arange(0, 10)
    x_n = np.where((n >= 0) & (n <= 3), 1, 0)
    h_n = np.where((n >= 0) & (n <= 4), a**n, 0)
    y_n = np.convolve(x_n, h_n)[:len(n)]

    plt.stem(n, y_n, basefmt=" ", use_line_collection=True)
    plt.title('Ex 3.4: y[n]')
    plt.xlabel('n')
    plt.ylabel('y[n]')
    plt.grid(True)
    plt.show()

#3.5
def Ex_3_5(a):
    n = np.arange(0, 10)
    x_n = a**n * unit_step(n)
    h_n = unit_step(n)
    y_n = np.convolve(x_n, h_n)[:len(n)]

    plt.stem(n, y_n, basefmt=" ", use_line_collection=True)
    plt.title('Ex 3.5: y[n]')
    plt.xlabel('n')
    plt.ylabel('y[n]')
    plt.grid(True)
    plt.show()

a = 0.5  # ข้อ 3.3
Ex_3_3(a)

a = 2  # ข้อ 3.4
Ex_3_4(a)

a = 2  # ข้อ 3.5
Ex_3_5(a)
