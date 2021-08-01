# Date: 01/08/2021
# Author: Apathe
# Description: 


class ProxyList(object):

    def __init__(self):
        self.list = []

    def __contains__(self, proxy):
        for _proxy in self.list:
            if _proxy.ip == proxy['ip'] and _proxy.port == proxy['port']:
                return True 
        return False 

    def append(self, proxy):
        self.list.append(proxy) 