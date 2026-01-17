#!/bin/bash
# without this, live-build sets the mode of / to 770 leading to failures during boot
chmod 0775 /