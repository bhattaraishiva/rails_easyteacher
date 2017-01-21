json.extract! managecourse, :id, :coursename, :responsibleperson, :duration, :created_at, :updated_at
json.url managecourse_url(managecourse, format: :json)