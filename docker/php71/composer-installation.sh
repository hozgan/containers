#!/bin/bash

case $1 in
    composer)
        shift 1
        params=()
        while [[ $# -gt 0 ]]; do
            case $1 in
                --for)
                    curl -sLS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer --version=$2 1>2 /dev/null
                    shift 1
                    shift 1
                    ;;
                *)
                    params+=("$1")
                    shift 1
                    ;;
            esac
        done
        $( IFS=$' '; echo "/usr/bin/composer ${params[*]}" )
        ;;
    *)
        "$@";
    ;;
esac
