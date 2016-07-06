from __future__ import print_function

import json

print('Loading function')
import pandas as pd
import numpy as np

def lambda_handler(event, context):
    print("Received event: " + json.dumps(event, indent=2))
    s = pd.Series([1,3,5,np.nan,6,8])
    print (s)
