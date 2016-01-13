require "rails_helper"
describe User do
  it "should contain the required validators" do
    user = User.new
    expect(user.valid?).to be false
    expect([:login_id, :first_name, :password]).to match_array(user.errors.keys)
  end
end
