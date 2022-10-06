nums <- c(10, 94, 32, 19, 55, 35, 20, 48, 68, 24, 18, 83, 30, 62, 85, 50, 20, 90, 60, 14, 92, 20, 15, 58, 75, 16, 48, 81, 79, 46)

# Questão 6

nums_ordenados <- sort(nums)

freq_absoluta_01 <- length(nums[nums == 10])
freq_absoluta_02 <- length(nums[nums == 14])
freq_absoluta_03 <- length(nums[nums == 15])
freq_absoluta_04 <- length(nums[nums == 16])
freq_absoluta_05 <- length(nums[nums == 18])
freq_absoluta_06 <- length(nums[nums == 19])
freq_absoluta_07 <- length(nums[nums == 20])
freq_absoluta_08 <- length(nums[nums == 24])
freq_absoluta_09 <- length(nums[nums == 30])
freq_absoluta_10 <- length(nums[nums == 32])
freq_absoluta_11 <- length(nums[nums == 35])
freq_absoluta_12 <- length(nums[nums == 46])
freq_absoluta_13 <- length(nums[nums == 48])
freq_absoluta_14 <- length(nums[nums == 50])
freq_absoluta_15 <- length(nums[nums == 55])
freq_absoluta_16 <- length(nums[nums == 58])
freq_absoluta_17 <- length(nums[nums == 60])
freq_absoluta_18 <- length(nums[nums == 62])
freq_absoluta_19 <- length(nums[nums == 68])
freq_absoluta_20 <- length(nums[nums == 75])
freq_absoluta_21 <- length(nums[nums == 79])
freq_absoluta_22 <- length(nums[nums == 81])
freq_absoluta_23 <- length(nums[nums == 83])
freq_absoluta_24 <- length(nums[nums == 85])
freq_absoluta_25 <- length(nums[nums == 90])
freq_absoluta_26 <- length(nums[nums == 92])
freq_absoluta_27 <- length(nums[nums == 94])

freq_absoluta <- c(freq_absoluta_01, freq_absoluta_02, freq_absoluta_03, freq_absoluta_04, 
                   freq_absoluta_05, freq_absoluta_06, freq_absoluta_07, freq_absoluta_08, 
                   freq_absoluta_09, freq_absoluta_10, freq_absoluta_11, freq_absoluta_12, 
                   freq_absoluta_13, freq_absoluta_14, freq_absoluta_15, freq_absoluta_16, 
                   freq_absoluta_17, freq_absoluta_18, freq_absoluta_19, freq_absoluta_20, 
                   freq_absoluta_21, freq_absoluta_22, freq_absoluta_23, freq_absoluta_24, 
                   freq_absoluta_25, freq_absoluta_26, freq_absoluta_27)

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
                             freq_absoluta_acumulada_27)

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
                   freq_relativa_27)

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
                             freq_relativa_acumulada_27)


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
                     freq_percentual_27)

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
                               freq_percentual_acumulada_27)


col_1 <- freq_absoluta
col_2 <- freq_absoluta_acumulada
col_3 <- freq_relativa
col_4 <- freq_relativa_acumulada
col_5 <- freq_percentual
col_6 <- freq_percentual_acumulada

tabela <- data.frame(col_1, col_2, col_3, col_4, col_5, col_6)
colnames(tabela) <- c("Absoluta", "Absoluta Acumulada", "Relativa", "Relativa Acumulada", "Percentual", "Percentual Acumulada")
tabela

# Questão 7
#install.packages("arm")

par(mar = c(3,2,1,1))
conjunto = unique(nums_ordenados)
freq = cbind(conjunto, freq_absoluta)
suppressWarnings(suppressMessages(library("arm")))
discrete.histogram(nums, freq = TRUE, xlab = "", bar.width = 0.8)
lines(freq, type = "b", lwd = 3)
# Podemos constar que nosso conjunto de data é bimodal assimétrico.

