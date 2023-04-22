# fetch table data from website
library(rvest)

url<-read_html("https://stats.espncricinfo.com/ci/content/records/83548.html")
table_node<-html_node(url,"table")
table_content<-html_table(table_node)
print(table_content)
#write.csv(table_content,"path & name of your file.csv")