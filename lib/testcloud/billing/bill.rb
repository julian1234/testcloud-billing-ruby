module Testcloud
  module Billing
    class Bill

      include Her::Model
      use_api Testcloud::Billing::HER

      collection_path "/customers/:customer_id/bills"

    end
  end
end
