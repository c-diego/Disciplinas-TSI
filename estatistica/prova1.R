## Diego Corte Costa
## a2314428
## Prova B

nums <- c(8.3, 3.2, 8.8, 9.4, 5.4, 7.8, 3.9, 5.6, 8.1, -2.5, 10.6, 9.8, -1.6, 
          0.6, 9.0, 2.3, 6.4, 4.0, 5.8, 5.4, 4.0, 17.7, 6.1, 0.7, 6.8, 2.6, 9.0, 
          11.6, 2.2, 9.4, -0.3, 5.3, 11.7, 1.1, 1.2, -0.9, -0.5, -0.4, 3.0, 2.8, 
          -2.4, 0.0, 7.6, 3.4, 5.4)


## 1 a)
## Média
nums_size <- length(nums)
nums_sum <- sum(nums)
media <- nums_sum/nums_size
media

## Mediana
mediana <- median(nums)
mediana

## Moda
matrix <- as.matrix(table(nums))
moda <- subset(matrix, matrix[, 1] == max(matrix[, 1]))
moda

## 1 b)
## Variância
variancia <- var(nums)
variancia

## Desvio Padrão
desvio_padrao <- sd(nums)
desvio_padrao

## Coeficiente de variação
coeficiente_variacao <- desvio_padrao/media*100
coeficiente_variacao

## 1 c)
## Quartis
quartis <- quantile(nums)
quartis

## Amplitude interquartílica
amplitude <- quartis[4] - quartis[2]
amplitude

## Limite Inferior
limite_inferior <- as.numeric(quartis[2] - 1.5 * (quartis[4] - quartis[2]))
limite_inferior

## Limite Superior
limite_superior <- as.numeric(quartis[4] + 1.5 * (quartis[4] - quartis[2]))
limite_superior

## 1 d)
par(mar = c(3,2,1,1))
boxplot(nums)
## Há uma disparidade muito grande no último quartil, ou seja, a maior parte dos 
## nossos dados encontram-se no quarto quartil. Observando o gráfico, podemos 
## inferir que o valor da grande maioria da nossa população está acima de 5

## 1 e)
#install.packages("moments")
library(moments)
assimetria <- skewness(nums)
assimetria
## A distribuição é assimétrica positiva (à direita), pois Ass > 0

## 1 f)
nums_ordenados <- sort(nums)
setnums <- unique(nums_ordenados);
setnums

freq_absoluta_01 <- length(nums[nums == -2.5])
freq_absoluta_02 <- length(nums[nums == -2.4])
freq_absoluta_03 <- length(nums[nums == -1.6])
freq_absoluta_04 <- length(nums[nums == -0.9])
freq_absoluta_05 <- length(nums[nums == -0.5])
freq_absoluta_06 <- length(nums[nums == -0.4])
freq_absoluta_07 <- length(nums[nums == -0.3])
freq_absoluta_08 <- length(nums[nums == 0.0 ])
freq_absoluta_09 <- length(nums[nums == 0.6 ])
freq_absoluta_10 <- length(nums[nums == 0.7 ])
freq_absoluta_11 <- length(nums[nums == 1.1 ])
freq_absoluta_12 <- length(nums[nums == 1.2 ])
freq_absoluta_13 <- length(nums[nums == 2.2 ])
freq_absoluta_14 <- length(nums[nums == 2.3 ])
freq_absoluta_15 <- length(nums[nums == 2.6 ])
freq_absoluta_16 <- length(nums[nums == 2.8 ])
freq_absoluta_17 <- length(nums[nums == 3.0 ])
freq_absoluta_18 <- length(nums[nums == 3.2 ])
freq_absoluta_19 <- length(nums[nums == 3.4 ])
freq_absoluta_20 <- length(nums[nums == 3.9 ])
freq_absoluta_21 <- length(nums[nums == 4.0 ])
freq_absoluta_22 <- length(nums[nums == 5.3 ])
freq_absoluta_23 <- length(nums[nums == 5.4 ])
freq_absoluta_24 <- length(nums[nums == 5.6 ])
freq_absoluta_25 <- length(nums[nums == 5.8 ])
freq_absoluta_26 <- length(nums[nums == 6.1 ])
freq_absoluta_27 <- length(nums[nums == 6.4 ])
freq_absoluta_28 <- length(nums[nums == 6.8 ])
freq_absoluta_29 <- length(nums[nums == 7.6 ])
freq_absoluta_30 <- length(nums[nums == 7.8 ])
freq_absoluta_31 <- length(nums[nums == 8.1 ])
freq_absoluta_32 <- length(nums[nums == 8.3 ])
freq_absoluta_33 <- length(nums[nums == 8.8 ])
freq_absoluta_34 <- length(nums[nums == 9.0 ])
freq_absoluta_35 <- length(nums[nums == 9.4 ])
freq_absoluta_36 <- length(nums[nums == 9.8 ])
freq_absoluta_37 <- length(nums[nums == 10.6])
freq_absoluta_38 <- length(nums[nums == 11.6])
freq_absoluta_39 <- length(nums[nums == 11.7])
freq_absoluta_40 <- length(nums[nums == 17.7])

