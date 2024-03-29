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
    before do
      Item.create
    end
    it do
      user.draw_gacha!.class.should == Item
    end
  end
end
