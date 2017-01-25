export PATH=$PATH:$HOME/.bin
export RBENV_ROOT="${HOME}/.rbenv"

if [ -d "${RBENV_ROOT}" ]; then
  export PATH="${RBENV_ROOT}/bin:${PATH}"
  eval "$(rbenv init -)"
fi

# export RBENV_VERSION=2.1.0 # rbx-2.2.1

export JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64

# export EC2_HOME=$HOME/.bin/ec2_tools/
# export PATH=$PATH:$EC2_HOME/bin

# ssh-agent bash
