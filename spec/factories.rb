FactoryGirl.define do
	
	factory :user do
		email "Jan@test.com"
		password "12345678"

		factory :user_full_profile do
			first_name "Jan"
			last_name "Boehmerman"
		end	

	end	

	factory :product do
		name "Amazingwheels"

		factory :product_full_profile do
			description "Blub"
			image_url "bike.jpg"
			colour "sparkling-pink"
			price "100"

			factory :product_with_comments do
				
				transient do
					comments_count 1
				end
				
				after(:create) do |user, evaluator|
					create_list(:comment, evaluator.comments_count, user: user)
				end
			end				
		end

	end

	factory :comment do # product has_many comments: each comment belongs_to a product
		body "blablub"
		rating "4"
		product
	end

	factory :order do
		user_id "1"
		product_id "1"
		total "100"
	end



end