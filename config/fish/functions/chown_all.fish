function chown_all
  if test (count $argv) -eq 1
    echo "Setting to '$argv[1]'"
    set to_whom $argv[1]
  else
    echo "Defaulting to '"(whoami)"'"
    set to_whom (whoami)
  end

  sudo chown -R $to_whom .

end
