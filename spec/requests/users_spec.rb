require 'spec_helper'

describe "Users" do
  describe "GET /users/new" do
  	it "should have a new" do
      get new_user_path
      expect(response.status).to be(200)
    end

    it "should render a :new template" do
      get new_user_path
      expect(response).to render_template("new")
    end
  end
end
