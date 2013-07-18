require 'factory_girl'
require 'faker'


FactoryGirl.define do
  factory :user do |n| 
    sequence(:name) { |n| "John Doe #{n}" }
    sequence(:email) {|n| "fake_#{n}@email.com"}
    phone { 
        p = Faker::PhoneNumber.phone_number[0, 14] 
        # Remove everything after a space ' '
        index = p.index(' ');
        p = p[0, index] unless index.nil?
        p
    }
    date_of_birth { 21.years.ago }
    address { Faker::Address.building_number + " " +  Faker::Address.street_name + ", " + Faker::Address.zip_code +
                " " +  Faker::Address.city + "\nQLD" }
  end

    factory :hospital do
        title { Faker::Address.city + ' General' }
        general_phone { 
            p = Faker::PhoneNumber.phone_number[0, 12] 
            # Remove everything after a space ' '
            index = p.index(' ');
            p = p[0, index] unless index.nil?
            p
        }
        fax { 
            p = Faker::PhoneNumber.phone_number[0, 12] 
            # Remove everything after a space ' '
            index = p.index(' ');
            p = p[0, index] unless index.nil?
            p
        }
        physical_address { Faker::Address.building_number + " " +  Faker::Address.street_name + "\n" + Faker::Address.zip_code +
                " " +  Faker::Address.city + "\nQLD" }
        postal_address { Faker::Address.building_number + " " +  Faker::Address.street_name + "\n" + Faker::Address.zip_code +
                " " +  Faker::Address.city + "\nQLD" }
    end

    factory :service do
        sequence(:name) { |n| Faker::Name.name + " #{n}" }
        description { Faker::Lorem.sentences  }
        sequence(:hospital_id) { |n| n }
    end
end
