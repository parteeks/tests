require 'spec_helper'

describe ApplicationController do
	include Devise::TestHelpers
	describe "GET #index" do 
		it "redirects to /users/sign_in with status 302" do 
			get :index 
			#response.should render_template :new
			expect(response.status).to eq(302)
		end
	end
end
describe ApplicationController do
	include Devise::TestHelpers
	handle_session
	describe "GET #index" do 
		context "with exixting session" do
			it "loads the home page with status 200 "  do
				get :index
				response.should render_template :index
				expect(response.status).to eq(200)
			end
		end
	end
end