abbr -a e nvim
abbr -a gc git checkout
abbr -a git-ar 'git log --format=fuller --ignore-space-change --patience --author="Lukasz Stanislawski" --after=(date +%Y-%m-01) -M90% -C90% --find-copies-harder --patch'

#Tizen Studio paths
fish_add_path /home/stanluk/tizen-studio/tools/ide/bin/
fish_add_path /home/stanluk/tizen-studio/platforms/tizen-6.0/common/tidl/
fish_add_path /home/stanluk/tizen-studio/tools/

function fish_greeting
	df -l -h | grep -E 'dev/(xvda|sd|mapper)'
end
