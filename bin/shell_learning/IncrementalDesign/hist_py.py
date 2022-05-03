# coding: utf-8
import os, sys, json, inspect
get_ipython().run_line_magic('save', 'hist_py.py')
from pathlib import Path
__mydir__ = Path(".")
get_ipython().run_line_magic('save', 'hist_py.py')
important_packages = {
"pynvim": "nvim plugin for python using msgpack"
}
important_todos = [
{
"name": "keep_them_updated",
"description": "keep all my packages updated",
"tasks": [
"pip update *",
["aptitude update", "aptitude upgrade"]
]
}
]
get_ipython().run_line_magic('save', 'hist_py.py')
important_todos
important_todos_help = """
# Help for important_undos

## Fields

### name

Name of todo.

### description

Description of undo: multiline string.

### tasks

Shell-based tasks
"""
