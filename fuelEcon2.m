dat = datastore('./fuelEconomy2.txt')
dat.ReadSize = 362
data = read(dat)
[gNum gName] = findgroups(data.NumCyl);
avgMPG = splitapply(@mean,data.CombinedMPG,gNum);
bar(avgMPG)
ax=gca
b=gcf
%ax.xTickLabel = gName;
.XLabel = 'Number of Cylinders'
ax.title = 'Average MPG'
b.color = [0.81 0.87 0.9];
ax.color = [0.81 0.87 0.9];