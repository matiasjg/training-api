module Api::V1

    class PlansController < ApplicationController
      before_action :set_plan, only: [:show, :update, :destroy, :trainings, :start]

      # GET /plans
      def index
        @plans = Plan.all

        render json: @plans
      end

      # GET /plans/1
      def show
        render json: @plan
      end

      # GET /plans/:id/trainings
      # Will return the plans trainings
      def trainings
        render json: @plan.trainings
      end

      # POST /plans/:id/users/:userId/start
      # This will create a list of trainings for a user
      def start
        validateExistingTrainings = UserPlanTraining.where(
            user_id: params[:userId],
            plan_id: @plan.id
        )
        if !validateExistingTrainings or validateExistingTrainings.length != @plan.trainings.length
            @plan.trainings.each do |training|
                userPlanTraining = UserPlanTraining.new()
                userPlanTraining.user_id = params[:userId]
                userPlanTraining.plan_id = @plan.id
                userPlanTraining.training_id = training.id
                userPlanTraining.save
            end

            user = User.find(params[:userId])


            render json: user.trainings
        elsif validateExistingTrainings.length == 0
            render json: { message: 'Lo sentimos, el plan no tiene entrenamientos disponibles.' }, status: :not_acceptable
        else
            render json: { message: 'Ya te encuentras registrado al plan.' }, status: :not_acceptable
        end


      end

      # POST /plans
      def create
        @plan = Plan.new(plan_params)

        if @plan.save
          render json: @plan, status: :created, location: @plan
        else
          render json: @plan.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /plans/1
      def update
        if @plan.update(plan_params)
          render json: @plan
        else
          render json: @plan.errors, status: :unprocessable_entity
        end
      end

      # DELETE /plans/1
      def destroy
        @plan.destroy
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_plan
          @plan = Plan.find(params[:id])
        end

        # Only allow a trusted parameter "white list" through.
        def plan_params
          params.require(:plan).permit(:name, :price, :trainings_id)
        end
    end
end
