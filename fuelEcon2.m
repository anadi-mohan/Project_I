dat = datastore('./fuelEconomy2.txt')
dat.ReadSize = 362
data = read(dat)
[gNum gName] = findgroups(data.NumCyl);
avgMPG = splitapply(@mean,data.CombinedMPG,gNum);
bar(avgMPG)
ax=gca
b=gcf
ax.XTickLabel = gName;
ax.XLabel.String = "Number of Cylinders"
ax.Title.String = 'Average MPG'
b.Color = [0.81 0.87 0.9];
ax.Children.FaceColor = [0 0.31 0.42];
ax.Color = [0.81 0.87 0.9];
ax.YGrid = 'on'
ax.GridColor = 'w'
ax.Box = 'off'
ax.YAxisLocation = 'right'