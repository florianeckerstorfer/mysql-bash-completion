#!bash
#
# bash completion support for mysql console
#
# Copyright (C) 2013 Florian Eckerstorfer <florian@eckerstorfer.co>
# Distributed under the MIT License.
#
# There must be a MySQL user "completer" (with password "completer") that has grants for
# SHOW_DATABASES and SELECT for the mysql database.

_mysql()
{
    local cur prev opts cmd
    COMPREPLY=()
    cur="${COMP_WORDS[COMP_CWORD]}"
    prev="${COMP_WORDS[COMP_CWORD-1]}"
    cmd="${COMP_WORDS[0]}"
    if [[ "$prev" =~ .*\<.* ]]; then
        COMPREPLY=( $(compgen -A file -- "${cur}") )
        return 0
    elif [[ "$prev" =~ .*(-u|--user)$ ]]; then
        PHP='$pdo = new PDO("mysql:host=localhost;dbname=mysql", "completer", "completer");
        foreach($pdo->query("select User from user", PDO::FETCH_COLUMN, 0) as $row) { echo $row."\n"; }'
        possible=$($(which php) -r "$PHP" $COMP_WORDS);
        COMPREPLY=( $(compgen -W "${possible}" -- ${cur}) )
        return 0
    else
        PHP='$pdo = new PDO("mysql:host=localhost", "completer", "completer");
        foreach($pdo->query("show databases", PDO::FETCH_COLUMN, 0) as $row) { echo $row."\n"; }'
        possible=$($(which php) -r "$PHP" $COMP_WORDS);
        COMPREPLY=( $(compgen -W "${possible}" -- ${cur}) )
        return 0
    fi
}

complete -o filenames -F _mysql mysql
COMP_WORDBREAKS=${COMP_WORDBREAKS//:}
