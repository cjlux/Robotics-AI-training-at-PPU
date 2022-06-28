import pandas as pd
import matplotlib.pyplot as plt

# read_cvs returns an object of type pandas.DataFrame :
df = pd.read_csv('data.csv', comment="#", sep=";", header=None)

print("type(df.values):", type(df.values))
print("df.values.shape:", df.values.shape)

T = df.values[:, 0] # first column
X = df.values[:, 1] # second column
Y = df.values[:, 2] # third column

print("T.shape:", T.shape)

plt.figure()  # create an empty plotting window
plt.plot(T, X) # plot X(T)
plt.xlabel("time [s]")
plt.ylabel("X displ. [pixels]")
plt.title("Mass-spring experience", size=18)
plt.grid()
plt.show()    # to show the plot 
