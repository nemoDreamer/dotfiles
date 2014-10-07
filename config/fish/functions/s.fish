function s --description 'Run command using sudo (use !! for last command)'

  if test (count $argv) -gt 0
    switch $argv[1]
      case '!!'
        if test (count $argv) -gt 1
          set cmd "command sudo $history[1] $argv[2..-1]"
        else
          set cmd "command sudo $history[1]"
        end
      case '*'
        set cmd "command sudo $argv"
    end
  else
    set cmd "command sudo fish"
  end

  eval $cmd
end
