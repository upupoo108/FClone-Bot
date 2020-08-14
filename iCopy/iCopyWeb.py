from multiprocessing import Process as _mp, Manager
from web import dash
from utils import load

if __name__ == "__main__":
    if load.cfg['web']['dashboard']:
        web = _mp(target=dash.dashboard)
        web.start()
