require 'rails_helper'

RSpec.feature "AddToCarts", type: :feature, js: true do

  # SETUP
  before :each do
    @category = Category.create! name: 'Apparel'

  
    @category.products.create!(
      name:  Faker::Hipster.sentence(3),
      description: Faker::Hipster.paragraph(4),
      image: open_asset('apparel1.jpg'),
      quantity: 10,
      price: 64.99
    )
  end


  scenario "They see all products and clicks on a product to add to the cart" do
    visit root_path

    expect(page).to have_content('My Cart (0)')


    page.all('form .fa.fa-shopping-cart').first.click

    expect(page).to have_content('My Cart (1)')

    save_and_open_screenshot
  end

end

