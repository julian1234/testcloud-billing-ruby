module Testcloud
  module Billing
    class Customer

      include Her::Model
      use_api Testcloud::Billing::HER

      has_many :bills

    end
  end
end
