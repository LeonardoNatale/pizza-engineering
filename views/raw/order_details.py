import pathlib

import pandas as pd

here = pathlib.Path(__file__).parent
order_details = pd.read_csv(here.parent.parent / "seeds" / "order_details.csv")
