library(rsconnect)

rsconnect::setAccountInfo(name='zake7749',
                          token='DDEE7AE4DF6260DBF0DE01C37C166DD6',
                          secret='<SECRET>')
rsconnect::deployApp('.')