#
# AUTO GENERATED BY 'fish-lsp'
#
#   * Any command should generate the completions file
#
#      >_ fish-lsp complete > ~/.config/fish/completions/fish-lsp.fish
#      >_ fish-lsp complete --fish > ~/.config/fish/completions/fish-lsp.fish
#      >_ yarn install # from inside the 'fish-lsp' 
#
#   * You can test the completions by editing:
#
#         ~/.config/fish/completions/fish-lsp.fish 
#
#     or by using the command:
#
#      >_ fish-lsp complete
#
#     to visually check what is wrong
#
#   * For more info, try editing the generated output inside:
#
#         ~/...install_path.../fish-lsp/src/utils/get-lsp-completions.ts 
#


# Returns exit code of 0 if any command (argv[1..-1]) appears once, ignores flags.
function __fish_lsp_using_command
    set -l commands $argv
    set -l cmd (commandline -opc)
    if test (count $cmd) -gt 1
        set -l command_seen_once 1
        for c in $cmd[2..-1]
            switch $c
                case '-*'
                    continue
                case $commands
                    # If the command is seen more than once then return 1
                    if test $command_seen_once -eq 1
                        set command_seen_once 0
                    else
                        return 1
                    end
                case '*'
                    if test $command_seen_once -eq 0
                        return 0
                    else
                        return 1
                    end
            end
        end
        return $command_seen_once
    end
    return 1
end

# disable file completions
complete -c fish-lsp -f

complete -c fish-lsp -n "__fish_use_subcommand" -a "
start\t'subcmd to start the lsp using stdin/stdout'
logger\t'test the logger by displaying it'
info\t'show the build info of fish-lsp'
url\t'show a helpful url related to the fish-lsp'
complete\t'generate completions file for ~/.config/fish/completions'
env\t'generate fish shell env variables to be used by lsp'"

# fish-lsp --<TAB>
complete -c fish-lsp -n 'not __fish_lsp_using_command start logger info url complete env' -s v -l version      -d 'Show lsp version'
complete -c fish-lsp -n 'not __fish_lsp_using_command start logger info url complete env' -s h -l help         -d 'Show help information'
complete -c fish-lsp -n 'not __fish_lsp_using_command start logger info url complete env'      -l help-all     -d 'Show all help information'
complete -c fish-lsp -n 'not __fish_lsp_using_command start logger info url complete env'      -l help-short   -d 'Show short help information'
complete -c fish-lsp -n 'not __fish_lsp_using_command start logger info url complete env'      -l help-man     -d 'Show raw manpage'


set __fish_lsp_subcommands start

# fish_lsp start --<TAB> 
complete -c fish-lsp -n '__fish_seen_subcommand_from $__fish_lsp_subcommands' -a "
--dump\t'dump output and stop server'
--enable\t'enable feature'
--disable\t'disable feature'"

# fish-lsp url --<TAB>
complete -c fish-lsp -n __fish_use_subcommand -xa url -d "url's for fish-lsp cli"
complete -c fish-lsp -n '__fish_lsp_using_command url; and not __fish_contains_opt repo'          -l repo          -d 'show git repo url'
complete -c fish-lsp -n '__fish_lsp_using_command url; and not __fish_contains_opt git'           -l git           -d 'show git repo url'
complete -c fish-lsp -n '__fish_lsp_using_command url; and not __fish_contains_opt npm'           -l npm           -d 'show npmjs.com url'
complete -c fish-lsp -n '__fish_lsp_using_command url; and not __fish_contains_opt homepage'      -l homepage      -d 'show website url'
complete -c fish-lsp -n '__fish_lsp_using_command url; and not __fish_contains_opt contributions' -l contributions -d 'show git contributions url'
complete -c fish-lsp -n '__fish_lsp_using_command url; and not __fish_contains_opt wiki'          -l wiki          -d 'show git wiki url'
complete -c fish-lsp -n '__fish_lsp_using_command url; and not __fish_contains_opt issues'        -l issues        -d 'show git issues url'
complete -c fish-lsp -n '__fish_lsp_using_command url; and not __fish_contains_opt report'        -l report        -d 'show git issues url'
complete -c fish-lsp -n '__fish_lsp_using_command url; and not __fish_contains_opt discussions'   -l discussions   -d 'show git discussions url'
complete -c fish-lsp -n '__fish_lsp_using_command url; and not __fish_contains_opt clients-repo'  -l clients-repo  -d 'show git clients-repo url'
complete -c fish-lsp -n '__fish_lsp_using_command url; and not __fish_contains_opt sources'       -l sources       -d 'show useful url list of sources'

# fish-lsp complete <TAB>
complete -c fish-lsp -n __fish_use_subcommand -a complete -d 'completion utils for fish-lsp cli'
complete -c fish-lsp -n '__fish_lsp_using_command complete; and not __fish_contains_opt features' -l features  -d 'show features'
complete -c fish-lsp -n '__fish_lsp_using_command complete; and not __fish_contains_opt fish'     -l fish      -d 'show completion/fish-lsp.fish'
complete -c fish-lsp -n '__fish_lsp_using_command complete; and not __fish_contains_opt names'    -l names     -d 'show feature names of completions'
complete -c fish-lsp -n '__fish_lsp_using_command complete; and not __fish_contains_opt toggles'  -l toggles   -d 'show feature names of completions'

