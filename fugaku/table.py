import csv
import numpy as np

d_sing = []
d_reg = []

with open('singularity.csv', newline='') as csvfile:
    spamreader = csv.reader(csvfile, delimiter=' ', quotechar='|')
    for row in spamreader:
        d_sing.append(float(row[0]))

with open('regular.csv', newline='') as csvfile:
    spamreader = csv.reader(csvfile, delimiter=' ', quotechar='|')
    for row in spamreader:
        d_reg.append(float(row[0]))

print("singularity")
print("Elements:",len(d_sing))
print("Min",min(d_sing))
print("Median",np.median(d_sing))
print("Max",max(d_sing))
print("Average",np.mean(d_sing))
print("STD",np.std(d_sing))
print("------------------")
print("regular")
print("Elements:",len(d_reg))
print("Min",min(d_reg))
print("Median",np.median(d_reg))
print("Max",max(d_reg))
print("Average",np.mean(d_reg))
print("STD",np.std(d_reg))
print("------------------")
