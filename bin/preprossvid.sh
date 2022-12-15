#UNAME="ross"
#JEKYLL=jekyll
#PORT=4000
#HOST=localhost
#FLAGS=""
#ENV="development"
#CHROME=google-chrome-stable
#PDF_HOST=localhost
#SITE_URL=http://${PDF_HOST}:${PORT}/training-material
#PDF_DIR=_pdf
#REPO="galaxyproject/training-material"
#BRANCH=""
#MINICONDA_URL=https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
#SHELL="bash"
#RUBY_VERSION=2.4.4

#COND_ENV_DIR=$(shell dirname $(dir $(CONDA)))
CONDA_ENV="galaxy_training_material"

ENV_FILE=environment.yml

CONDA=${HOME}/miniconda3/bin/conda
### docker run --rm --network host -v /home/ross/rossgit/training-material:/slides astefanutti/decktape  automatic -s 1920x1080 http://127.0.0.1:4000/training-material/topics/galaxy-project/slides/introduction.html /slides/_site/training-material/topics/galaxy-project/slides/introduction.pdf

source $CONDA/bin/activate $(CONDA_ENV)


#./bin/ari.sh "_site/training-material/$pdf" "$slides" "$mp4"

#make _site/training-material/topics/galaxy-project/slides/introduction.pdf ACTIVATE_ENV=pwd

./bin/ari.sh _site/training-material/topics/galaxy-project/slides/introduction.pdf topics/galaxy-project/slides/introduction.html videos/topics/galaxy-project/slides/introduction.mp4
