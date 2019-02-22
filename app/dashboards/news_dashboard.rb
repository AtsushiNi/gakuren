require "administrate/base_dashboard"

class NewsDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    title: Field::String,
    pdfs: Field::PdfField.with_options(searchable: false),
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    visible: Field::Boolean,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :id,
    :title,
    :pdfs,
    :created_at,
    :visible
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :id,
    :title,
    :pdfs,
    :created_at,
    :updated_at,
    :visible,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :visible,
  ].freeze

  # Overwrite this method to customize how news are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(news)
  #   "News ##{news.id}"
  # end
end
