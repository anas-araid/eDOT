json.extract! report, :id, :patient_id, :community_health_worker_id, :date, :health_status, :created_at, :updated_at
json.url report_url(report, format: :json)