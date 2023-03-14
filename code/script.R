library(sf)
library(ggplot2)
kenya<- st_read("data/kenyan-counties/County.shp")

st_geometry_type(kenya)
st_crs(kenya)
st_bbox(kenya)
kenya
ggplot() + 
  geom_sf(data = kenya, size = 3, color = "black", fill = "cyan1") + 
  ggtitle("The Map of kenya") + 
  coord_sf()+
  theme_classic()+ 
  theme(axis.ticks.x = element_blank(),
        axis.text.x = element_blank())