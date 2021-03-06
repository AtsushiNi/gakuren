require "administrate/base_dashboard"

class CollegeDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    name: Field::String,
    men: Field::Boolean,
    league: Field::Number,
    players_num: Field::Number,
    email: Field::String,
    captain: Field::String,
    competent: Field::String,
    prefecture: Field::String,
    password_digest: Field::String,
    password: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :name,
    :men,
    :league,
    :prefecture,
    :email
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :id,
    :name,
    :men,
    :league,
    :players_num,
    :email,
    :captain,
    :competent,
    :prefecture,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :name,
    :men,
    :league,
    :players_num,
    :email,
    :captain,
    :competent,
    :prefecture,
    :password,
  ].freeze

  # Overwrite this method to customize how colleges are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(college)
  #   "College ##{college.id}"
  # end
end
