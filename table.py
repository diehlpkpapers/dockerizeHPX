import csv
import numpy as np

d_sing = []

with open('singularity.csv', newline='') as csvfile:
    spamreader = csv.reader(csvfile, delimiter=' ', quotechar='|')
    for row in spamreader:
        d_sing.append(float(row[0]))

print(len(d_sing))
print(min(d_sing))
print(np.median(d_sing))
print(max(d_sing))
print(np.std(d_sing))
