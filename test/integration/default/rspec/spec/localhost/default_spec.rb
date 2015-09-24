require 'spec_helper'

#-----------------------------------------test for nginx
describe package("nginx") do
  it { should be_installed }
end

describe port(80) do
  it { should be_listening }
end

#-----------------------------------------test for wget
describe package("wget") do
  it { should be_installed }
end

#-----------------------------------------test for galaxy
describe user("galaxy") do
  it { should exist } # ユーザが存在する
end

describe port(8080) do
  it { should be_listening }
end

# describe command('/sbin/chkconfig | grep galaxy') do
#   its(:stdout) { should include('galaxy') }
# end
# describe "galaxy service" do
#   it "has a running service of httpd" do
#     expect(service("galaxy")).to be_running
#   end
# end
#-----------------------------------------test for java
# describe package("java-1.7.0-openjdk-devel") do
#   it { should be_installed }
# end

describe command('java -version') do
  its(:stderr) { should match /.*1.7/ }
end
