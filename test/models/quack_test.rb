require "test_helper"

describe Quack do

  subject { Quack }

  describe "db" do

    specify "columns & names" do

      must_have_column(:content)
      must_have_column(:whistle_id, :integer)
    end
  end

  specify "associations" do

    must_belong_to(:whistle)
  end
end
