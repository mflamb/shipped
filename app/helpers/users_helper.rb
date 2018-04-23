module UsersHelper
    def get_boat_user_id
      @boat.user_id = current_user.id
    end
  
    def get_job_user_id
      @job.user_id = current_user.id
    end
  end