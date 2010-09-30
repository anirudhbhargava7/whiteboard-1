require 'spec_helper'

describe Page do

  before(:each) do
    @page = Page.new(:title => "Syllabus",
                     :updated_by_user_id => 1,
                     :tab_one_contents => "As a student in this course, you have the opportunity to practice principled software development in the context of an authentic project using an agile method. You track your progress against a plan and manage risks along the way. You prioritize features, do pair programming and follow test-driven development. You measure code coverage and code quality. Through this course, you experience the ins and outs of software engineering.")
  end


  it "is valid with valid attributes" do
    @page.should be_valid
  end

  it "is not valid without a title" do
    @page.title = nil
    @page.should_not be_valid
  end

  it "is not valid without an updated_by_user_id" do
    @page.updated_by_user_id = nil
    @page.should_not be_valid
  end

  it "should allow faculty to upload attachments"
#    setup :activate_authlogic
#    UserSession.create(users("FacultyFrank"))


  it "should show who did the last edit and when it occurred"

  it "is editable by faculty and staff" 
  #do
#    @page.should_not be_editable
#    user = stub('User', :is_staff => true)
#    @page.stub(:current_user).and_return(user)
#    @page.should be_editable
#   end

    it "is versioned"
#  do
#    @page.save
#    version_number = @page.version
#    @page.title = "A Brave New Title"
#    @page.save
#    new_version_number = @page.version
#    @page.version.should == version_number + 1
#  end

    it "should allow faculty to comment about the changes" do
    @page.version_comments = "A very simple change"
    @page.save
#This seems to simple
  end



  
end