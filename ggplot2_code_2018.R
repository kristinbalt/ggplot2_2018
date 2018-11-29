# Include libraries
library(ggplot2) 

######################################################################
# Example 1 - Scatterplot


# import data 'example1.csv'
data1<-read.csv("~/Documents/BU/R/ggplot2/data/example1.csv", header=T)

# scatterplot
p1<- ggplot(data1, aes(x=per.fny.reports, y=fny.cdc.cor))+
  geom_point()
p1

# add 2nd variable
p2<- ggplot(data1, aes())+
  geom_point(aes(x=per.fny.reports, y=fny.cdc.cor))+
  geom_point(aes(x=per.athena.reports, y=athena.cdc.cor))
p2

# distinguish colors
# http://html-color-codes.com/
p3<- ggplot(data1, aes())+
  geom_point(aes(x=per.fny.reports, y=fny.cdc.cor), color="#FF7270")+
  geom_point(aes(x=per.athena.reports, y=athena.cdc.cor), color="#008CB7")
p3

# add legend
p4<- ggplot(data1, aes())+
  geom_point(aes(x=per.fny.reports, y=fny.cdc.cor, color="FNY"))+
  geom_point(aes(x=per.athena.reports, y=athena.cdc.cor, color="ATH"))
p4

# add legend and specifiy colors
p5<- ggplot(data1, aes())+
  geom_point(aes(x=per.fny.reports, y=fny.cdc.cor, color="FNY"))+
  geom_point(aes(x=per.athena.reports,y=athena.cdc.cor, color="ATH"))+
  scale_color_manual(labels = c("athenahealth", "Flu Near You"), values=c(ATH="#008CB7", FNY="#FF7270"))
p5

# add shapes to distinguish geographical resolutions
p6<- ggplot(data1, aes())+
  geom_point(aes(x=per.fny.reports, y=fny.cdc.cor, color="FNY", shape = factor(scale)))+
  geom_point(aes(x=per.athena.reports, y=athena.cdc.cor, color="ATH", shape = factor(scale)))+
  scale_color_manual(labels = c("athenahealth", "Flu Near You"), values=c(ATH="#008CB7", FNY="#FF7270"))
p6

# change shapes 
# http://sape.inf.usi.ch/quick-reference/ggplot2/shape
p7<- ggplot(data1, aes())+
  geom_point(aes(x=per.fny.reports, y=fny.cdc.cor, color="FNY", shape = factor(scale)))+
  geom_point(aes(x=per.athena.reports, y=athena.cdc.cor, color="ATH", shape = factor(scale)))+
  scale_color_manual(labels = c("athenahealth", "Flu Near You"), values=c(ATH="#008CB7", FNY="#FF7270"))+
  scale_shape_manual(labels=c("Regional", "State"), values = c(15, 17))
p7

# change size 
p8<- ggplot(data1, aes())+
  geom_point(aes(x=per.fny.reports, y=fny.cdc.cor, color="FNY", shape = factor(scale)), size=2)+
  geom_point(aes(x=per.athena.reports, y=athena.cdc.cor, color="ATH", shape = factor(scale)), size=2)+
  scale_color_manual(labels = c("athenahealth", "Flu Near You"), values=c(ATH="#008CB7", FNY="#FF7270"))+
  scale_shape_manual(labels=c("Regional", "State"), values = c(15, 17))
p8

# remove grey background 
p9<- ggplot(data1, aes())+
  geom_point(aes(x=per.fny.reports, y=fny.cdc.cor, color="FNY", shape = factor(scale)), size=2)+
  geom_point(aes(x=per.athena.reports, y=athena.cdc.cor, color="ATH", shape = factor(scale)), size=2)+
  theme_bw()+
  scale_color_manual(labels = c("athenahealth", "Flu Near You"), values=c(ATH="#008CB7", FNY="#FF7270"))+
  scale_shape_manual(labels=c("Regional", "State"), values = c(15, 17))
p9

# add axis labels and title
p10<- ggplot(data1, aes())+
  geom_point(aes(x=per.fny.reports, y=fny.cdc.cor, color="FNY", shape = factor(scale)), size=2)+
  geom_point(aes(x=per.athena.reports, y=athena.cdc.cor, color="ATH", shape = factor(scale)), size=2)+
  theme_bw()+
  scale_color_manual(labels = c("athenahealth", "Flu Near You"), values=c(ATH="#008CB7", FNY="#FF7270"))+
  scale_shape_manual(labels=c("Regional", "State"), values = c(15, 17))+
  ylab("Correlation")+xlab("Percent of Reports")+
  ggtitle("Example 1")
p10
  
# adjust legend 
p11<- ggplot(data1, aes())+
  geom_point(aes(x=per.fny.reports, y=fny.cdc.cor, color="FNY", shape = factor(scale)), size=2)+
  geom_point(aes(x=per.athena.reports, y=athena.cdc.cor, color="ATH", shape = factor(scale)), size=2)+
  theme_bw()+
  scale_color_manual(labels = c("athenahealth", "Flu Near You"), values=c(ATH="#008CB7", FNY="#FF7270"))+
  scale_shape_manual(labels=c("Regional", "State"), values = c(15, 17))+
  ylab("Correlation")+xlab("Percent of Reports")+
  ggtitle("Example 1") +
  theme(legend.title=element_blank(),
        legend.justification=c(1,1), 
        legend.position=c(0.98,0.5),
        legend.key = element_rect(fill="transparent"),
        legend.background = element_rect(fill="transparent"),
        legend.key.size = unit(0.5, "cm"))
