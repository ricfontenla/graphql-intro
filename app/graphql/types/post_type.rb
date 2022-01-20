module Types
  class PostType < Types::BaseObject
    field :id, ID, null: false do
      description "This post's ID"
    end
    field :title, String, null: true do
      description "This post's title"
    end
    field :body, String, null: true do
      description "This post's body, the main content of the post"
    end
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false do
      description "The date/time that this post was created at"
    end
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false do
      description "The date/time that this post was updated at"
    end
    field :author_id, Integer, null: false do
      description "The ID of this post's author"
    end
    field :author, Types::AuthorType, null: true do
      description "This post's author in object form"
    end
  end
end
