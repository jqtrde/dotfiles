# via https://github.com/danhper/fish-ssh-agent
# described in https://stianlagstad.no/2020/03/learning-how-to-use-the-ssh-agent-with-fish/

if test -z "$SSH_ENV"
    set -xg SSH_ENV $HOME/.ssh/environment
end

if not __ssh_agent_is_started
    __ssh_agent_start
end