p11
  
# adjust y-axis
p12<- ggplot(data1, aes())+
  geom_point(aes(x=per.fny.reports, y=fny.cdc.cor, color="FNY", shape = factor(scale)), size=2)+
  geom_point(aes(x=per.athena.reports, y=athena.cdc.cor, color="ATH", shape = factor(scale)), size=2)+
  theme_bw()+
  scale_color_manual(labels = c("athenahealth", "Flu Near You"), values=c(ATH="#008CB7", FNY="#FF7270"))+
  scale_shape_manual(labels=c("Regional", "State"), values = c(15, 17))+
  scale_y_continuous( limits = c(0,1), expand = c(0,0) )+
  ylab("Correlation")+xlab("Percent of Reports")+
  ggtitle("Example 1") +
  theme(legend.title=element_blank(),
        legend.justification=c(1,1), 
        legend.position=c(0.98,0.5),
        legend.key = element_rect(fill="transparent"),
        legend.background = element_rect(fill="transparent"),
        legend.key.size = unit(0.5, "cm"))
p12

# adjust x-axis
p13<- ggplot(data1, aes())+
  geom_point(aes(x=per.fny.reports, y=fny.cdc.cor, color="FNY", shape = factor(scale)), size=2)+
  geom_point(aes(x=per.athena.reports, y=athena.cdc.cor, color="ATH", shape = factor(scale)), size=2)+
  theme_bw()+
  scale_color_manual(labels = c("athenahealth", "Flu Near You"), values=c(ATH="#008CB7", FNY="#FF7270"))+
  scale_shape_manual(labels=c("Regional", "State"), values = c(15, 17))+
  scale_y_continuous( limits = c(0,1), expand = c(0,0) )+
  ylab("Correlation")+
  xlab("Number of athenahealth Reports")+
  scale_x_continuous( limits = c(-0.1,26.5), expand = c(0,0), position="bottom", breaks = c(5, 10, 15, 20, 25),
                      labels = c(43166, 86336, 129504, 172672, 215840), sec.axis= sec_axis(~.*97, name="Number of FNY Reports"))+
  ggtitle("Example 1") +
  theme(legend.title=element_blank(),
        legend.justification=c(1,1), 
        legend.position=c(0.98,0.5),
        legend.key = element_rect(fill="transparent"),
        legend.background = element_rect(fill="transparent"),
        legend.key.size = unit(0.5, "cm"))
p13

# make adjustments to axis labels and text
p14<- ggplot(data1, aes())+
  geom_point(aes(x=per.fny.reports, y=fny.cdc.cor, color="FNY", shape = factor(scale)), size=2)+
  geom_point(aes(x=per.athena.reports, y=athena.cdc.cor, color="ATH", shape = factor(scale)), size=2)+
  theme_bw()+
  scale_color_manual(labels = c("athenahealth", "Flu Near You"), values=c(ATH="#008CB7", FNY="#FF7270"))+
  scale_shape_manual(labels=c("Regional", "State"), values = c(15, 17))+
  scale_y_continuous( limits = c(0,1), expand = c(0,0) )+
  ylab("Correlation")+
  xlab("Number of athenahealth Reports")+
  scale_x_continuous( limits = c(-0.1,26.5), expand = c(0,0), position="bottom", breaks = c(5, 10, 15, 20, 25),
                      labels = c(43166, 86336, 129504, 172672, 215840), sec.axis= sec_axis(~.*97, name="Number of FNY Reports"))+
  ggtitle("BSA Student-Faculty Seminar \n Example 1") +
  theme(legend.title=element_blank(),
        legend.justification=c(1,1), 
        legend.position=c(0.98,0.5),
        legend.key = element_rect(fill="transparent"),
        legend.background = element_rect(fill="transparent"),
        legend.key.size = unit(0.5, "cm"),
        # Center title
        plot.title = element_text(hjust = 0.5, size=9),
        # Change size of x axis text
        axis.text.x=element_text(size=7),
        # Change y axis text size, center text, and rotate text
        axis.text.y=element_text(angle=90, hjust=0.5, size=7),
        # Change size of both axis title
        axis.title=element_text(size=9),
        # Change font type
        text=element_text(family="sans"),
        # Remove minor grids
        panel.grid.minor.x = element_blank())
p14

# Save the last plot created as pdf
ggsave("~/Documents/BU/R/ggplot2/example1.pdf", width = 12, height = 12, units = "cm")

######################################################################
# Example 2 - Combine mutliple graphs

######################################
# Part 1 - Continuous heatmap scale
all<- read.csv("~/Documents/BU/R/ggplot2/example2.csv", header=T)

# Format week
all$week_of<-as.Date(all$week_of, "%Y-%m-%d")

