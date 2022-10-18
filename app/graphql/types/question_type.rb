# frozen_string_literal: true

module Types
  class QuestionType < Types::BaseObject
    field :id, ID, null: false
    field :content, String, null: false
    field :answers, [Types::AnswerType], null: false
    field :correctAnswer, Integer, null: false
    field :point, Float, null: false
    field :answer, Integer, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
