require 'spec_helper'

describe '+from_github_label' do

  it "should initialize the label if the properties are properly passed" do
    dictionary = {:name => "test", :color => "color"}
    label = Labelito::Label.from_github_label(dictionary)
    expect(label.name).to eq("test")
    expect(label.color).to eq("color")
  end

  it "should return nil if the name key is missing" do
    dictionary = {:color => "color"}
    label = Labelito::Label.from_github_label(dictionary)
    expect(label).to be_nil
  end

  it "should return nil if the color key is missing" do
    dictionary = {:name => "name"}
    label = Labelito::Label.from_github_label(dictionary)
    expect(label).to be_nil
  end

end