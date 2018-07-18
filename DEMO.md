# Pre-work

Checkout all of the branches.

`git clone git@github.com:nathenharvey/testing-ansible-with-inspec.git`

`cd testing-ansible-with-inspec`

`git checkout -b steps/00-playbook-and-kitchen origin/steps/00-playbook-and-kitchen`

`git checkout -b steps/01-inspec-tests origin/steps/01-inspec-tests`

`git checkout -b steps/02-inspec-verifier origin/steps/02-inspec-verifier`

`git checkout -b steps/03-no-telnetd origin/steps/03-no-telnetd`

`git checkout -b steps/04-linux-baseline origin/steps/04-linux-baseline`

`git checkout -b steps/05-my-linux-baseline origin/steps/05-my-linux-baseline`

`git checkout -b steps/06-linux-hardening origin/steps/06-linux-hardening`

`kitchen list`

`kitchen create`

`ssh-add \`grep ssh_key .kitchen/default-ubuntu-1604.yml|awk '{gsub(/"/, "", $2); print $2}'\``

`git checkout steps/00-playbook-and-kitchen`

`ansible-playbook -i hosts site.yml`

`kitchen login`

`ps -ef | grep apache`

`curl http://localhost`

`exit`

`open http://localhost:8080`

`kitchen converge`

`kitchen login`

`ps -ef | grep apache`

`curl http://localhost`

`exit`

`open http://localhost:8080`

`git checkout steps/01-inspec-tests`

`inspec exec -t ssh://vagrant@127.0.0.1:2222 test/integration/default/default_spec.rb`

`inspec shell -t ssh://vagrant@127.0.0.1:2222`

```
inspec> describe port(80) do
inspec>   it { should be_listening }
inspec> end
```

`git checkout steps/02-inspec-verifier`

`kitchen verify`

`git checkout steps/03-no-telnetd`

`kitchen verify`

`git checkout steps/04-linux-baseline`

`kitchen verify`

`git checkout steps/05-my-linux-baseline`

`kitchen verify`

`git checkout steps/06-linux-hardening`

`ls roles`

`cat site.yml`

`kitchen converge`

`kitchen verify`

`cat my-linux-baseline/controls/my-linux-controls.rb`

`kitchen test`

