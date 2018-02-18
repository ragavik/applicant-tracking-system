json.extract! application, :id, :currentCompany, :linkedInURL, :portfolioURL, :additionalInfo, :gender, :race, :veteranStatus, :disabilityStatus, :resume, :created_at, :updated_at
json.url application_url(application, format: :json)
