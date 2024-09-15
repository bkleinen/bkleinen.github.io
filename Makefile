# https://www.gnu.org/software/make/manual/html_node/Phony-Targets.html#Phony-Targets
# introduced port variable:
# you can explicitely pass a port, e.g. $ make hugo port=1313
# open a version with and without drafts in parallel:
# make hugo hugoWOD
.PHONY : hugo linkCheck linkcheck
.RECIPEPREFIX = -

# default port


port=4000

hugo :  node_modules open # open_current # open_m1 # openH
-  hugo --navigateToChanged --buildDrafts --baseURL "http://localhost:$(port)"  -p $(port) server


hugo2 :  node_modules open # open_current # open_m1 # openH
-  hugo --navigateToChanged --buildDrafts --baseURL "http://localhost:$(port)/~kleinen/"  -p $(port) server

baseURL=http://localhost:$(port)/~kleinen/
#baseURL=http://localhost:$(port)

hugoP: port=4444
hugoP :  node_modules open # open_current # open_m1 # openH
-  hugo --disableFastRender --navigateToChanged --buildFuture --baseURL "$(baseURL)"  -p $(port) server


build:
- hugo --environment production  --baseURL "$(baseURL)" 

open:
- open "$(baseURL)"

open_current:
- open http://localhost:$(port)/~kleinen/classes/m1

open_m1:
- open http://localhost:$(port)/~kleinen/classes/ws2019/m1-web/
- open http://localhost:$(port)/~kleinen/classes/ss2020/m1-web/
- open http://localhost:$(port)/~kleinen/classes/ws2020/m1-web/
- open http://localhost:$(port)/~kleinen/classes/ss2021/m1-web/
- open http://localhost:$(port)/~kleinen/classes/ws2021/m1-web/
- open http://localhost:$(port)/~kleinen/classes/ss2022/m1-web/
- open http://localhost:$(port)/~kleinen/classes/ws2022/m1-web/
- open http://localhost:$(port)/~kleinen/classes/ss2023/m1-web/
- open http://localhost:$(port)/~kleinen/classes/ws2023/m1-web/
- open http://localhost:$(port)/~kleinen/classes/ss2024/m1-web/

hugo1 :  node_modules openI
-  hugo --disableFastRender --navigateToChanged --buildDrafts  -p $(port) server
openBib:
- open 	http://localhost:4242/~kleinen/bibliographies


debug :  node_modules
-  open http://localhost:$(port)/~kleinen/classes/ss2023/info3
-  open http://localhost:4242/~kleinen/classes/
-  hugo --disableFastRender --buildDrafts --navigateToChanged --environment debug  -p $(port) server

node_modules :
-  cd hugo ; npm install ; cd ..

hugoWT :  port = 4241
hugoWT :  node_modules open
-  hugo --buildDrafts --environment progwebtec  -p $(port) server

hugoWOD :  port = 4243
hugoWOD :  node_modules openH
-  hugo   -p $(port) --baseURL "http://localhost:$(port)/~kleinen/" server


hugoLC : port = 4244
hugoLC : node_modules  
-  hugo --environment production  -p $(port) --baseURL "http://host.docker.internal:4244/~kleinen/"  server --disableFastRender 




hugoS : node_modules openS # staging; without drafts
-  hugo --environment staging  -p 4242 server

hugoSD : node_modules openSD # staging; like production but with drafts
-  hugo --buildDrafts --environment stagingdrafts  -p 4242 server

c :
-	git add .
-	git commit -m "$m"

# variable definition is executed when needed
# variable can also be set when calling target, e.g.
#    make deploy tag=v0.42
# zum ausprobieren
# tag = $(shell echo DEF_TAG)
tag = $(shell bin/hugo_deployment/gitautotag.sh --minor)

tag : check_on_main push
-	echo "created new tag $(tag)"

push :
-	git push origin main

 # indirection needed to only create tag if conditions are met
