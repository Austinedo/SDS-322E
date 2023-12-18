View(faithful)

boxplot(faithful$eruptions, 
        horizontal = TRUE, 
        main = 'Eruptions',
        xlab = 'length of eruption (minutes)')

boxplot(faithful$waiting, 
        horizontal = TRUE, 
        main = 'Waiting interval',
        xlab = 'length of the interval (minutes)')

mean(faithful$eruptions)
sd(faithful$eruptions)
summary(faithful$eruptions)

mean(faithful$waiting)
sd(faithful$waiting)
summary(faithful$waiting)

plot(faithful$eruptions, faithful$waiting,
     xlab='eruption duration (min)',
     ylab='waiting interval (min)')