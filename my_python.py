import sys
import os
import yaml ### install the pyyaml package
import random
from lookerapi import LookerApi
from datetime import datetime
from pprint import pprint 
from pptx import Presentation
from pptx.util import Cm


### ------- HERE ARE PARAMETERS TO CONFIGURE -------
host = 'hosts'


### ------- OPEN THE CONFIG FILE and INSTANTIATE API -------

f = open('config.yml')
params = yaml.load(f)
f.close()

my_host = params['hosts'][host]['host']
my_secret = params['hosts'][host]['secret']
my_token = params['hosts'][host]['token']

looker = LookerApi(host=my_host,
                 token=my_token,
                 secret = my_secret)
space = looker.get_space()
all_looks_in_space = looker.get_looks_in_space()
looks = all_looks_in_space
