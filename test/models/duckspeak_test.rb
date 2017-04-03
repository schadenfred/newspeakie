require "test_helper"

describe Duckspeak do

  subject { Duckspeak }

  describe "db" do

    specify "columns & names" do

      must_have_column(:name)
      must_have_column(:description)
      must_have_column(:tagline)
    end
  end

  specify "associations" do

    must_have_many(:whistles)
  end
end
