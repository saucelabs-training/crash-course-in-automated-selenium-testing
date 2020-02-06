task default: :parallel_run

ENV['SAUCE_START_TIME'] = Time.now.to_i.to_s

task :parallel_run do
  system 'parallel_rspec spec'
end
