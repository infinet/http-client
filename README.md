### Simple http get

This is a simple http client lib in C that support gzip compression.


## Usage

See test.c for example. Don't forget to free() the buffer.


## Limitations

* Only support HTTP GET
* Does not support redirect
* No http status code report except return -1 on error
* No https


## Intended use

Embedded devices.



[Contact me](mailto: weichen302@gmail.com)
