module Testcloud
  module Billing
    class Customer

      include Her::Model
      use_api Testcloud::Billing::HER

      has_many :bills
      has_one :sepa_data
      has_one :credit_card_data

      accepts_nested_attributes_for :sepa_data
      accepts_nested_attributes_for :credit_card_data

    end
  end
end
