import pathlib

import pandas as pd

here = pathlib.Path(__file__).parent
orders = pd.read_csv(here.parent.parent / "seeds" / "orders.csv")

orders["datetime"] = pd.to_datetime(
    orders["date"].astype(str) + " " + orders["time"].astype(str)
)

orders.drop(columns=["date", "time"], inplace=True)
