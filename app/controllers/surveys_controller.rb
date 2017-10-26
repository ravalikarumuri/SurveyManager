class SurveysController < ApplicationController
  before_action :authenticate_user!
    def new
      @survey = Survey.new

    end

    def create
      @survey = Survey.new(survey_params)
      if @survey.save
        @survey.questions.build
        #redirect_to surveys_path
        render plain: params[:survey].inspect
      else
        render action: :new
      end
    end

    def index
      @surveys = Survey.all
    end

    def edit
      @survey = Survey.find(params[:id])
    end

    def update
      @survey = Survey.find(params[:id])
      if @survey.update_attributes(survey_params)
        redirect_to @survey, notice: "Successfully updated survey."
      else
        render :edit
      end
    end

    def destroy
      @survey = Survey.find(params[:id])
      @survey.destroy
      redirect_to surveys_url, notice: "Successfully destroyed survey."
    end

    private

    def survey_params
      params.require(:survey).permit(:name, :description,
                                     questions_attributes: [:name,:survey_id ,:data_type,
                                                            answer_data_attributes: [:data_value,:question_id, :_destroy]])
    end

  end
