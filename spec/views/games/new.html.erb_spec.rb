require 'rails_helper'

RSpec.describe "games/new", :type => :view do
  before(:each) do
    assign(:game, Game.new(
      :name => "MyString",
      :slug => "MyString",
      :map => "MyString",
      :completions => 1
    ))
  end

  it "renders new game form" do
    render

    assert_select "form[action=?][method=?]", games_path, "post" do

      assert_select "input#game_name[name=?]", "game[name]"

      assert_select "input#game_slug[name=?]", "game[slug]"

      assert_select "input#game_map[name=?]", "game[map]"

      assert_select "input#game_completions[name=?]", "game[completions]"
    end
  end
end
