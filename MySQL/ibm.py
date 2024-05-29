import csv, sqlite3
import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns


data = pd.read_csv('./data.csv')
conn = sqlite3.connect('MyData.db')
df = pd.read_sql('SELECT * FROM Information', conn)
plot = sns.swarmplot(x="Duration", y="Calories", data=df)
plt.step(plot.get_xticklabels(), rotation=70)
plt.title('Sodium Content')

plt.show()