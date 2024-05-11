

# Cargar bibliotecas necesarias
library(ggplot2)
library(gridExtra)


# Generar datos simulados
set.seed(2512)
x <-  runif(300, min=0, max=1) # X ~ Unif(0,1) n=300
x <- x[order(x)]

# Errores
eps <- rnorm(300, sd = 1.5)
# Valores reales y simulados
y.true <- 2 + 10*x
y.obs <- y.true + eps



# Visualizar los datos
data <- data.frame(x, y.obs, y.true)
ggplot(data = data) +
  geom_point(aes(x = x, y = y.obs, color = "Observaciones"), shape = 20, size = 2) +
  geom_line(aes(x = x, y = y.true, color = "Función Real"), linewidth = 1) +
  scale_color_manual(values = c("Observaciones" = "steelblue", "Función Real" = "coral")) +
  labs(title = "Datos Simulados",
       x = "x",
       y = "y",
       color = NULL) +
  theme_light() +
  theme(plot.title = element_text(size = 14),
        legend.position = c(0.15, 0.85),  
        legend.background = element_rect(fill = "white", colour = "black")) 






# Ajustar un modelo de regresión lineal
model <- lm(y.obs ~ x, data = data)
model$coefficients

x.pred <- seq(0, 1, length.out = 300)
y.pred <- predict(model, newdata = data.frame(x = x.pred))



data.model <- data.frame(x, y.obs, y.true, x.pred, y.pred)
ggplot(data = data.model) +
  geom_point(aes(x = x, y = y.obs, color = "Observaciones"), shape = 20, size = 2) +
  geom_line(aes(x = x, y = y.true, color = "Función Real"), linewidth = 1) +
  geom_path(aes(x = x.pred, y = y.pred, color = "Predicción"), size = 1) +
  scale_color_manual(values = c("Observaciones" = "steelblue", 
                                "Predicción" = "coral",
                                "Función Real" = "palegreen3")) +
  labs(title = "Regresión Lineal",
       x = "x",
       y = "y",
       color = NULL) +
  theme_light() +
  theme(plot.title = element_text(size = 14),
        legend.position = c(0.18, 0.85),  
        legend.background = element_rect(fill = "white", colour = "gray50")) 
# ggsave("../graphs/LinearModel1.pdf", width = 10, height = 6, dpi = 300)



residuals <- resid(model)
# Crear gráfico de residuos
plot1 <- ggplot(data, aes(x = fitted(model), y = residuals)) +
  geom_point(color = "steelblue") + 
  geom_hline(yintercept = 0, linetype = "dashed", color = "coral2", linewidth=1) +
  labs(title = "Residuos",
       x = "Valores ajustados",
       y = "Residuos",
       color = NULL) +
  theme_light()


plot2 <- ggplot() +
  stat_qq(aes(sample = residuals), color = "steelblue") +
  labs(title = "Diagrama Q-Q de los Residuos",
       x = "Cuantiles teóricos",
       y = "Residuos estandarizados",
       color = NULL) +
  theme_light()

plot <- grid.arrange(plot1, plot2,nrow = 1, ncol = 2)
print(plot)
# ggsave("../graphs/LinearModel2.pdf", plot, width = 10, height = 4, dpi = 300)



