require 'spec_helper'

describe "other_reports/show.html.haml" do
  before(:each) do
    @other_report = assign(:other_report, stub_model(OtherReport,
      :details => "Details",
      :user_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Details/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
