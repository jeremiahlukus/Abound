namespace :sample do
#  Rails.env = 'development'  # this rake tasks should only be run in development
  desc "TODO"
  task data: :environment do
    User.destroy_all
    Listing.destroy_all
    Order.destroy_all

    puts "creating users..."
    seller = FactoryGirl.create(:user, email: 'seller@example.com', name: "Seller")
    buyer = FactoryGirl.create(:user, email: 'buyer@example.com', name: "Buyer")

    puts "creating listings..."
    listing1 = FactoryGirl.create(:listing, user: seller)

    puts "creating orders..."
    order = FactoryGirl.create(:order, seller: seller, listing: listing1)
  end

end
