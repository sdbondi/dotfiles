function md() {
  mkdir -p $1 && cd $_
}

function hpec2() {
  INSTANCE_HOST=ec2-54-194-223-96.eu-west-1.compute.amazonaws.com
  ssh -i ~/.ec2/heypresto/administrator.pem ubuntu@$INSTANCE_HOST
}
