import os

from zvms.apilib import Api, ZvmsExit
from zvms.util import *
from zvms.res import TTYD_PATH, Categ

@Api('/system/ttyd/restart', method='POST', auth=Categ.SYSTEM)
def restart_ttyd(token_data):
    if TTYD_PATH is None:
        return error('TTYD is not supported')
    os.system('taskkill /im ttyd.exe /f')
    if os.system(TTYD_PATH) == 0:
        return success('??????')
    return error('TTYD重启失败!')

@Api('/system/restart', method='POST', auth=Categ.SYSTEM)
def restart(token_data):
    raise ZvmsExit