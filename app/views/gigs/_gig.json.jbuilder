json.extract! gig, :id, :title, :where, :when, :band_contact, :event_contact, :confirmed, :created_at, :updated_at
json.url gig_url(gig, format: :json)
