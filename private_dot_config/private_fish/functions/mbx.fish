#!/usr/bin/env fish

# This file is the `mbx` entry-point

function mbx
  # Make a temporary file
  set --local tmp_file (mktemp)
  set --local env_file {$tmp_file}.sh

  # Argument parsing and all functionality is controlled by node.js
  # _mbxcli executable is expected to have been installed globally via
  # npm link or npm install -g
  _mbxcli $argv --source-env-file {$env_file}

  # If node.js decided that any environment variables need setting, it writes
  # them to the ${env_file}. Then this function can load them into shell env.
  [ -f {$env_file} ] && source {$env_file} && rm -f {$env_file}

  rm -f {$tmp_file}
end
