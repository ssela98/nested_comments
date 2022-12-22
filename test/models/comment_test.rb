require "test_helper"

class CommentTest < ActiveSupport::TestCase
  test "should create comment" do
    comment = Comment.new(post: posts(:one), content: "comment")

    assert comment.valid?
  end

  test "should not create comment without post" do
    comment = Comment.new(content: "comment")

    assert_not comment.valid?
    assert_equal ["Post must exist"], comment.errors.full_messages
  end

  test "should create comment with parent" do
    comment = Comment.new(post: posts(:one), parent: comments(:one), content: "comment")

    assert comment.valid?
  end
end
