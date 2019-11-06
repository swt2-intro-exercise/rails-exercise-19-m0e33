require 'rails_helper'

describe "edit author page", type: :feature do

  it "should edit author" do
    @author = Author.new({first_name: "Alan", last_name: "Turing", homepage: "http://wikipedia.org/Alan_Turing"})
    @author.save
    @author.last_name = "HAHA"
    @author.save
    expect(@author.name).to eq("Alan HAHA")
  end
end
