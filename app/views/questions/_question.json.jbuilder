json.extract! question, :id, :user_id, :question, :answer, :user_to_id, :anon, :created_at, :updated_at
json.url question_url(question, format: :json)