freq_absoluta <- c(freq_absoluta_01, freq_absoluta_02, freq_absoluta_03, freq_absoluta_04, 
                   freq_absoluta_05, freq_absoluta_06, freq_absoluta_07, freq_absoluta_08, 
                   freq_absoluta_09, freq_absoluta_10, freq_absoluta_11, freq_absoluta_12, 
                   freq_absoluta_13, freq_absoluta_14, freq_absoluta_15, freq_absoluta_16, 
                   freq_absoluta_17, freq_absoluta_18, freq_absoluta_19, freq_absoluta_20, 
                   freq_absoluta_21, freq_absoluta_22, freq_absoluta_23, freq_absoluta_24, 
                   freq_absoluta_25, freq_absoluta_26, freq_absoluta_27, freq_absoluta_28,
                   freq_absoluta_29, freq_absoluta_30, freq_absoluta_31, freq_absoluta_32,
                   freq_absoluta_33, freq_absoluta_34, freq_absoluta_35, freq_absoluta_36,
                   freq_absoluta_37, freq_absoluta_38, freq_absoluta_39, freq_absoluta_40)


freq_absoluta_acumulada_01 <- freq_absoluta_01
freq_absoluta_acumulada_02 <- freq_absoluta_acumulada_01 + freq_absoluta_02
freq_absoluta_acumulada_03 <- freq_absoluta_acumulada_02 + freq_absoluta_03
freq_absoluta_acumulada_04 <- freq_absoluta_acumulada_03 + freq_absoluta_04
freq_absoluta_acumulada_05 <- freq_absoluta_acumulada_04 + freq_absoluta_05
freq_absoluta_acumulada_06 <- freq_absoluta_acumulada_05 + freq_absoluta_06
freq_absoluta_acumulada_07 <- freq_absoluta_acumulada_06 + freq_absoluta_07
freq_absoluta_acumulada_08 <- freq_absoluta_acumulada_07 + freq_absoluta_08
freq_absoluta_acumulada_09 <- freq_absoluta_acumulada_08 + freq_absoluta_09
freq_absoluta_acumulada_10 <- freq_absoluta_acumulada_09 + freq_absoluta_10
freq_absoluta_acumulada_11 <- freq_absoluta_acumulada_10 + freq_absoluta_11
freq_absoluta_acumulada_12 <- freq_absoluta_acumulada_11 + freq_absoluta_12
freq_absoluta_acumulada_13 <- freq_absoluta_acumulada_12 + freq_absoluta_13
freq_absoluta_acumulada_14 <- freq_absoluta_acumulada_13 + freq_absoluta_14
freq_absoluta_acumulada_15 <- freq_absoluta_acumulada_14 + freq_absoluta_15
freq_absoluta_acumulada_16 <- freq_absoluta_acumulada_15 + freq_absoluta_16
freq_absoluta_acumulada_17 <- freq_absoluta_acumulada_16 + freq_absoluta_17
freq_absoluta_acumulada_18 <- freq_absoluta_acumulada_17 + freq_absoluta_18
freq_absoluta_acumulada_19 <- freq_absoluta_acumulada_18 + freq_absoluta_19
freq_absoluta_acumulada_20 <- freq_absoluta_acumulada_19 + freq_absoluta_20
freq_absoluta_acumulada_21 <- freq_absoluta_acumulada_20 + freq_absoluta_21
freq_absoluta_acumulada_22 <- freq_absoluta_acumulada_21 + freq_absoluta_22
freq_absoluta_acumulada_23 <- freq_absoluta_acumulada_22 + freq_absoluta_23
freq_absoluta_acumulada_24 <- freq_absoluta_acumulada_23 + freq_absoluta_24
freq_absoluta_acumulada_25 <- freq_absoluta_acumulada_24 + freq_absoluta_25
freq_absoluta_acumulada_26 <- freq_absoluta_acumulada_25 + freq_absoluta_26
freq_absoluta_acumulada_27 <- freq_absoluta_acumulada_26 + freq_absoluta_27
freq_absoluta_acumulada_28 <- freq_absoluta_acumulada_27 + freq_absoluta_28
freq_absoluta_acumulada_29 <- freq_absoluta_acumulada_28 + freq_absoluta_29
freq_absoluta_acumulada_30 <- freq_absoluta_acumulada_29 + freq_absoluta_30
freq_absoluta_acumulada_31 <- freq_absoluta_acumulada_30 + freq_absoluta_31
freq_absoluta_acumulada_32 <- freq_absoluta_acumulada_31 + freq_absoluta_32
freq_absoluta_acumulada_33 <- freq_absoluta_acumulada_32 + freq_absoluta_33
freq_absoluta_acumulada_34 <- freq_absoluta_acumulada_33 + freq_absoluta_34
freq_absoluta_acumulada_35 <- freq_absoluta_acumulada_34 + freq_absoluta_35
freq_absoluta_acumulada_36 <- freq_absoluta_acumulada_35 + freq_absoluta_36
freq_absoluta_acumulada_37 <- freq_absoluta_acumulada_36 + freq_absoluta_37
freq_absoluta_acumulada_38 <- freq_absoluta_acumulada_37 + freq_absoluta_38
freq_absoluta_acumulada_39 <- freq_absoluta_acumulada_38 + freq_absoluta_38
freq_absoluta_acumulada_40 <- freq_absoluta_acumulada_39 + freq_absoluta_40

