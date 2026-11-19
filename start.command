#!/bin/zsh
cd -- "$(dirname -- "$0")"
export PYTHONDONTWRITEBYTECODE=1
exec ./.img_proc_env/bin/python -m notebook .
