defmodule GraphqlWeb.Schema.Types do
  use Absinthe.Schema.Notation

  object :accounts_user do
    field(:id, :id)
    field(:name, :string)
    field(:email, :string)
  end

  object :blog_posts do
    field(:id, :id)

  end
end
