module Testcloud
  module Billing
    class CreditCardDatum

      include Her::Model
      use_api Testcloud::Billing::HER

    end
  end
end
