# encoding: UTF-8
require 'spec_helper'
 
describe TagsController, type: :controller do
  describe "#index", "with javascript format" do
    before do
      xhr :get, :index, format: :js, term: 'sof'
    end
      
    subject { response }

    its(:content_type) { should == "text/javascript" }
  end
end
