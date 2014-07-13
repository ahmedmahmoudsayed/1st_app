require 'rails_helper'

RSpec.describe User, :type => :model do
	before {@User =User.new(name:"Example",email:"ay_kalam@Example.com",password: "123abc",password_confirmation:"eeeeeee")}
	subject {@User}

	it {should respond_to(:name)}
	it {should respond_to(:email)}
	it {should respond_to(:password)}
	it {should respond_to(:password_confirmation)}
	it{should be_valid}

	describe "when name is not present"do
		before {@User.name=" "}
		it {should_not be_valid}
	end
	describe "when email is not present"do
		before {@User.email=" "}
		it {should_not be_valid}
	end

	describe "when name is too long"do
		before {@User.name="a" * 41 }
		it {should_not be_valid}
	end
	describe "when password is too long"do
		before {@User.password="a" * 9 }
		it {should_not be_valid}
	end
	describe "when password_confirmation is not present"do
		before {@User.password_confirmation=" "}
		it {should_not be_valid}
		end
	describe "when password is not present"do
		before {@User.password=" "}
		it {should_not be_valid}
	end
	describe "when email address is already taken"do
		before do
			user_with_same_email=@User.dup
			user_with_same_email.email=@User.email.upcase
			user_with_same_email.save
		end
		it {should_not be_valid}
	end

	describe "when email format is invalid"do
		it "should be invalid" do
			adresses=%w[user.foo,com user_aa_Aaa.org Example.user@foo.]
			adresses.each do |invalid_address|
				@User.email=invalid_address
				puts @User.email
				@User.should_not be_valid
			end
		end
	end
	describe "when email format is valid"do
		it "should be valid" do
			adresses=%w[user.ahmed@foo.com A_ay_@f.b.org  ]
			adresses.each do |valid_address|
				@User.email=valid_address
				puts @User.email
				@User.should be_valid
			end
		end
	end
end 


