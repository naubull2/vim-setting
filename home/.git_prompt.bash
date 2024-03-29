c_cyan=`tput setaf 6`
c_red=`tput setaf 1`
c_green=`tput setaf 2`
c_sgr0=`tput sgr0`

parse_git_branch ()
{
       	if git rev-parse --git-dir >/dev/null 2>&1
       	then
       		gitver=$(git branch 2>/dev/null| sed -n '/^\*/s/^\* //p')
       	else
       		return 0;
       	fi
       	echo -e $gitver
}
open_br()
{
       	if git rev-parse --git-dir >/dev/null 2>&1
       	then
       		echo -e ' ('
       	else
       		return 0;
       	fi
}
close_br()
{
       	if git rev-parse --git-dir >/dev/null 2>&1
       	then
       		echo -e ')'
       	else
       		echo -e ']'
       	fi
}
branch_color ()
{
       	if git rev-parse --git-dir >/dev/null 2>&1
       	then
       		color=""
       		if git diff --quiet 2>/dev/null >&2
       			then
       				color="${c_green}"
       			else
       				color=${c_red}
       		fi
       	else
       		return 0
       	fi
       	echo -ne $color
}
export PS1='\u@\h\[${c_sgr0}\] \W\[${c_sgr0}\]$(open_br)\[$(branch_color)\]$(parse_git_branch)\[${c_sgr0}\]$(close_br)\$ '
