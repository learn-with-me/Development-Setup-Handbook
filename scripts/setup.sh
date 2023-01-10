#!/bin/bash
# Script to setup local virtual environment

if [[ "$0" = "$BASH_SOURCE" ]]; then
    echo "Run using source: $ source scripts/setup.sh"
else
    VENVPATH="venv/bin/activate"
    if [[ $# -eq 1 ]]; then 
        if [ -d $1 ]; then
            VENVPATH="$1/bin/activate"
        else
            echo "Virtual environment $1 not found"
            return
        fi

    elif [ -d "venv" ]; then 
        VENVPATH="venv/bin/activate"
    fi

    echo "Activating virtual environment $VENVPATH"
    source "$VENVPATH"

    # Install dependencies
    pip3 install -r requirements.txt

    # Start mkdocs server
    mkdocs serve
fi
