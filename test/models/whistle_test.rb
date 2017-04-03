require "test_helper"

describe Whistle do

  subject { Whistle }

  describe "db" do

    specify "columns & names" do

      must_have_column(:singular_name)
      must_have_column(:plural_name)
      must_have_column(:whistle_type)
      must_have_column(:duckspeak_id, :integer)
    end
  end

  specify "associations" do

    must_belong_to(:duckspeak)
    must_have_many(:quacks)
  end
end
