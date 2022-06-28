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


coeff = 35.4    # coeff for conversion pixels->mm
X1 = X*coeff/1e3
Y1 = Y*coeff/1e3

fig = plt.figure(figsize=(8,8))  # create an empty plotting window
fig.suptitle("Mass-Spring exp.", fontsize=18)
plt.subplots_adjust(left=0.07, right=0.95, bottom=0.05, top=0.9, hspace=0.3)

plt.subplot(2,1,1)

plt.plot(T, X1, "b", label="X disp.") # plot of X1 vs T
plt.plot(T, Y1, "m", label="Y disp.") # plot of Y1 vs T
plt.xlabel("time [s]")
plt.ylabel("target disp. [m]")
plt.legend(loc="upper left")
plt.grid()

plt.subplot(2,1,2)
plt.gca().set_aspect('equal')
plt.title("Target trajectory")
plt.plot(X1, Y1, "g", label="trajectory")
plt.xlabel("X displ. [m]")
plt.ylabel("Y displ. [m]")
plt.xlim(Y1.min(), Y1.max())
plt.grid()
plt.legend(loc="upper left")

plt.savefig("massSpring.pdf")
plt.savefig("massSpring.png")
plt.show()    # montre la fenêtre de tracé
