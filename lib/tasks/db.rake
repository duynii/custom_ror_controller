require 'factory_girl'

namespace :db do
  desc "Populate the database with test data."
  task pop_hospitals: :environment do
    puts 'Cleaning database'
    Rake::Task['db:reset'].invoke
    puts 'Populating 100 hospitals'
    100.times do
        hos = FactoryGirl.create(:hospital);
        p hos
        ser = FactoryGirl.create(:service);
        p ser
    end
  end

end

