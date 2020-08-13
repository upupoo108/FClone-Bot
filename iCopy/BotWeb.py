#!/usr/bin/python3
# -*- coding: utf-8 -*-
from utils import load
from multiprocessing import Process as _mp, Manager
from utils.load import ns
from web import dash

if __name__ == "__main__":
    if load.cfg['web']['dashboard']:
        web = _mp(target=dash.dashboard)
        web.start()