# Order regions
all$region<-factor(all$region,levels=c("National", "Region 1", "Region 2", "Region 3"),ordered=TRUE)

heat_series<-function(filler, titler){
ploty <- ggplot()+ 
  geom_tile(aes(y=all$region, x=all$week_of,fill = filler), colour = "white") + 
  scale_fill_gradient(low="white", high= "#990000") + 
  theme_bw() +  
  scale_x_date(expand = c(0,0),date_breaks = "1 month", date_labels =  "%m/%Y") +
  scale_y_discrete(expand = c(0, 0)) +
  ggtitle(titler)+
  ylab("Geographical Area")+ xlab("Month")+
  theme(panel.grid=element_blank(), panel.border=element_blank(),
        legend.position="right", legend.title = element_blank(), 
        legend.key.size = unit(0.2, "in"),
        legend.text = element_text(size=7),
        axis.ticks = element_blank(), 
        axis.text.x=element_text(angle=60, hjust=1, size=8),
        axis.text.y = element_text(angle=45, hjust = 1, size=8),
        plot.title = element_text(hjust = 0.5, size=10))

return(ploty)
}

heat1<-heat_series(all$weighted_ili, "CDC ILINet")
heat2<-heat_series(all$per_ili, "Flu Near You")
heat3<-heat_series(all$ath_ili, "athenahealth")
heat4<-heat_series(all$twe_ili, "HealthTweets.org")

library(gridExtra)
library(grid)

pdf(file='~/Documents/BU/R/ggplot2/example2a.pdf',width=8, height=6)
grid.arrange(arrangeGrob(heat1 + theme(axis.title = element_blank()), 
                         heat2 + theme(axis.title = element_blank()),
                         heat3 + theme(axis.title = element_blank()), 
                         heat4 + theme(axis.title = element_blank()),
                         left = textGrob("Geographical Area", rot = 90, vjust = 1),
                         bottom = textGrob("Month", hjust = 0.5), ncol=2))
dev.off()


#####################################################
# Part 2 - Categorical heatmap scale with 1 legend

# Create color buckets
all$colorBuckets1 <- as.factor(as.numeric(cut(all$weighted_ili,c(0, 1.0, 2.0, 3.0, 4.0 ,20))))
all$colorBuckets2 <- as.factor(as.numeric(cut(all$per_ili,c(0, 1.0, 2.0, 3.0, 4.0 ,20))))
all$colorBuckets3 <- as.factor(as.numeric(cut(all$ath_ili,c(0, 1.0, 2.0, 3.0, 4.0 ,20))))
all$colorBuckets4 <- as.factor(as.numeric(cut(all$twe_ili,c(0, 1.0, 2.0, 3.0, 4.0 ,20))))

heat_series2<-function(bucket, titler){
  ploty <- ggplot()+ 
    geom_tile(aes(y=all$region, x=all$week_of,fill = bucket), colour = "white") + 
    scale_fill_manual(values=c("#99CCFF", "#3399FF", "#0066CC","#004C99", "#003366"), name="Baseline",
                      labels=c("0-1.0", "1.01-2.0", "2.01-3.0", "3.01-4.0", ">4.0"))+
    theme_bw() +  
    scale_x_date(expand = c(0,0),date_breaks = "1 month", date_labels =  "%m/%Y") +
    scale_y_discrete(expand = c(0, 0)) +
    ggtitle(titler)+
    ylab("Geographical Area")+ xlab("Month")+
    theme(panel.grid=element_blank(), panel.border=element_blank(),
          legend.position="bottom", legend.title = element_blank(), 
          legend.key.size = unit(0.2, "in"),
          legend.text = element_text(size=7),
          axis.ticks = element_blank(), 
          axis.text.x=element_text(angle=60, hjust=1, size=8),
          axis.text.y = element_text(angle=45, hjust = 1, size=8),
          plot.title = element_text(hjust = 0.5, size=10))
  
  return(ploty)
}

heat1a<-heat_series2(all$colorBuckets1, "CDC ILINet")
heat2a<-heat_series2(all$colorBuckets2, "Flu Near You")
heat3a<-heat_series2(all$colorBuckets3, "athenahealth")
heat4a<-heat_series2(all$colorBuckets4, "HealthTweets.org")

library(gtable)

legend = gtable_filter(ggplotGrob(heat1a), "guide-box")

pdf(file='~/Documents/BU/R/ggplot2/example2b.pdf',width=8, height=6)
grid.arrange(arrangeGrob(heat1a + theme(axis.title = element_blank(), legend.position = "none", axis.text.x = element_blank()), 
                         heat2a + theme(axis.title = element_blank(), legend.position = "none", axis.text = element_blank()),
                         heat3a + theme(axis.title = element_blank(), legend.position = "none"), 
                         heat4a + theme(axis.title = element_blank(), legend.position = "none", axis.text.y = element_blank()),
                         left = textGrob("Geographical Area", rot = 90, vjust = 1),
                         bottom = textGrob("Month", hjust = 0.5), ncol=2),
                         legend, nrow=2,heights=c(10, 1))
dev.off()


