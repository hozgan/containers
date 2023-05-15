#!/bin/bash

case $1 in
    composer)
        shift 1
        params=()
        while [[ $# -gt 0 ]]; do
            case $1 in
                --for)
                    curl -sLS https://getcomposer.org/installer | php -- --install-dir=/tmp --filename=composer --version=$2 1>2 /dev/null
                    shift 1
                    shift 1
                    ;;
                *)
                    params+=("$1")
                    shift 1
                    ;;
            esac
        done
        $( IFS=$' '; echo "/tmp/composer ${params[*]}" )
        ;;
    *)
        "$@";
    ;;
esac


# echo $0

# while [[ $# -gt 0 ]]; do
#     case $1 in
#     composer)
#         IFS=',' read -r -a required_services <<< "$2"
#         shift 1
#         ;;
#     --runtime)
#         required_runtime=$2
#         shift 1
#         ;;
#     esac
#     shift
# done


# git config --global --add safe.directory /opt/vendor/way/generators

# if $0 == "composer-"



# php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
# php -r "if (hash_file('sha384', 'composer-setup.php') === '55ce33d7678c5a611085589f1f3ddf8b3c52d662cd01d4ba75c0ee0459970c2200a51f492d557530c71c15d8dba01eae') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
# php composer-setup.php --version=2.0.0
# # php composer-setup.php --version=1.0.0-alpha8
# php composer.phar install
# php -r "unlink('composer-setup.php');"
# php composer.phar require --dev hozgan/sail-standalone
