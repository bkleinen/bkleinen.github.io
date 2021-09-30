# https://www.gnu.org/software/make/manual/html_node/Phony-Targets.html#Phony-Targets
.PHONY : hugo
.RECIPEPREFIX =  -

hugo :
-  open http://localhost:4242
-  hugo --buildDrafts --source hugo -p 4242 server

c :
-	git add .
-	git commit -m "$m"


# variable definition is executed when needed
# variable can also be set when calling target, e.g.
#    make deploy tag=v0.42
# zum ausprobieren
# tag = $(shell echo DEF_TAG)
tag = $(shell _bin/hugo_deployment/gitautotag.sh --minor)

tag :
-	echo "created new tag $(tag)"

deploy :
-	git push origin main
-	git push origin $(tag)
