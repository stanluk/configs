abbr -a e nvim
abbr -a gc git checkout
abbr -a git-ar 'git log --format=fuller --ignore-space-change --patience --author="Lukasz Stanislawski" --after=(date +%Y-%m-01) -M90% -C90% --find-copies-harder --patch'

set -Ua fish_user_paths /home/stanluk/tizen-studio/tools/ide/bin/
set -Ua fish_user_paths /home/stanluk/tizen-studio/platforms/tizen-6.0/common/tidl/
set -Ua fish_user_paths /home/stanluk/tizen-studio/tools/

function fish_greeting
	df -l -h | grep -E 'dev/(xvda|sd|mapper)'
end
