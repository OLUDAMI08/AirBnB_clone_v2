#!/usr/bin/env bash

""" Fabric script that generates a .tgz archive from the contents of the web_static folder of the AirBnB Clone repo"""



import os
from datetime import datetime
from fabric.api import local
from fabric.api import local, cd

def do_pack():
    if not os.path.isdir("versions"):
        os.mkdir("versions")

    dt = datetime.utcnow()
    file = "web_static_{}{}{}{}{}.tgz".format(dt.year, dt.month, dt.day, dt.hour, dt.minute)

    with cd("versions"):
        if local("tar czvf {} web_static".format(file)).failed:
            return None

    return "versions/{}".format(file)
