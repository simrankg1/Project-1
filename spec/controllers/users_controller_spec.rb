require "spec_helper"


describe UsersController do

	describe "GET new" do
		it "should render :new template" do
			get :new
			expect(response).to render_template("new")
		end

		it "should assign user" do
			new_user = mock_model("User")
			allow(User).to receive(:new).and_return(new_user)
			get :new
			expect(assigns(:user)).to eq(new_user)
		end

	end

	describe "Get show" do
		it "should try to find a user" do
			mock_model("User")
			expect(User).to receive(:find)
			get :show, {id: 1}
		end

		it "should try to find a user with id=1" do
			expect(User).to receive(:find).with("1")
			get :show, {id: "1"}
		end

		it "should assign @user" do
			user = mock_model("User")
			allow(User).to receive(:find).and_return(user)
			get :show, {id: 1}
			expect(assigns(:user)).to eq(user)
		end

		it "should render_template :show" do
			user = mock_model("User")
			allow(User).to receive(:find)
			get :show, {id: 1}
			expect(response).to render_template("show")
		end
	end


	describe "POST create" do
		it "should create a new_user" do
			new_user = mock_model("User")
			allow(User).to receive(:new).and_return(new_user)
			post :new, {user: {email: "blah"}}
			expect(assigns(:user)).to eq(new_user)
		end

		it "should save a new_user" do
			new_user = mock_model("User")
			allow(User).to receive(:new).and_return(new_user)
			post :new, {user: {email: "blah"}}
			expect(new_user).to receive(:save).and_return(true)
		end
	end	
end