#!/usr/bin/python3
from datetime import datetime
import subprocess

#subprocess.call(["sudo", "rm", "-rf", "config/nest/event_media"])

fn = 'home-assistant' + datetime.today().strftime('%Y-%m-%d') + '.tz'
subprocess.call(["sudo", "tar", "cvzf", fn, "config", "matter-server6", "create.sh", "backup.sh"])
subprocess.call(["encrypt_aes.sh", fn])
subprocess.call(["rm", fn])
