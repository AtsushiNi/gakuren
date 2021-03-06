module Admin
  class RankingsController < Admin::ApplicationController
    # To customize the behavior of this controller,
    # you can overwrite any of the RESTful actions. For example:
    #
    # def index
    #   super
    #   @resources = Ranking.
    #     page(params[:page]).
    #     per(10)
    # end

    # Define a custom finder by overriding the `find_resource` method:
    # def find_resource(param)
    #   Ranking.find_by!(slug: param)
    # end

    # See https://administrate-prototype.herokuapp.com/customizing_controller_actions
    # for more information

    def edit
      @ranking = Ranking.find(params[:id])
      render locals: {
        page: Administrate::Page::Form.new(dashboard, requested_resource),
      }
    end

    def calculate
      @ranking = Ranking.new

      tournaments = []
      params[:ranking][:tournaments].each do |data|
        if data != ""
          tournaments.push(SinglesTournament.find_by(name: data))
        end
      end

      result = @ranking.calcurate(tournaments)

      render partial: "preview.html.erb", locals:{result: result}
    end

  end
end