freq_absoluta_acumulada <- c(freq_absoluta_acumulada_01, freq_absoluta_acumulada_02, 
                             freq_absoluta_acumulada_03, freq_absoluta_acumulada_04, 
                             freq_absoluta_acumulada_05, freq_absoluta_acumulada_06, 
                             freq_absoluta_acumulada_07, freq_absoluta_acumulada_08, 
                             freq_absoluta_acumulada_09, freq_absoluta_acumulada_10, 
                             freq_absoluta_acumulada_11, freq_absoluta_acumulada_12, 
                             freq_absoluta_acumulada_13, freq_absoluta_acumulada_14, 
                             freq_absoluta_acumulada_15, freq_absoluta_acumulada_16, 
                             freq_absoluta_acumulada_17, freq_absoluta_acumulada_18, 
                             freq_absoluta_acumulada_19, freq_absoluta_acumulada_20, 
                             freq_absoluta_acumulada_21, freq_absoluta_acumulada_22, 
                             freq_absoluta_acumulada_23, freq_absoluta_acumulada_24, 
                             freq_absoluta_acumulada_25, freq_absoluta_acumulada_26, 
                             freq_absoluta_acumulada_27, freq_absoluta_acumulada_28,
                             freq_absoluta_acumulada_29, freq_absoluta_acumulada_30, 
                             freq_absoluta_acumulada_31, freq_absoluta_acumulada_32,
                             freq_absoluta_acumulada_33, freq_absoluta_acumulada_34, 
                             freq_absoluta_acumulada_35, freq_absoluta_acumulada_36,
                             freq_absoluta_acumulada_37, freq_absoluta_acumulada_38, 
                             freq_absoluta_acumulada_39, freq_absoluta_acumulada_40)

freq_absoluta_acumulada

