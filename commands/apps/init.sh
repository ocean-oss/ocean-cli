if [ ! -d .git ]
then
  echo "Initializing git repository"
  git init .

  git remote add ocean $BASE_APP

  echo "Pulling from $BASE_APP"
  git pull ocean master

  git remote remove ocean
else
  echo "There is a already a git repository in this directory. Can't initialize an app."
fi
