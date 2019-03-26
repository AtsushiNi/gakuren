module Admin
  class MatchesController < Admin::ApplicationController
    # disable 'edit' and 'destroy' links
    def valid_action?(name, resource = resource_class)
      %w[destroy new create].exclude?(name.to_s) && super
    end

    # To customize the behavior of this controller,
    # you can overwrite any of the RESTful actions. For example:
    #
    # def index
    #   super
    #   @resources = Match.
    #     page(params[:page]).
    #     per(10)
    # end

    # Define a custom finder by overriding the `find_resource` method:
    # def find_resource(param)
    #   Match.find_by!(slug: param)
    # end

    # See https://administrate-prototype.herokuapp.com/customizing_controller_actions
    # for more information
  end
end
