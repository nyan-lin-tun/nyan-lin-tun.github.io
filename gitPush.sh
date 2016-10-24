#!/usr/bin/env bash

commit_text(){
	echo -n "Enter commit: "
	read commit
}
commit_text
git_push(){
	git add .
	git commit -m "$commit"
	git push origin master
}
check_commit(){
if [[ -z "$commit" ]]
	then
		echo "You have not commit"
		commit_text
		check_commit
	else
		git_push
		echo "Complete task"
fi
}
check_commit

