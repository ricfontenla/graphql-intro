module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    field :posts, [PostType], null: false do
      description 'Query that selects all posts'
    end

    field :postsCount, Integer, null: false do
      description 'Query that returns the total number os posts'
    end

    def posts
      Post.all
    end

    def postsCount
      Post.count
    end
  end
end
