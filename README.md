Bash completion for MySQL command line
======================================

Bash completion for the `mysql` command line tool.

Handcrafted in Vienna by [Florian Eckerstorfer](http://florianeckerstorfer.com).

Usage
-----

Completion of users, databases and files:

    $ mysql -u r<TAB>
    $ mysql -u root -p my_<TAB>
    $ mysql -u root -p my_database < <TAB>

Other examples

    $ mysql --user <TAB>
    $ mysql -D <TAB>
    $ mysql --database <TAB>


Installation
------------

Clone or download this repository and add the following line to your `.bash_profile` or `.bashrc` file:

    [ -f ~/mysql-bash-completion/mysql-completion.bash ] && source ~/mysql-bash-completion/mysql-completion.bash

You can also add it to your [dotfiles](https://github.com/florianeckerstorfer/dotfiles).


License
-------

[The MIT License](http://opensource.org/licenses/MIT)


Resources
---------

The following resources I found helpful:

- [An introduction to bash completion: part 1](http://www.debian-administration.org/article/An_introduction_to_bash_completion_part_1)
- [An introduction to bash completion: part 2](http://www.debian-administration.org/article/An_introduction_to_bash_completion_part_2)
- [More on Using the Bash Complete Command](http://www.linuxjournal.com/content/more-using-bash-complete-command)
- [Programmable Completion](http://www.gnu.org/software/bash/manual/bashref.html#Programmable-Completion)
- [Symfony2 autocomplete](https://github.com/KnpLabs/symfony2-autocomplete)


[![Bitdeli Badge](https://d2weczhvl823v0.cloudfront.net/florianeckerstorfer/mysql-bash-completion/trend.png)](https://bitdeli.com/free "Bitdeli Badge")