freq_relativa_01 <- freq_absoluta_01/(length(nums))
freq_relativa_02 <- freq_absoluta_02/(length(nums))
freq_relativa_03 <- freq_absoluta_03/(length(nums))
freq_relativa_04 <- freq_absoluta_04/(length(nums))
freq_relativa_05 <- freq_absoluta_05/(length(nums))
freq_relativa_06 <- freq_absoluta_06/(length(nums))
freq_relativa_07 <- freq_absoluta_07/(length(nums))
freq_relativa_08 <- freq_absoluta_08/(length(nums))
freq_relativa_09 <- freq_absoluta_09/(length(nums))
freq_relativa_10 <- freq_absoluta_10/(length(nums))
freq_relativa_11 <- freq_absoluta_11/(length(nums))
freq_relativa_12 <- freq_absoluta_12/(length(nums))
freq_relativa_13 <- freq_absoluta_13/(length(nums))
freq_relativa_14 <- freq_absoluta_14/(length(nums))
freq_relativa_15 <- freq_absoluta_15/(length(nums))
freq_relativa_16 <- freq_absoluta_16/(length(nums))
freq_relativa_17 <- freq_absoluta_17/(length(nums))
freq_relativa_18 <- freq_absoluta_18/(length(nums))
freq_relativa_19 <- freq_absoluta_19/(length(nums))
freq_relativa_20 <- freq_absoluta_20/(length(nums))
freq_relativa_21 <- freq_absoluta_21/(length(nums))
freq_relativa_22 <- freq_absoluta_22/(length(nums))
freq_relativa_23 <- freq_absoluta_23/(length(nums))
freq_relativa_24 <- freq_absoluta_24/(length(nums))
freq_relativa_25 <- freq_absoluta_25/(length(nums))
freq_relativa_26 <- freq_absoluta_26/(length(nums))
freq_relativa_27 <- freq_absoluta_27/(length(nums))
freq_relativa_28 <- freq_absoluta_28/(length(nums))
freq_relativa_29 <- freq_absoluta_29/(length(nums))
freq_relativa_30 <- freq_absoluta_30/(length(nums))
freq_relativa_31 <- freq_absoluta_31/(length(nums))
freq_relativa_32 <- freq_absoluta_32/(length(nums))
freq_relativa_33 <- freq_absoluta_33/(length(nums))
freq_relativa_34 <- freq_absoluta_34/(length(nums))
freq_relativa_35 <- freq_absoluta_35/(length(nums))
freq_relativa_36 <- freq_absoluta_36/(length(nums))
freq_relativa_37 <- freq_absoluta_37/(length(nums))
freq_relativa_38 <- freq_absoluta_38/(length(nums))
freq_relativa_39 <- freq_absoluta_39/(length(nums))
freq_relativa_40 <- freq_absoluta_40/(length(nums))

options(digits = 2)
freq_relativa <- c(freq_relativa_01, freq_relativa_02, 
                   freq_relativa_03, freq_relativa_04, 
                   freq_relativa_05, freq_relativa_06, 
                   freq_relativa_07, freq_relativa_08, 
                   freq_relativa_09, freq_relativa_10, 
                   freq_relativa_11, freq_relativa_12, 
                   freq_relativa_13, freq_relativa_14, 
                   freq_relativa_15, freq_relativa_16, 
                   freq_relativa_17, freq_relativa_18, 
                   freq_relativa_19, freq_relativa_20, 
                   freq_relativa_21, freq_relativa_22, 
                   freq_relativa_23, freq_relativa_24, 
                   freq_relativa_25, freq_relativa_26, 
                   freq_relativa_27, freq_relativa_28,
                   freq_relativa_29, freq_relativa_30, 
                   freq_relativa_31, freq_relativa_32,
                   freq_relativa_33, freq_relativa_34, 
                   freq_relativa_35, freq_relativa_36,
                   freq_relativa_37, freq_relativa_38, 
                   freq_relativa_39, freq_relativa_40)

freq_relativa

