module ControllerMacros
	def handle_session
	    before(:each) do
	      #@request.env["HTTP_ACCEPT"] = 'application/json'
	      @user = User.new
	      #@user.firstname = "firstname"
	      #@user.lastname = "lastname"
	      @user.email = "test@credihealth.com"

	      @user.password='new life'
	      #@user.skip_confirmation!
	      @user.save
	      #@user.confirm!
	      @request.env["devise.mapping"] = Devise.mappings[:user]
	      sign_in @user
	      subject.current_user.should_not eq(nil)
	    end
	    after(:each) do
	      sign_out @user
	    end
	end
end