#!/usr/bin/python3
# -*- coding: utf-8 -*-

import os, sys, logging
from multiprocessing import Process as _mp, Manager
from web import dash
webdash = os.environ.get("DASHBOARD")
if webdash == true:
    web = _mp(target=dash.dashboard)
    web.start()
