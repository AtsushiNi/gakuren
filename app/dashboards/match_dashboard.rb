require "administrate/base_dashboard"

class MatchDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    singles_tournament_id: Field::Number,
    young: PlayerField,
    old: PlayerField,
    winner_num: PlayerField,
    parent_id: ParentField,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    round: Field::Number,
    court: Field::Number,
    turn: Field::Number,
    score: Field::String,
    status: Field::String,
    start_time: Field::Time,
    finish_time: Field::Time,
    ready: Field::Boolean,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :id,
    :parent_id,
    :young,
    :old,
    :winner_num,
    :round
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :id,
    :parent_id,
    :young,
    :old,
    :round,
    :court,
    :turn,
    :winner_num,
    :score,
    :status,
    :start_time,
    :finish_time,
    :ready,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :parent_id,
    :young,
    :old,
    :round,
    :court,
    :turn,
    :winner_num,
    :score,
    :status,
    :start_time,
    :finish_time,
    :ready,
  ].freeze

  # Overwrite this method to customize how matches are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(match)
  #   "Match ##{match.id}"
  # end
end
