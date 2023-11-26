import pathlib

import pandas as pd

here = pathlib.Path(__file__).parent
pizze = pd.read_csv(here.parent.parent / "seeds" / "pizzas.csv")
