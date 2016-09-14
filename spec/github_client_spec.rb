require 'spec_helper'

describe "-labels" do

  before(:each) do
    @octo_client = double("octo_client")
    @labels = [{:name => "name", :color => "color"}]
    @subject = Labelito::GithubClient.new(@octo_client)
    allow(@octo_client).to receive(:labels) { @labels }
  end

  it "should fetch the labels and map them" do
    expect(@octo_client).to receive(:labels).with("repo")
    labels = @subject.labels("repo")
    expect(labels[0].name).to eq("name")
    expect(labels[0].color).to eq("color")
  end
end

describe "-update" do
  before(:each) do
    @octo_client = double("octo_client")
    @labels = [{:name => "name", :color => "color"}]
    @subject = Labelito::GithubClient.new(@octo_client)
    allow(@octo_client).to receive(:labels) { @labels }
    allow(@octo_client).to receive(:delete_label)
    allow(@octo_client).to receive(:add_label)
  end

  it "should delete the old labels and create the new ones" do
    expect(@octo_client).to receive(:labels).with "myrepo"
    expect(@octo_client).to receive(:delete_label).with "myrepo", "name"
    expect(@octo_client).to receive(:add_label).with "myrepo", "newname", "color"
    new_labels = [Labelito::Label.new("newname", "color")]
    @subject.update(new_labels, "myrepo")
  end
end