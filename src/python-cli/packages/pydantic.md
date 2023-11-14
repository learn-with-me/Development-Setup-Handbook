# pydantic

[Pydantic](https://docs.pydantic.dev/latest/) is the most widely used data validation library for Python. Fast and extensible, Pydantic plays nicely with your linters/IDE/brain. Define how data should be in pure, canonical Python 3.7+; validate it with Pydantic.

## Why pydantic?

* Powered by type hints
* Speed
* JSON Schema
* Strict and Lax mode
* Dataclasses, TypedDicts and more
* Customisation
* Ecosystem
* Battle tested

## Usage

```python
from datetime import datetime
from typing import Tuple

from pydantic import BaseModel


class Delivery(BaseModel):
    timestamp: datetime
    dimensions: Tuple[int, int]


m = Delivery(timestamp='2020-01-02T03:04:05Z', dimensions=['10', '20'])
print(repr(m.timestamp))
#> datetime.datetime(2020, 1, 2, 3, 4, 5, tzinfo=TzInfo(UTC))
print(m.dimensions)
#> (10, 20)
```

## Complex data structure approaches

Comparison of three approaches on [YouTube](https://www.youtube.com/watch?v=zN4VCb0LbQI&ab_channel=ArjanCodes)

* [dataclasses](https://docs.python.org/3/library/dataclasses.html) - Part of standard Python.
* [attrs](https://www.attrs.org/en/stable/) - Third party, but a superset of dataclasses.
* [Pydantic](https://docs.pydantic.dev/) - Also third party, but integrated into FastAPI, so an easy choice if you’re already using FastAPI

### Reasoning

One takeaway is that Pydantic stands out for `validation`, and its integration with FastAPI catches many potential data errors. Another is that Pydantic relies on `inheritance` (from the BaseModel class), and the other two use Python decorators to define their objects. This is more a matter of style.

In [another comparison](https://dev.to/anirudhann/data-validation-libraries-analysis-comparison-using-python-31a4), Pydantic outperformed older validation packages like `marshmallow` and the intriguingly named `Voluptuous`. Another big plus for Pydantic is that it uses standard Python type hint syntax; older libraries pre-dated type hints and rolled their own.

Pydantic provides ways to specify any combination of these checks:

* Required versus optional
* Default value if unspecified but required
* The data type or types expected
* Value range restrictions
* Other function-based checks if needed
* Serialization and deserialization
