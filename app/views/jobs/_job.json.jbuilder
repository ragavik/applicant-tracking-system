json.extract! job, :id, :title, :description, :employment_type, :requirements, :responsibilities, :created_at, :updated_at
json.url job_url(job, format: :json)
