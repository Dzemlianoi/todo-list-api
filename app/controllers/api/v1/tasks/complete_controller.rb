module Api
  module V1
    module Tasks
      class CompleteController < ApiController
        def update
          task = authorize Task.find(params[:task_id])

          task.toggle(:done)

          jsonapi_render json: task, status: :created
        end
      end
    end
  end
end
