json.extract! ticket, :id, :assigned_to_id, :assigned_to_type, :created_at, :updated_at
json.url ticket_url(ticket, format: :json)
