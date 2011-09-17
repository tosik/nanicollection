require 'spec_helper'

describe User do
  let(:user) { User.create }

  context do
    before do
      Item.create
      user.draw_gacha!
    end
    it do
      user.items.length.should == 1
    end
  end
  context do
    let!(:item) { Item.create }
    it do
      user.draw_gacha!.should == item
    end
  end
end
