# frozen_string_literal: true

module Types
  class AnswerType < Types::BaseObject
    field :id, ID, null: false
    field :content, String, null: false
    # field :iscorrect, Boolean, null: false
    field :question_id, Integer, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
