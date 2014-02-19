export PATH=$PATH:$HOME/.bin
export RBENV_ROOT="${HOME}/.rbenv"

if [ -d "${RBENV_ROOT}" ]; then
  export PATH="${RBENV_ROOT}/bin:${PATH}"
  eval "$(rbenv init -)"
fi

# export RBENV_VERSION=2.1.0 # rbx-2.2.1

export JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64/jre

export HP_EC2_HOST=ec2-54-194-182-171.eu-west-1.compute.amazonaws.com

# export EC2_HOME=$HOME/.bin/ec2_tools/
# export PATH=$PATH:$EC2_HOME/bin