freq_relativa_acumulada_01 <- freq_absoluta_acumulada_01/(length(nums))
freq_relativa_acumulada_02 <- freq_absoluta_acumulada_02/(length(nums))
freq_relativa_acumulada_03 <- freq_absoluta_acumulada_03/(length(nums))
freq_relativa_acumulada_04 <- freq_absoluta_acumulada_04/(length(nums))
freq_relativa_acumulada_05 <- freq_absoluta_acumulada_05/(length(nums))
freq_relativa_acumulada_06 <- freq_absoluta_acumulada_06/(length(nums))
freq_relativa_acumulada_07 <- freq_absoluta_acumulada_07/(length(nums))
freq_relativa_acumulada_08 <- freq_absoluta_acumulada_08/(length(nums))
freq_relativa_acumulada_09 <- freq_absoluta_acumulada_09/(length(nums))
freq_relativa_acumulada_10 <- freq_absoluta_acumulada_10/(length(nums))
freq_relativa_acumulada_11 <- freq_absoluta_acumulada_11/(length(nums))
freq_relativa_acumulada_12 <- freq_absoluta_acumulada_12/(length(nums))
freq_relativa_acumulada_13 <- freq_absoluta_acumulada_13/(length(nums))
freq_relativa_acumulada_14 <- freq_absoluta_acumulada_14/(length(nums))
freq_relativa_acumulada_15 <- freq_absoluta_acumulada_15/(length(nums))
freq_relativa_acumulada_16 <- freq_absoluta_acumulada_16/(length(nums))
freq_relativa_acumulada_17 <- freq_absoluta_acumulada_17/(length(nums))
freq_relativa_acumulada_18 <- freq_absoluta_acumulada_18/(length(nums))
freq_relativa_acumulada_19 <- freq_absoluta_acumulada_19/(length(nums))
freq_relativa_acumulada_20 <- freq_absoluta_acumulada_20/(length(nums))
freq_relativa_acumulada_21 <- freq_absoluta_acumulada_21/(length(nums))
freq_relativa_acumulada_22 <- freq_absoluta_acumulada_22/(length(nums))
freq_relativa_acumulada_23 <- freq_absoluta_acumulada_23/(length(nums))
freq_relativa_acumulada_24 <- freq_absoluta_acumulada_24/(length(nums))
freq_relativa_acumulada_25 <- freq_absoluta_acumulada_25/(length(nums))
freq_relativa_acumulada_26 <- freq_absoluta_acumulada_26/(length(nums))
freq_relativa_acumulada_27 <- freq_absoluta_acumulada_27/(length(nums))
freq_relativa_acumulada_28 <- freq_absoluta_acumulada_28/(length(nums))
freq_relativa_acumulada_29 <- freq_absoluta_acumulada_29/(length(nums))
freq_relativa_acumulada_30 <- freq_absoluta_acumulada_30/(length(nums))
freq_relativa_acumulada_31 <- freq_absoluta_acumulada_31/(length(nums))
freq_relativa_acumulada_32 <- freq_absoluta_acumulada_32/(length(nums))
freq_relativa_acumulada_33 <- freq_absoluta_acumulada_33/(length(nums))
freq_relativa_acumulada_34 <- freq_absoluta_acumulada_34/(length(nums))
freq_relativa_acumulada_35 <- freq_absoluta_acumulada_35/(length(nums))
freq_relativa_acumulada_36 <- freq_absoluta_acumulada_36/(length(nums))
freq_relativa_acumulada_37 <- freq_absoluta_acumulada_37/(length(nums))
freq_relativa_acumulada_38 <- freq_absoluta_acumulada_38/(length(nums))
freq_relativa_acumulada_39 <- freq_absoluta_acumulada_39/(length(nums))
freq_relativa_acumulada_40 <- freq_absoluta_acumulada_40/(length(nums))

