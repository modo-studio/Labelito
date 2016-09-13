require 'spec_helper'

describe '-read:path' do

  before(:all) do
    @subject = Labelito::TemplateReader.new
  end

  context "when the format is good" do
      it "should return an array with the labels" do
        labels = @subject.read(path_for_fixture("good_template.yml"))
        expect(labels.count).to eq(2)
      end
  end

  context "when the format is not good" do
    it "should raise an error" do
      expect {
        @subject.read(path_for_fixture("bad_template.yml"))
      }.to raise_error(Labelito::Errors::InvalidFormat)
    end
  end

  context "when the template doesn't exist" do
    it "should throw a TemplateNotFoundError" do
      expect {
        @subject.read(path_for_fixture("asdgas.yml"))
      }.to raise_error(Labelito::Errors::TemplateNotFound)
    end
  end

  def path_for_fixture(name)
    File.join(Dir.pwd, "spec/fixtures/#{name}")
  end

end