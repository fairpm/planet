# Planet!

This repository houses the code and configuration for our Planet instance.

This feed is displayed within the Dashboard to users by default, so should be full of items that are interesting to them.


## Adding a feed

If you've got a feed which offers interesting news to users, we'd love to add it.

Feeds are stored in `config.ini`. Add a new feed and the name you'd like displayed (alphabetical please!), and submit a pull request.

All new feeds are approved by the TSC.


## Running locally

Planet generates static files into `/data/output`, and stores the cache in `/data/cache`.

We recommend running the generation via Docker:

```sh
# One-liner:
$ docker run --rm -it -v "$PWD/data:/data" $(docker build -q .)

# Or, run it one by one:
$ docker build -t planet .
$ docker run --rm -it -v "$PWD/data:/data" planet
```


## Credits

This Planet instance uses [Venus](https://www.intertwingly.net/code/venus/), a fork of the original Planet. Copyright Sam Ruby, Scott James Remnant, and Jeff Waugh. Used under the Python Software Foundation License (PSFL).

Some code based on the [Planet Python](https://github.com/python/planet) source code, used under the PSFL.

This repository is licensed under [the ISC License](./LICENSE). Copyright 2025 contributors.
