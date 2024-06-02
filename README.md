# Modelos Lineal Generalizados

## Resumen
Las técnicas de predicción más utilizadas hoy en día se basan en modelos lineales (LM), que son sencillas de aplicar y de interpretar. Sin embargo, pueden tener limitaciones significativas en términos de poder predictivo debido a que el supuesto de linealidad es casi siempre una aproximación y, a veces, una aproximación deficiente.

Los modelos lineales generalizados (GLM) son una extensión de los LM a situaciones más generales en las que se considera una transformación del predictor lineal mediante una función conocida. Pero en la práctica podría darse otro tipo de relaciones difíciles de estimar con estos modelos. Los modelos aditivos generalizados (GAM) son modelos GLM en los que parte del predictor lineal se especifica como una suma de funciones suavizadas de las variables predictoras.

En este trabajo se pretende estudiar alternativas flexibles a los modelos GLM, junto con las funciones suaves más utilizadas, los splines cúbicos y suavizados. Asimismo, se estudia una aplicación práctica de los modelos GAM a datos de secuenciación de ARN utilizando paquetes existentes de R.

**Palabras clave:** Regresión Lineal; Suavizado Multivariante; Splines; Validación Cruzada.

## Abstract

The most commonly used prediction techniques today are based on linear models (LM), which are simple to apply and interpret. However, they can have significant limitations in terms of predictive power because the assumption of linearity is almost always an approximation and sometimes a poor one.

Generalized linear models (GLM) are an extension of LMs to more general situations in which a transformation of the linear predictor is considered through a known function. However, in practice, there might be other types of relationships that are difficult to estimate with these models. Generalized additive models (GAM) are GLMs in which part of the linear predictor is specified as a sum of smoothed functions of the predictor variables.

This work aims to study flexible alternatives to GLM models, along with the most commonly used smooth functions, cubic and smoothed splines. Additionally, a practical application of the GAM models to RNA sequencing data is examined using existing R packages.

**Keywords** Linear Regression; Multivariate Smoothing; Splines; Cross-Validation.