options(digits = 2)
freq_relativa_acumulada <- c(freq_relativa_acumulada_01, freq_relativa_acumulada_02, 
                             freq_relativa_acumulada_03, freq_relativa_acumulada_04, 
                             freq_relativa_acumulada_05, freq_relativa_acumulada_06, 
                             freq_relativa_acumulada_07, freq_relativa_acumulada_08, 
                             freq_relativa_acumulada_09, freq_relativa_acumulada_10, 
                             freq_relativa_acumulada_11, freq_relativa_acumulada_12, 
                             freq_relativa_acumulada_13, freq_relativa_acumulada_14, 
                             freq_relativa_acumulada_15, freq_relativa_acumulada_16, 
                             freq_relativa_acumulada_17, freq_relativa_acumulada_18, 
                             freq_relativa_acumulada_19, freq_relativa_acumulada_20, 
                             freq_relativa_acumulada_21, freq_relativa_acumulada_22, 
                             freq_relativa_acumulada_23, freq_relativa_acumulada_24, 
                             freq_relativa_acumulada_25, freq_relativa_acumulada_26, 
                             freq_relativa_acumulada_27, freq_relativa_acumulada_28,
                             freq_relativa_acumulada_29, freq_relativa_acumulada_30, 
                             freq_relativa_acumulada_31, freq_relativa_acumulada_32,
                             freq_relativa_acumulada_33, freq_relativa_acumulada_34, 
                             freq_relativa_acumulada_35, freq_relativa_acumulada_36,
                             freq_relativa_acumulada_37, freq_relativa_acumulada_38, 
                             freq_relativa_acumulada_39, freq_relativa_acumulada_40)

freq_relativa_acumulada


freq_percentual_01 <- freq_relativa_01 * 100
freq_percentual_02 <- freq_relativa_02 * 100
freq_percentual_03 <- freq_relativa_03 * 100
freq_percentual_04 <- freq_relativa_04 * 100
freq_percentual_05 <- freq_relativa_05 * 100
freq_percentual_06 <- freq_relativa_06 * 100
freq_percentual_07 <- freq_relativa_07 * 100
freq_percentual_08 <- freq_relativa_08 * 100
freq_percentual_09 <- freq_relativa_09 * 100
freq_percentual_10 <- freq_relativa_10 * 100
freq_percentual_11 <- freq_relativa_11 * 100
freq_percentual_12 <- freq_relativa_12 * 100
freq_percentual_13 <- freq_relativa_13 * 100
freq_percentual_14 <- freq_relativa_14 * 100
freq_percentual_15 <- freq_relativa_15 * 100
freq_percentual_16 <- freq_relativa_16 * 100
freq_percentual_17 <- freq_relativa_17 * 100
freq_percentual_18 <- freq_relativa_18 * 100
freq_percentual_19 <- freq_relativa_19 * 100
freq_percentual_20 <- freq_relativa_20 * 100
freq_percentual_21 <- freq_relativa_21 * 100
freq_percentual_22 <- freq_relativa_22 * 100
freq_percentual_23 <- freq_relativa_23 * 100
freq_percentual_24 <- freq_relativa_24 * 100
freq_percentual_25 <- freq_relativa_25 * 100
freq_percentual_26 <- freq_relativa_26 * 100
freq_percentual_27 <- freq_relativa_27 * 100
freq_percentual_28 <- freq_relativa_28 * 100
freq_percentual_29 <- freq_relativa_29 * 100
freq_percentual_30 <- freq_relativa_30 * 100
freq_percentual_31 <- freq_relativa_31 * 100
freq_percentual_32 <- freq_relativa_32 * 100
freq_percentual_33 <- freq_relativa_33 * 100
freq_percentual_34 <- freq_relativa_34 * 100
freq_percentual_35 <- freq_relativa_35 * 100
freq_percentual_36 <- freq_relativa_36 * 100
freq_percentual_37 <- freq_relativa_37 * 100
freq_percentual_38 <- freq_relativa_38 * 100
freq_percentual_39 <- freq_relativa_39 * 100
freq_percentual_40 <- freq_relativa_40 * 100

