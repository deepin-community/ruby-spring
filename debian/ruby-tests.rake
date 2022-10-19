require 'gem2deb/rake/testtask'

ENV["RAILS_VERSION"] = '>= 5.0'

Gem2Deb::Rake::TestTask.new do |t|
  t.libs = ['test']
  t.test_files = FileList['test/unit/**/*_test.rb'] + FileList['test/unit/**/test_*.rb']
end
