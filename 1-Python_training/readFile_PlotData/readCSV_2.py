import pandas as pd
import matplotlib.pyplot as plt

# read_cvs renvoie un objet de type pandas.DataFrame :
df = pd.read_csv('data.csv', comment="#", sep=";", header=None)

print("type(df.values):", type(df.values))
print("df.values.shape:", df.values.shape)

T = df.values[:, 0] # first column
X = df.values[:, 1] # second column
Y = df.values[:, 2] # third column

print("T.shape:", T.shape)

X1 = X - X.mean()
print("max of X:", X.max(), ", min of X:", X.min())
print("amplitude of X :", X.max()-X.min())

plt.figure()    # create an empty plotting window
plt.plot(T, X1, label="X centered")  # plot X1(T)
plt.xlabel("time [s]")
plt.ylabel("displ. [pixels]")
plt.title("Mass-spring experience", size=18)
plt.legend()
plt.grid()
plt.show()      # to show the plot 
