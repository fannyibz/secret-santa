require "test_helper"

class UserMailerTest < ActionMailer::TestCase
  test "you_are_santa" do
    mail = UserMailer.you_are_santa
    assert_equal "You are santa", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
