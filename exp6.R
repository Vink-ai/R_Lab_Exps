pulse <- read.table("ms212.txt", header=TRUE)
pulse_fit <- lm(Pulse1 ~ Age+Weight+Height, data=pulse)
summary(pulse_fit)

pulse$Exercise <- as.factor(pulse$Exercise)
pulse_fit2 <- lm(Pulse1 ~ Age+Weight+Height+Exercise, data=pulse)
summary(pulse_fit2)

pulse$Ran <- as.factor(pulse$Ran)
pulse_fit3 <- lm(Pulse2~Pulse1+Ran, data=pulse)
aov(pulse_fit3)

library(effects)
plot(allEffects(pulse_fit3))
pulse_fit4 <- lm(Pulse2~Pulse1*Ran, data=pulse)
aov(pulse_fit4)

library(effects)
plot(allEffects(pulse_fit4))
pulse_fit5 <- lm(Pulse2 ~ Pulse1 + Ran + Alcohol + Smokes + Exercise, data=pulse)
aov(pulse_fit5)

fit6 <- glm(Ran ~ Pulse2, data=pulse, family=binomial)
summary(fit6)
library(visreg)
visreg(fit6, scale="response")

