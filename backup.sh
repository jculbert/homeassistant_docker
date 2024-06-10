#!/usr/bin/python3
from datetime import datetime
import subprocess

fn = 'home-assistant' + datetime.today().strftime('%Y-%m-%d') + '.tz'
subprocess.call(["sudo", "tar", "cvzf", fn, "config", "matter-server6", "create.sh", "backup.sh"])
#subprocess.call(["encrypt.sh", fn])
#subprocess.call(["mv", fn + ".des", "/mnt/backup"])
#subprocess.call(["rm", fn])