options(digits = 2)
freq_percentual <- c(freq_percentual_01, freq_percentual_02, 
                     freq_percentual_03, freq_percentual_04, 
                     freq_percentual_05, freq_percentual_06, 
                     freq_percentual_07, freq_percentual_08, 
                     freq_percentual_09, freq_percentual_10, 
                     freq_percentual_11, freq_percentual_12, 
                     freq_percentual_13, freq_percentual_14, 
                     freq_percentual_15, freq_percentual_16, 
                     freq_percentual_17, freq_percentual_18, 
                     freq_percentual_19, freq_percentual_20, 
                     freq_percentual_21, freq_percentual_22, 
                     freq_percentual_23, freq_percentual_24, 
                     freq_percentual_25, freq_percentual_26, 
                     freq_percentual_27, freq_percentual_28,
                     freq_percentual_29, freq_percentual_30, 
                     freq_percentual_31, freq_percentual_32,
                     freq_percentual_33, freq_percentual_34, 
                     freq_percentual_35, freq_percentual_36,
                     freq_percentual_37, freq_percentual_38, 
                     freq_percentual_39, freq_percentual_40)

freq_percentual

freq_percentual_acumulada_01 <- freq_percentual_01
freq_percentual_acumulada_02 <- freq_percentual_acumulada_01 + freq_percentual_02
freq_percentual_acumulada_03 <- freq_percentual_acumulada_02 + freq_percentual_03
freq_percentual_acumulada_04 <- freq_percentual_acumulada_03 + freq_percentual_04
freq_percentual_acumulada_05 <- freq_percentual_acumulada_04 + freq_percentual_05
freq_percentual_acumulada_06 <- freq_percentual_acumulada_05 + freq_percentual_06
freq_percentual_acumulada_07 <- freq_percentual_acumulada_06 + freq_percentual_07
freq_percentual_acumulada_08 <- freq_percentual_acumulada_07 + freq_percentual_08
freq_percentual_acumulada_09 <- freq_percentual_acumulada_08 + freq_percentual_09
freq_percentual_acumulada_10 <- freq_percentual_acumulada_09 + freq_percentual_10
freq_percentual_acumulada_11 <- freq_percentual_acumulada_10 + freq_percentual_11
freq_percentual_acumulada_12 <- freq_percentual_acumulada_11 + freq_percentual_12
freq_percentual_acumulada_13 <- freq_percentual_acumulada_12 + freq_percentual_13
freq_percentual_acumulada_14 <- freq_percentual_acumulada_13 + freq_percentual_14
freq_percentual_acumulada_15 <- freq_percentual_acumulada_14 + freq_percentual_15
freq_percentual_acumulada_16 <- freq_percentual_acumulada_15 + freq_percentual_16
freq_percentual_acumulada_17 <- freq_percentual_acumulada_16 + freq_percentual_17
freq_percentual_acumulada_18 <- freq_percentual_acumulada_17 + freq_percentual_18
freq_percentual_acumulada_19 <- freq_percentual_acumulada_18 + freq_percentual_19
freq_percentual_acumulada_20 <- freq_percentual_acumulada_19 + freq_percentual_20
freq_percentual_acumulada_21 <- freq_percentual_acumulada_20 + freq_percentual_21
freq_percentual_acumulada_22 <- freq_percentual_acumulada_21 + freq_percentual_22
freq_percentual_acumulada_23 <- freq_percentual_acumulada_22 + freq_percentual_23
freq_percentual_acumulada_24 <- freq_percentual_acumulada_23 + freq_percentual_24
freq_percentual_acumulada_25 <- freq_percentual_acumulada_24 + freq_percentual_25
freq_percentual_acumulada_26 <- freq_percentual_acumulada_25 + freq_percentual_26
freq_percentual_acumulada_27 <- freq_percentual_acumulada_26 + freq_percentual_27
freq_percentual_acumulada_28 <- freq_percentual_acumulada_27 + freq_percentual_28
freq_percentual_acumulada_29 <- freq_percentual_acumulada_28 + freq_percentual_29
freq_percentual_acumulada_30 <- freq_percentual_acumulada_29 + freq_percentual_30
freq_percentual_acumulada_31 <- freq_percentual_acumulada_30 + freq_percentual_31
freq_percentual_acumulada_32 <- freq_percentual_acumulada_31 + freq_percentual_32
freq_percentual_acumulada_33 <- freq_percentual_acumulada_32 + freq_percentual_33
freq_percentual_acumulada_34 <- freq_percentual_acumulada_33 + freq_percentual_34
freq_percentual_acumulada_35 <- freq_percentual_acumulada_34 + freq_percentual_35
freq_percentual_acumulada_36 <- freq_percentual_acumulada_35 + freq_percentual_36
freq_percentual_acumulada_37 <- freq_percentual_acumulada_36 + freq_percentual_37
freq_percentual_acumulada_38 <- freq_percentual_acumulada_37 + freq_percentual_38
freq_percentual_acumulada_39 <- freq_percentual_acumulada_38 + freq_percentual_38
freq_percentual_acumulada_40 <- freq_percentual_acumulada_39 + freq_percentual_40

