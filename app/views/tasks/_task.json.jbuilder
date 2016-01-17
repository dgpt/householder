json.extract! task, :id, :name, :due_by, :description
json.url task_url(task, format: :json)
json.extract! task, :context_type, :context_id
json.context_url polymorphic_url(task.context, format: :json)
