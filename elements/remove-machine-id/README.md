=================
remove-machine-id
=================

Removes the hardcoded ``/etc/machine-id`` from the resulting image, so that it
is regenerated during the next boot.

Leaving the file means that e.g. all instances will have the same machine-id.