deploy : check_on_main push deployIMPLYOUDONTWANNATYPETHIS

deployIMPLYOUDONTWANNATYPETHIS : # dont call this directly!!!!
-	git push origin $(tag)

ERR = $(error error is "not on main branch")
current_branch = $(shell git branch --show-current)

check_on_main :
ifneq ($(current_branch),main)
- echo $(ERR)
endif

openH :
-  open http://localhost:$(port)/~kleinen
openRoot :
-  open http://localhost:$(port)
openS :
-  open http://localhost:4242/staging
openSD :
-  open http://localhost:4242/stagingdrafts
openGH :
- gh browse
openActions :
- open https://github.com/bkleinen/bkleinen.github.io/actions
openSites:
- open https://home.htw-berlin.de/~kleinen/
- open https://bkleinen.github.io/
- open https://bkleinen.github.io/staging/
- open https://bkleinen.github.io/stagingdrafts/
openI:
- open 	http://localhost:4242/~kleinen/classes/ss2023/info3/labs
openN:
- open 	http://localhost:4242/~kleinen/classes/ss2022/networks/



ps:
- ps -ax | grep hugo

aliases_list:
- grep -R "aliases: " content

aliases_update:
- echo "# this file is generated from front matter aliases with make aliases_update" > data/aliases.yml
- echo "# these shortcuts/aliases are used in the back to course link in material, " >> data/aliases.yml
- echo "# they do not work as an url alias!"  >> data/aliases.yml
#- grep -R "aliases: " content | sed -e "s%content\(.*\)\(/\.md\|\)\(_index.md\)*:aliases: /\([^/]*\)/*%\4:  \1%g" >> data/aliases.yml
- grep -R "aliases: " content | sed -e "s%content\(.*\):aliases: /\([^/]*\)/*%\2:  \1%g" >> data/aliases.yml

aliases_update_try:
- echo "# this file is generated from front matter aliases with make aliases_update" > data/aliases.yml
- echo "# these shortcuts/aliases are used in the back to course link in material, " >> data/aliases.yml
- echo "# they do not work as an url alias!"  >> data/aliases.yml
- grep -R "aliases: " content | sed -e "s%content\(.*\):aliases: /\([^/]*\)/*%\2:  \1%g" 



# https://hub.docker.com/r/tennox/linkcheck



links: build
- grep -rn "a href" public | sed -E "s/([0-9]+:).*href\s*=\s*\"/\1  /g" | sed -E "s/\".*//g"

internal: build
- grep -rn "a href" public | grep "localhost:4000" | sed -E "s/([0-9]+:).*href\s*=\s*\"/\1  /g" | sed -E "s/\".*//g"
internal2:
- grep -rn "http://localhost:4000/~kleinen" public | sed -E "s#([0-9]:).*http://localhost:4000/~kleinen/*#\1  #g" | sed -E "s/\"*>.*//g"

internal3:
- grep -rn "http://localhost:4000/~kleinen" public | sed -E "s#.*http://localhost:4000/~kleinen/*##g" | sed -E "s/\"*>.*//g"
- grep -rn "http://localhost:4000/~kleinen" public | sed -E "s#.*http://localhost:4000/~kleinen/*##g" | sed -E "s/\".*//g" | sed -E "s/<.*//g" | sort -u
- grep -rn "http://localhost:4000/~kleinen" public | sed -E "s#.*http://localhost:4000/~kleinen/*##g" | sed -E "s/\".*//g" | sed -E "s/<.*//g" | grep -v "&#" | sort -u
audit: 
- HUGO_MINIFY_TDEWOLFF_HTML_KEEPCOMMENTS=true HUGO_ENABLEMISSINGTRANSLATIONPLACEHOLDERS=true hugo  && grep -inorE "<\!-- raw HTML omitted -->|ZgotmplZ|\[i18n\]|\(<nil>\)|(&lt;nil&gt;)|hahahugo" public/
