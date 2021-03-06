##################################################
####### C�mbio vs. Incerteza #####################

library(BETS)
library(ggplot2)


incerteza = BETS.get('ST_100.0')
cambio = BETS.get(3696, from='2000-01-01')

data = ts.intersect(incerteza, cambio)

df = data.frame(incerteza=data[,1], cambio=data[,2])

ggplot(df, aes(incerteza, cambio))+
  geom_point(stat='identity')+
  geom_smooth(method='lm')+
  xlab('Incerteza Econ�mica')+ylab('Taxa de C�mbio R$/US$')+
  labs(title='Incerteza Econ�mica vs. Taxa de C�mbio')
