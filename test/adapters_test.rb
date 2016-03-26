require "test_helper"

describe Vanity::Adapters do
  describe ".establish_connection" do
    it "returns nil when not autoconnecting" do
      Vanity::Autoconnect.stubs(:should_connect?).returns(false)
      adapter = Vanity::Adapters.establish_connection({})
      assert_nil adapter
    end

    it "returns nil using active record and migrating" do
      Rake.stubs(:application).returns(stub(:top_level_tasks => ['db:migrate']))
      adapter = Vanity::Adapters.establish_connection(adapter: 'active_record')
      refute_nil adapter
    end
  end
end
