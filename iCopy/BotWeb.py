#!/usr/bin/python3
# -*- coding: utf-8 -*-

import os, sys, logging
from telegram import Bot
from telegram.utils.request import Request as TGRequest
from utils import load
from telegram.ext import (
    Updater,
    CommandHandler,
    MessageHandler,
    Filters,
    CallbackQueryHandler,
    ConversationHandler,
)
from utils import (
    get_set as _set,
    get_functions as _func,
    task_box as _box,
    task_payload as _payload,
    callback_stage as _stage,
    __version__,
)

from workflow import (
    start_workflow as _start,
    quick_workflow as _quick,
    copy_workflow as _copy,
    size_workflow as _size,
    regex_workflow as _regex,
    purge_workflow as _purge,
    dedupe_workflow as _dedupe,
)
from multiprocessing import Process as _mp, Manager
from threading import Thread
from utils.load import ns
from web import dash

if __name__ == "__main__":
    if load.cfg['web']['dashboard']:
        web = _mp(target=dash.dashboard)
        web.start()
