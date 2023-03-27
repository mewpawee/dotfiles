set fish_greeting ""
set -gx TERM xterm-256color

#Bob the fish theme
set -g theme_display_git yes
set -g theme_display_cmd_duration yes
set -g theme_title_display_process yes
set -g theme_date_format "+%a %H:%M"
set -g theme_date_timezone Asia/Bangkok
set -g theme_avoid_ambiguous_glyphs yes
set -g theme_powerline_fonts yes
set -g theme_nerd_fonts yes
set -g theme_show_exit_status yes
set -g theme_display_jobs_verbose yes
#set -g default_user your_normal_user
set -g theme_color_scheme nord
set -g fish_prompt_pwd_dir_length 0
set -g theme_project_dir_length 1
set -g theme_newline_cursor yes
set -g theme_newline_prompt '$ '
set -gx CLICOLOR 1

if status is-interactive
    # Commands to run in interactive sessions can go here
end

#EXA Colors
set -gx LS_COLORS "di=36"
set -gx EXA_COLORS "da=1;35"

#alias
alias vi="lvim"

# Specific Config for each distro
switch (uname)
  case Darwin
    source (dirname (status --current-filename))/config-osx.fish
  case Linux
    source (dirname (status --current-filename))/config-linux.fish
  case '*'
    source (dirname (status --current-filename))/config-windows.fish
end

# need this for yarn with asdf
export NPM_TOKEN=""

#Export PATH
fish_add_path ~/.foundry/bin
fish_add_path ~/.yarn/bin
fish_add_path ~/.asdf/installs/rust/stable/bin