# fish-lsp info --<TAB>
complete -c fish-lsp -n '__fish_lsp_using_command info; and not __fish_contains_opt bin'           -l bin            -d 'show the binary path'
complete -c fish-lsp -n '__fish_lsp_using_command info; and not __fish_contains_opt repo'          -l repo           -d 'show the repo path'
complete -c fish-lsp -n '__fish_lsp_using_command info; and not __fish_contains_opt time'          -l time           -d 'show the build-time'
complete -c fish-lsp -n '__fish_lsp_using_command info; and not __fish_contains_opt env'           -l env            -d 'show the env-variables used'
complete -c fish-lsp -n '__fish_lsp_using_command info; and not __fish_contains_opt lsp-version'   -l lsp-version   -d 'show the npm package for the lsp-version'
complete -c fish-lsp -n '__fish_lsp_using_command info; and not __fish_contains_opt capabilities'  -l capabilities   -d 'show the lsp capabilities implemented' 
complete -c fish-lsp -n '__fish_lsp_using_command info; and not __fish_contains_opt man-file'      -l man-file       -d 'show man file path'
complete -c fish-lsp -n '__fish_lsp_using_command info; and not __fish_contains_opt logs-file'     -l logs-file      -d 'show logs.txt file path'
complete -c fish-lsp -n '__fish_lsp_using_command info; and not __fish_contains_opt more'          -l more           -d 'show more info'
complete -c fish-lsp -n '__fish_lsp_using_command info; and not __fish_contains_opt time-startup'  -l time-startup   -d 'show startup timing info'

# fish-lsp logger --<TAB>
complete -c fish-lsp -n __fish_use_subcommand -x -a logger -d 'logger utilities'
complete -c fish-lsp -n '__fish_lsp_using_command logger; and not __fish_contains_opt -s s show'  -s s -l show   -d 'show the "logs.txt" file'
complete -c fish-lsp -n '__fish_lsp_using_command logger; and not __fish_contains_opt -s c clear' -s c -l clear  -d 'clear the "logs.txt" file'
complete -c fish-lsp -n '__fish_lsp_using_command logger; and not __fish_contains_opt -s q quiet' -s q -l quiet  -d 'only write to "logs.txt" file'
complete -c fish-lsp -n '__fish_lsp_using_command logger; and not __fish_contains_opt -s d date'  -s d -l date   -d 'write date to "logs.txt" file'
complete -c fish-lsp -n '__fish_lsp_using_command logger; and not __fish_contains_opt config'          -l config -d 'show the logger config'

# print all $fish_lsp_submcommands
function _fish_lsp_get_features
  printf %b\n complete hover rename reference formatting codeAction codeLens folding signature executeCommand inlayHint highlight diagnostic
end

# fish-lsp env --<TAB>
complete -c fish-lsp -n __fish_use_subcommand -x -a env -d 'generate fish shell env variables to be used by lsp'
complete -c fish-lsp -n '__fish_lsp_using_command env; and not __fish_contains_opt -s s show; and not __fish_contains_opt -s c create' -s s -l show        -d 'show the current fish-lsp env variables'
complete -c fish-lsp -n '__fish_lsp_using_command env; and not __fish_contains_opt -s c create; and not __fish_contains_opt -s s show' -s c -l create      -d 'build initial fish-lsp env variables'
complete -c fish-lsp -n '__fish_lsp_using_command env; and not __fish_contains_opt no-comments'                                             -l no-comments -d 'skip outputting comments'
complete -c fish-lsp -n '__fish_lsp_using_command env; and not __fish_contains_opt no-global'                                               -l no-global   -d 'use local exports'
complete -c fish-lsp -n '__fish_lsp_using_command env; and not __fish_contains_opt no-local'                                                -l no-local    -d 'do not use local scope (pair with --no-global)'
complete -c fish-lsp -n '__fish_lsp_using_command env; and not __fish_contains_opt no-export'                                               -l no-export   -d 'do not export variables'

# COMPLETION: fish-lsp subcmd <option> [VALUE] (`fish-lsp start --enable ...`)
complete -c fish-lsp -n '__fish_seen_subcommand_from $__fish_lsp_subcommands' -l enable -xa '(_fish_lsp_get_features)'
complete -c fish-lsp -n '__fish_seen_subcommand_from $__fish_lsp_subcommands' -l disable -xa '(_fish_lsp_get_features)'

# built by any of the commands: 
# fish-lsp complete > ~/.config/fish/completions/fish-lsp.fish
# fish-lsp complete > $fish_complete_path[1]/fish-lsp.fish
# fish-lsp complete > $__fish_user_data_dir[1]/fish-lsp.fish
