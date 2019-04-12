module Admin
  class SinglesTournamentsController < Admin::ApplicationController
    # To customize the behavior of this controller,
    # you can overwrite any of the RESTful actions. For example:
    #
    # def index
    #   super
    #   @resources = SinglesTournament.
    #     page(params[:page]).
    #     per(10)
    # end

    # Define a custom finder by overriding the `find_resource` method:
    # def find_resource(param)
    #   SinglesTournament.find_by!(slug: param)
    # end

    # See https://administrate-prototype.herokuapp.com/customizing_controller_actions
    # for more information
    def new_primary_draw
      @tournament = SinglesTournament.find(params[:id])
      @colleges = @tournament.get_entry_colleges
      @rankings = Ranking.all.order(:created_at)
    end

    def create_primary_draw
      @tournament = SinglesTournament.find(params[:id])
      ranking = Ranking.find(params[:ranking].to_i)
      result = @tournament.make_seed_players_list(ranking)
      # @tournament.create_primary_draw()

      @ranking = Ranking.last
      render partial: "admin/rankings/preview.html.erb", locals:{result: result}
    end

    def create_main_draw

    end

  end
end
