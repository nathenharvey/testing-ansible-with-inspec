# # encoding: utf-8

describe service('apache2') do
  it {should be_running }
end

describe port(80) do
  it { should be_listening }
end

describe http('http://localhost', enable_remote_worker: true) do
  its('status') { should cmp 200 }
  its('body') { should match /Configuration Management Camp/ }
end
