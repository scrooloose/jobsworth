class TaskSweeper < ActionController::Caching::Sweeper
  observe Task
  def after_update(task)
    expire_fragment("top5_tasks")
  end
  def after_create(task)
    expire_fragment("top5_tasks")
  end
  def after_destroy(task)
    expire_fragment("top5_tasks")
  end
end