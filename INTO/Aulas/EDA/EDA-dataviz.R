# dados -------------------------------------------------------------------
set.seed(1)
LCA <- c(rnorm(30, 2.5 ,1), rnorm(30, 3.5, 1)) # compr. LCA cm
TP <- c(rnorm(30, 22.5 ,2), rnorm(30, 27.5, 3)) # compr Tendao Patelar mm
Genero <- gl(2, 30, labels = c("M", "F"))
Idade <- round(rnorm(60, 35, 10))
dados <- data.frame(LCA,TP, Genero, Idade)


# graficos ----------------------------------------------------------------

library(ggplot2)

plotbasico <- ggplot(dados, aes(LCA, TP)) +
  geom_point() +
  labs(x = "Comprimento LCA (cm)", y = "Comprimento Tendão Patelar (mm)") +
  theme(legend.position = "bottom")
ggsave("EDA-corr1.png")

plotgen <- ggplot(dados, aes(LCA, TP, shape = Genero)) +
  geom_point() +
  labs(x = "Comprimento LCA (cm)", y = "Comprimento Tendão Patelar (mm)") +
  theme(legend.position = "bottom")
ggsave("EDA-corr2.png")

plotgenidade <- ggplot(dados, aes(LCA, TP, shape = Genero, col = Idade)) +
  geom_point() +
  labs(x = "Comprimento LCA (cm)", y = "Comprimento Tendão Patelar (mm)") +
  theme(legend.position = "bottom")
ggsave("EDA-corr3.png")
