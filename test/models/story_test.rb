require 'test_helper'

class StoryTest < ActiveSupport::TestCase

  test "is not valid without a name" do
    s = Story.create(
          name: nil,
          link: 'http://www.testsubmission.com/'
        )
    refute s.valid?
  end

  test "is not valid without a link" do
    s = Story.create(
          name: 'whatever',
          link: ''
        )
    assert_not s.valid?
  end

  test "is valid with required attributes" do
    s = Story.create(
          name: 'Whatever name as long as it is not nil or empty!',
          link: 'http://www.whatever.com/'
        )
    assert s.valid?
  end
end
