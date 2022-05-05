
# flake8: noqa

# Import all APIs into this package.
# If you have many APIs here with many many models used in each API this may
# raise a `RecursionError`.
# In order to avoid this, import only the API that you directly need like:
#
#   from .api.jokes_api import JokesApi
#
# or import this package, but before doing it, use:
#
#   import sys
#   sys.setrecursionlimit(n)

# Import APIs into API package:
from com.humorapi.jokes_api import JokesApi
from com.humorapi.memes_api import MemesApi
from com.humorapi.other_api import OtherApi
