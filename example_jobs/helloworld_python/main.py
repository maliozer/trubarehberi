import sys

import pandas as pd
import numpy as np
from tqdm import tqdm


print("Yeditepe_UBY", "hello truba, python version : ")
print(sys.version, __name__)

numbers = np.array([1, 2, 3])
print(numbers)

for x in tqdm(range(100000)):
    pass

print("END OF JOB!")
