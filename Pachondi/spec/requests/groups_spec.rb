require 'spec_helper'

describe "Groups" do
  describe "GET /groups/index" do
    it "should visit the groups index" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get groups_index_path
      response.status.should be(200)
    end
  end
end