options(digits = 2)
freq_percentual_acumulada <- c(freq_percentual_acumulada_01, freq_percentual_acumulada_02, 
                               freq_percentual_acumulada_03, freq_percentual_acumulada_04, 
                               freq_percentual_acumulada_05, freq_percentual_acumulada_06, 
                               freq_percentual_acumulada_07, freq_percentual_acumulada_08, 
                               freq_percentual_acumulada_09, freq_percentual_acumulada_10, 
                               freq_percentual_acumulada_11, freq_percentual_acumulada_12, 
                               freq_percentual_acumulada_13, freq_percentual_acumulada_14, 
                               freq_percentual_acumulada_15, freq_percentual_acumulada_16, 
                               freq_percentual_acumulada_17, freq_percentual_acumulada_18, 
                               freq_percentual_acumulada_19, freq_percentual_acumulada_20, 
                               freq_percentual_acumulada_21, freq_percentual_acumulada_22, 
                               freq_percentual_acumulada_23, freq_percentual_acumulada_24, 
                               freq_percentual_acumulada_25, freq_percentual_acumulada_26, 
                               freq_percentual_acumulada_27, freq_percentual_acumulada_28,
                               freq_percentual_acumulada_29, freq_percentual_acumulada_30, 
                               freq_percentual_acumulada_31, freq_percentual_acumulada_32,
                               freq_percentual_acumulada_33, freq_percentual_acumulada_34, 
                               freq_percentual_acumulada_35, freq_percentual_acumulada_36,
                               freq_percentual_acumulada_37, freq_percentual_acumulada_38, 
                               freq_percentual_acumulada_39, freq_percentual_acumulada_40)

freq_percentual_acumulada


col_1 <- freq_absoluta
col_2 <- freq_absoluta_acumulada
col_3 <- freq_relativa
col_4 <- freq_relativa_acumulada
col_5 <- freq_percentual
col_6 <- freq_percentual_acumulada

tabela <- data.frame(col_1, col_2, col_3, col_4, col_5, col_6)
colnames(tabela) <- c("Absoluta", "Absoluta Acumulada", "Relativa", "Relativa Acumulada", "Percentual", "Percentual Acumulada")
tabela

# 1 g)
#install.packages("arm")

par(mar = c(3,2,1,1))
conjunto = unique(nums_ordenados)
freq = cbind(conjunto, freq_absoluta)
suppressWarnings(suppressMessages(library("arm")))
discrete.histogram(nums, freq = TRUE, xlab = "", bar.width = 0.8)
lines(freq, type = "b", lwd = 3)
# Nosso conjunto de data é unimodal. Ou seja, existe algum número que se repete
# mais que outros números.

# 2
options(digits=1)
grupo_1 <- 12
grupo_2 <- 22
grupo_3 <- 7
grupo_4 <- 29
populacao <- grupo_1 + grupo_2 + grupo_3 + grupo_4
tamanho_amostra = 25

proporcao_grupo_1 <- grupo_1/populacao
proporcao_grupo_2 <- grupo_2/populacao
proporcao_grupo_3 <- grupo_3/populacao
proporcao_grupo_4 <- grupo_4/populacao

tamanho_amostra_grupo_1 <- proporcao_grupo_1 * tamanho_amostra
tamanho_amostra_grupo_2 <- proporcao_grupo_2 * tamanho_amostra
tamanho_amostra_grupo_3 <- proporcao_grupo_3 * tamanho_amostra
tamanho_amostra_grupo_4 <- proporcao_grupo_4 * tamanho_amostra

c(tamanho_amostra_grupo_1, tamanho_amostra_grupo_2, tamanho_amostra_grupo_3, tamanho_amostra_grupo_4)

