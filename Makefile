# https://www.gnu.org/software/make/manual/html_node/Phony-Targets.html#Phony-Targets
# introduced port variable:
# you can explicitely pass a port, e.g. $ make hugo port=1313
# open a version with and without drafts in parallel:
# make hugo hugoWOD
.PHONY : hugo linkCheck linkcheck
.RECIPEPREFIX = -

# default port


port=4000

hugo :  hugo/node_modules open # open_current # open_m1 # openH
-  hugo --navigateToChanged --buildDrafts --baseURL "http://localhost:$(port)" --source hugo -p $(port) server


hugo2 :  hugo/node_modules open # open_current # open_m1 # openH
-  hugo --navigateToChanged --buildDrafts --baseURL "http://localhost:$(port)/~kleinen/" --source hugo -p $(port) server

#baseURL=http://localhost:$(port)/~kleinen/
baseURL=http://localhost:$(port)

hugoP: port=4444
hugoP :  hugo/node_modules open # open_current # open_m1 # openH
-  hugo --disableFastRender --navigateToChanged --buildFuture --baseURL "$(baseURL)" --source hugo -p $(port) server

openProd :
-  open http://localhost:$(portP)/

open:
- open http://localhost:$(port)/classes/ss2024/info2

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

hugo1 :  hugo/node_modules openI
-  hugo --disableFastRender --navigateToChanged --buildDrafts --source hugo -p $(port) server
openBib:
- open 	http://localhost:4242/~kleinen/bibliographies


debug :  hugo/node_modules
-  open http://localhost:$(port)/~kleinen/classes/ss2023/info3
-  open http://localhost:4242/~kleinen/classes/
-  hugo --disableFastRender --buildDrafts --navigateToChanged --environment debug --source hugo -p $(port) server

hugo/node_modules :
-  cd hugo ; npm install ; cd ..

hugoWT :  port = 4241
hugoWT :  hugo/node_modules open
-  hugo --buildDrafts --environment progwebtec --source hugo -p $(port) server

hugoWOD :  port = 4243
hugoWOD :  hugo/node_modules openH
-  hugo  --source hugo -p $(port) --baseURL "http://localhost:$(port)/~kleinen/" server


hugoLC : port = 4244
hugoLC : hugo/node_modules  
-  hugo --environment production --source hugo -p $(port) --baseURL "http://host.docker.internal:4244/~kleinen/"  server --disableFastRender 




hugoS : hugo/node_modules openS # staging; without drafts
-  hugo --environment staging --source hugo -p 4242 server

hugoSD : hugo/node_modules openSD # staging; like production but with drafts
-  hugo --buildDrafts --environment stagingdrafts --source hugo -p 4242 server

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
- grep -R "aliases: " hugo/content

aliases_update:
- echo "# this file is generated from front matter aliases with make aliases_update" > hugo/data/aliases.yml
- echo "# these shortcuts/aliases are used in the back to course link in material, " >> hugo/data/aliases.yml
- echo "# they do not work as an url alias!"  >> hugo/data/aliases.yml
#- grep -R "aliases: " hugo/content | sed -e "s%hugo/content\(.*\)\(/\.md\|\)\(_index.md\)*:aliases: /\([^/]*\)/*%\4:  \1%g" >> hugo/data/aliases.yml
- grep -R "aliases: " hugo/content | sed -e "s%hugo/content\(.*\):aliases: /\([^/]*\)/*%\2:  \1%g" >> hugo/data/aliases.yml

aliases_update_try:
- echo "# this file is generated from front matter aliases with make aliases_update" > hugo/data/aliases.yml
- echo "# these shortcuts/aliases are used in the back to course link in material, " >> hugo/data/aliases.yml
- echo "# they do not work as an url alias!"  >> hugo/data/aliases.yml
- grep -R "aliases: " hugo/content | sed -e "s%hugo/content\(.*\):aliases: /\([^/]*\)/*%\2:  \1%g" 



# https://hub.docker.com/r/tennox/linkcheck



# Linkcheckmd

linkcheckmd_build_docker_image:
- docker build linkcheck/linkcheckmd -t bkleinen/linkcheckmd

pwd = $(shell pwd)
linkcheckmd:
- docker run -v $(pwd):/site -w /site -t bkleinen/linkcheckmd python -m linkcheckmd -r /site/hugo/content
# - docker run -v $(pwd):/site -w /site -t bkleinen/linkcheckmd python -m linkcheckmd -r -local /site/hugo/content


linkcheck:
- linkcheck http://localhost:4242/~kleinen

linkcheck_external:
- linkcheck -e http://localhost:4242/~kleinen


linkcheck_retired:
- docker run -p 4244:4244  tennox/linkcheck --external host.docker.internal:4244/~kleinen/

linkCheck_old:
- ./linkcheck.sh

build:
- hugo --environment production --source hugo --baseURL "http://localhost:$(port)/~kleinen/"  


audit: 
- HUGO_MINIFY_TDEWOLFF_HTML_KEEPCOMMENTS=true HUGO_ENABLEMISSINGTRANSLATIONPLACEHOLDERS=true hugo --source hugo && grep -inorE "<\!-- raw HTML omitted -->|ZgotmplZ|\[i18n\]|\(<nil>\)|(&lt;nil&gt;)|hahahugo" hugo/public/