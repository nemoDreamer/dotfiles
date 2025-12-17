set -g default_user philip

# prompt length:
# set -g fish_prompt_pwd_dir_length 3
# set -g theme_project_dir_length 1

# colors & fonts:
set -g theme_color_scheme terminal
set -g theme_powerline_fonts no
set -g theme_nerd_fonts yes

# git options:
set -g theme_display_git_ahead_verbose yes
set -g theme_display_git_dirty_verbose yes
# set -g theme_display_git_default_branch yes
# set -g theme_git_default_branches main master trunk
# set -g theme_git_worktree_support yes

# enhancements:
set -g theme_display_ruby yes
set -g theme_display_nvm yes
set -g theme_display_node always
set -g theme_display_vi no

set -g theme_newline_cursor yes
# set -g theme_prompt_break no # <- NOTE: not official release (branch: prompt-break)

# disable vi:
set -g fish_vi_mode_prompt no
set -g fish_vi_key_bindings no

# function fish_mode_prompt
# end
