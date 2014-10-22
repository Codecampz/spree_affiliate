Spree::Payment.class_eval do
  include AffiliateCredits

  after_save :update_affiliate, :if => "@affiliate_updated.nil?"

  def update_affiliate
    if order.state == 'complete' && order.payment_state == 'paid'
      user = order.user
      if user && user.affiliate_partner && user.orders.where(state: 'complete').count == 1
        sender = user.referred_by
        create_affiliate_credits(sender, user, 'purchase')
      end
    end
    @affiliate_updated = true
  end

end
