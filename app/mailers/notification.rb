class Notification < ApplicationMailer

def completed_task(task)
    @task = task
    mail to: "#{@task.project.client.email}",
    cc: "raki4ever@gmail.com",
    subject: "#{ @task.name} has been completed"
  end

  def incompleted_task(task)
    @task = task
    mail to: "#{@task.project.client.email}",
    cc: "raki4ever@gmail.com",
    subject: "#{ @task.name } has been re opened"
  end
end
