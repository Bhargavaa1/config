if [[ -f ~/.bash_aliases ]]; then
  source ~/.bash_aliases
fi

for file in $( cat .bash_delete )
do
  rm -rf $file
done

PS1='\[\033[1;36m\]\u\[\033[1;31m\]@\[\033[1;32m\]\h:\[\033[1;35m\]\w\[\033[1;31m\]\$\[\033[0m\] '

