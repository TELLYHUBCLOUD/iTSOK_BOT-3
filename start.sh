if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/TELLYHUBCLOUD/iTSOK_BOT-3
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /iTSOK_BOT-3
fi
cd /iTSOK_BOT-3
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
