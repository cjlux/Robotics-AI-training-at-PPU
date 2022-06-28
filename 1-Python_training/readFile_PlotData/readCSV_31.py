import pandas as pd
import matplotlib.pyplot as plt

def read_plot_CSV(file:str):
    
    # read_cvs renvoie un objet de type pandas.DataFrame :
    df = pd.read_csv(file, comment="#", sep=";", header=None)

    print("type(df.values):", type(df.values))
    print("df.values.shape:", df.values.shape)

    T = df.values[:, 0] # first column
    X = df.values[:, 1] # second column
    Y = df.values[:, 2] # third column

    print("T.shape:", T.shape)


    coeff = 35.4    # coeff for conversion pixels->mm
    X1 = X*coeff/1e3
    Y1 = Y*coeff/1e3

    from utils import compute_period
    X1_period = compute_period(T, X1)
    Y1_period = compute_period(T, Y1)
    print(f"period of X1: {X1_period:.1f} s")
    print(f"period of Y1: {Y1_period:.1f} s")

    plt.figure()    # create an empty plotting window
    plt.plot(T, X1, "b", label="X disp.") # plot of X1 vs T
    plt.plot(T, Y1, "m", label="Y disp.") # plot of Y1 vs T
    plt.xlabel("time [s]")
    plt.ylabel("target displ. [m]")
    plt.legend(loc="upper right")
    plt.title("Mass-spring experience", size=18)

    x_pos = T.min() + (T.max()-T.min())/4
    plt.text(T.min(), plt.ylim()[1]*0.96, f"X period: {X1_period:.1f} s", color='b')
    plt.text(x_pos, plt.ylim()[1]*0.96, f"Y period: {Y1_period:.1f} s", color='m')

    plt.grid()
    plt.show()      # to show the plot 

if __name__ == "__main__":
    read_plot_CSV('data.csv')
    
