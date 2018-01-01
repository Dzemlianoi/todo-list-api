RSpec.describe Api::V1::Auth::SessionResource, type: :resource do
  let(:user) { build_stubbed(:user) }

  subject { described_class.new(user, {}) }
end
