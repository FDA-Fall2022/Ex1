# Ex.1 Data Import / Export

# 1.	從TEJ中下載2016-2021的台灣所有上市股票的每月月底股價/在外流通股數，計算股票的每月報酬率以及市值。(資料框名稱: monthlyReturns)
# 2.	從TEJ中下載2016-2021的台灣所有上市股票的每日報酬率。 (資料框名稱: dailyReturns)
# 3.	從TEJ中下載2014-2020的每年年末台灣所有上市股票的財務數據 (累計值，下載ROA, 財務槓桿率, 總資本(book value) )。(資料框名稱: FS)
# 4.	下載2014-2020年度的所有上市公司治理評鑑分數。(資料框名稱: ratings)
# 5.	使用summary() 計算1. 數據中的每月報酬率平均數，2. 數據中的每日報酬率平均數3. 數據中的ROA的平均數，並與答案驗證。
# 6.	將所有資料存在同一個workspace之中，存成TEJbasicdata.rdata，將結果存在自己電腦之中。


library(tidyverse)
library(naniar)

workDirectory <- "D:/OneDrive/Teaching/Financial Data Analytics/Exercises/RawData/"

monthlyReturns <- read_csv(paste0(workDirectory, "monthlyReturns.csv") )
dailyReturns <- read_csv( paste0(workDirectory, "dailyReturns.csv"))
FS <- read_csv( paste0(workDirectory, "FS.csv") )
ratings <- read_csv( paste0(workDirectory, "ratings.csv"))

summary(FS$R11U)  
summary(monthlyReturns$ROI)    
summary(dailyReturns$ROIA)    

save.image(TEJbasicdata.rdata)

