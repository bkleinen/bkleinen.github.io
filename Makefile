# https://www.gnu.org/software/make/manual/html_node/Phony-Targets.html#Phony-Targets
# introduced port variable:
# you can explicitely pass a port, e.g. $ make hugo port=1313
# open a version with and without drafts in parallel:
# make hugo hugoWOD
.PHONY : hugo # only necessary if file with same name exists
.RECIPEPREFIX = -

# default port
port=4242

hugo :  hugo/node_modules openH
-  hugo --disableFastRender --buildDrafts --source hugo -p $(port) server

debug :  hugo/node_modules
-  open http://localhost:$(port)/~kleinen/classes/ss2023/info3
-  hugo --disableFastRender --buildDrafts --environment debug --source hugo -p $(port) server

hugo/node_modules :
-  cd hugo ; npm install ; cd ..

hugoWT :  port = 4241
hugoWT :  hugo/node_modules open
-  hugo --buildDrafts --environment progwebtec --source hugo -p $(port) server

hugoWOD :  port = 4243
hugoWOD :  hugo/node_modules openH
-  hugo  --source hugo -p $(port) --baseURL "http://localhost:$(port)/~kleinen/" server

hugoP : port = 4244
hugoP : hugo/node_modules openH # as published; there might be differences as there are isServer queries
-  hugo --environment production --source hugo -p $(port) --baseURL "http://localhost:$(port)/~kleinen/" server

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

# openProd :
# -  open http://localhost:$(port)/
openH :
-  open http://localhost:$(port)/~kleinen
open :
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
- open 	http://localhost:4242/~kleinen/classes/ss2022/info1/
openN:
- open 	http://localhost:4242/~kleinen/classes/ss2022/networks/

linkCheck:
- ./linkcheck.sh

ps:
- ps -ax | grep hugo
