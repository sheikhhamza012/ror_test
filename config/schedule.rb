# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

# Example:
#
# set :output, "/path/to/my/cron_log.log"
#
#job_type :mail, '/home/mehroz/railsTest/instagramclone/app/jobs/mail_to.rb :user'
every :minute do
    puts "hello"
    runner  'UserMailer.crontest.deliver'
    command 'echo "heelllp"'
    puts "bye"
end
#
# every 4.days do
#   runner "AnotherModel.prune_old_records"
# end

# Learn more: http://github.com/javan/whenever
