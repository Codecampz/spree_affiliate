class CreateSpreeAffiliateRates < ActiveRecord::Migration
  def self.up
    create_table :spree_affiliate_rates do |t|
      t.integer :id
      t.decimal :min
      t.decimal :max
      t.decimal :rate
      t.timestamps
    end
  end

  def self.down
    drop_table :spree_affiliate_rates
  end
end
