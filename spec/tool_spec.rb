require "spec_helper"

describe "-clone:from_repo:to_repo" do

  before(:each) do
    @template_reader = double("reader")
    @client = double("client")
    @github_labels = [Labelito::Label.new("name", "color")]
    allow(@client).to receive(:labels) { @github_labels }
    allow(@client).to receive(:update)
    @subject = Labelito::Tool.new(@client, @template_reader)
  end

  it "should create the read labels using the client" do
    expect(@client).to receive(:labels).with("fromrepo")
    expect(@client).to receive(:update).with(@github_labels, "torepo")
    @subject.clone("fromrepo", "torepo")
  end
end

describe "-create:template_path:repo" do

  before(:each) do
    @template_reader = double("reader")
    @template_labels = [Labelito::Label.new("name", "color")]
    allow(@template_reader).to receive(:read) { @template_labels }
    @client = double("client")
    allow(@client).to receive(:update)
    @subject = Labelito::Tool.new(@client, @template_reader)
  end

  it "should create the read labels using the client" do
    expect(@template_reader).to receive(:read).with("path")
    expect(@client).to receive(:update).with(@template_labels, "myrepo")
    @subject.create("path", "myrepo")
  end
end