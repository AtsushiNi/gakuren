require "administrate/base_dashboard"

class SinglesTournamentDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    matches: Field::HasMany,
    singles_players: Field::HasMany,
    id: Field::Number,
    name: Field::String,
    draw: Field::Number,
    entry_start: Field::DateTime,
    entry_end: Field::DateTime,
    entry_list: Field::Text,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    courts: Field::String,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :matches,
    :singles_players,
    :id,
    :name,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :matches,
    :singles_players,
    :id,
    :name,
    :draw,
    :entry_start,
    :entry_end,
    :entry_list,
    :created_at,
    :updated_at,
    :courts,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :matches,
    :singles_players,
    :name,
    :draw,
    :courts,
    :entry_start,
    :entry_end,
    :entry_list
  ].freeze

  # Overwrite this method to customize how singles tournaments are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(singles_tournament)
  #   "SinglesTournament ##{singles_tournament.id}"
  # end
end
