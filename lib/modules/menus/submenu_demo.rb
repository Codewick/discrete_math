require_relative '../../helpers/menus/menu_helpers'
require_relative './menu'
require_relative '../topics/discrete_math_topics'

module SubmenuDemo
  include DiscreteMathTopics::PreliminaryMath

  EXIT_SUB_MENU_OPTIONS = ["2"]

  def self.show_sub_menu
    table = MenuHelpers.terminal_table do |t|
      t.title = 'Select a number'
      t.add_row [1, 'Demo Power']
      t.add_row [2, 'Return to main menu']
      t.style = { all_separators: true }
    end
    puts table
    puts ''
  end

  def self.show_choices_sub_menu
    Menu.request_input_for_menu("sub_demo")

    user_input = ""
    while not EXIT_SUB_MENU_OPTIONS.include? user_input
      user_input = gets.chomp
      case user_input
        when "1"
          AbsoluteValuesDemo::Calculate.run
          MenuHelpers.request_input_continue_for_menu("sub_demo")
          SubmenuDemo.show_choices_sub_menu
        when "2"
          Menu.show_choices_main_menu
        else
          MenuHelpers.validate_input_for_menu_kind("sub_demo")
          SubmenuDemo.show_choices_sub_menu
      end
    end
  end
end