if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Captainamarica/Amie.git/Amie
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Amie
fi
cd /Amie 
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
