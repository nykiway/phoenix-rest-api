defmodule GraphqlWeb.Schema do
  use Absinthe.Schema
  import_types(GraphqlWeb.Schema.Types)

  query do
    field :accounts_users, list_of(:accounts_user) do
      resolve(&Graphql.Accounts.UserResolver.all/2)
    end

    field :accounts_user, :accounts_user do
      arg(:email, non_null(:string))
      resolve(&Graphql.Accounts.UserResolver.find/2)
    end
  end
end
