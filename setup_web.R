library(blogdown)
new_site(theme = "wowchemy/hugo-notes-theme") # cài đặt theme

blogdown::serve_site() # thực hiện mỗi khi vào session

blogdown::build_site()

file.edit(".gitignore") 
# add 
# .Rproj.user
# .Rhistory
# .RData
# .Ruserdata
# .DS_Store
# Thumbs.db

blogdown::check_gitignore()

blogdown::check_content()

rstudioapi::navigateToFile("config.yaml", line = 3) # add URL netlify

# blogdown::config_netlify()

blogdown::check_netlify()

blogdown::check_site()

##########################################

happy_file <- getwd()

library('here')

change_1 <- here(happy_file, "content", "_index.md")

# set cover

rstudioapi::navigateToFile(change_1, line = 4, column = 10)

# thay đổi button share
# D:\GITHUB\v3\themes\github.com\wowchemy\wowchemy-hugo-modules\wowchemy\v5\data\page_sharer.toml
# nếu dùng telegram thì add code này

# [[buttons]]
# id = "telegram"
# url = "https://t.me/share/url?url={url}"
# title = "Telegram"
# icon_pack = "fab"
# icon = "telegram"
# enable = true