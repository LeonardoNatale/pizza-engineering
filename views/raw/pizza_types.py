import pathlib

import pandas as pd

here = pathlib.Path(__file__).parent
pizza_types = pd.read_csv(here.parent.parent / "seeds" / "pizza_types.csv")
