# JedLueng 23 OCT 2022 

##Create a server at elephant SQL 
#https://customer.elephantsql.com/instance/


#Connect to PostgreSQL 

##username, password, host(server) , port,dbname 

library(RPostgreSQL)
con <- dbConnect(PostgreSQL(),
                 user = "vglzuihk",
                 password = "NzUibmbVlvrrUxJ_qyAPAKimsWOvVolZ",
                 host = "tiny.db.elephantsql.com ",
                 port = 5432,
                 dbname = "vglzuihk")

#IF you can connect then you can use R to manipulate all data