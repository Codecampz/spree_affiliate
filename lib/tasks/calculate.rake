namespace :spree_affiliates do
  desc "Calculate affiliates"
  task :calculate  => :environment do

    #
    period = 'Quarter'
    Spree::User.all.each do |user|
      next if user.affiliates.empty?
      beginning = Time.now.beginning_of_quarter
      start = (beginning - 1.day).beginning_of_quarter
      Spree::StoreCredit.find_or_create_by(user_id: user.id, created_at: beginning) do |credit|
        # TODO : check if this query is correct
        crat = Spree::Order.arel_table[:created_at]
        state = Spree::Order.arel_table[:state]
        pstate = Spree::Order.arel_table[:payment_state]
        amount = user.referred_users.includes(:orders).where(
          crat.in(start..start.end_of_quarter).and(state.eq('complete')).and(pstate.eq('paid'))).sum(:total)
        # TODO: find rate
        min = Spree::AffiliateRate.arel_table[:min]
        max = Spree::AffiliateRate.arel_table[:max]
        rate = Spree::AffiliateRate.find_by(min.lteq(amount).and(max.gteq(amount))).rate
        credit.amount = amount * rate
        credit.reason = "#{period} affiliate credits"
        credit.save!
      end
    end
  end
end
