#r visualization practice 01

# This is a very neat application of ggplot2 from tc
# https://tctcab.vercel.app/post/flower-in-10-lines/
# Special thanks to tc!
# it helps me review my understanding of how the grid works in the ggplot2 package
# 

# 加载ggplot2包
library(ggplot2) 
# 生成花瓣坐标数据
# x为1到8，y为300到600的序列，步长为1，expand.grid生成x和y的所有组合
df=expand.grid(x=(1:8),y=seq(300,600,1)) 
# 点的大小为y平方，组成花瓣自内而外从小到大的圆
df$size=df$y^2
# 中间的点，坐标为0, 0
df.middle=data.frame(x=0,y=0,size=600^2)
# 外围的点，x为0到8，步长1/3的序列，y为800，每个花瓣对应三个点
df.outer=data.frame(x=seq(0,8,1/3),y=800,size=400^2)


ggplot(df, aes(x, y, size = size)) +  # ggplot，映射数据x,y,size至图上x,y,size三个属性
  geom_point(color = "#FF3030") + # 花瓣
  geom_point(data = df.middle, color = "green") + # 芯
  geom_point(data = df.outer, color = "cyan") + # 外围的点为白色
  lims(x=c(0,8),y=c(0,1100))+ # 设定坐标轴范围
  scale_size(range = c(7, 20)) + # 设定点大小的范围
  coord_polar(start = .4)+ # 设定极坐标和原点与12点钟方向的偏移量
  theme_void()+theme(legend.position = "none") # 隐藏坐标轴和图例
