require 'test_helper'

class CommunityTest < ActiveSupport::TestCase
  fixtures :communities

  test "name must not be blank" do
    community = Community.new(name: '',
      description: 'a new community',
      public: true,
      invite_status: 'open')
    assert community.invalid?
    assert_equal ["can't be blank"], community.errors[:name]

    community.name = 'Community Name'
    assert community.valid?
  end

  test "description must not be blank" do
    community = Community.new(name: 'Community Name',
      description: '',
      public: true,
      invite_status: 'open')
    assert community.invalid?
    assert_equal ["can't be blank"], community.errors[:description]

    community.description = 'The Best Community'
    assert community.valid?
  end

  def new_community(invite_status)
    Community.new(name: 'Community Name',
      description: 'A new community for teddy bears',
      public: true,
      invite_status: invite_status)
   end

  test "invite status must be a valid value" do
    ok = %w{ open admin_invite invite }
    bad = %w{ true false public private admin }

    ok.each do |status|
      assert new_community(status).valid?, "#{status} should be valid"
    end

    bad.each do |status|
      assert new_community(status).invalid?, "#{status} should be invalid"
    end
  end

  test "community is not valid without a unique name - i18n" do
    community = Community.new(name: communities(:sanfrancisco).name,
      description: 'City of the Golden Gate Bridge',
      public: true,
      invite_status: 'open')
    assert community.invalid?
    assert_equal [I18n.translate('errors.messages.taken')], community.errors[:name]
  end
end
