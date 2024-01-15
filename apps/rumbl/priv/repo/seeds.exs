# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Rumbl.Repo.insert!(%Rumbl.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias Rumbl.Accounts
alias Rumbl.Multimedia

# USERS
Accounts.register_user!(%{name: "Jose", username: "josevalim", password: "pass123"})
Accounts.register_user!(%{name: "Bruce", username: "redrapids", password: "pass123"})
Accounts.register_user!(%{name: "Chris", username: "mccord", password: "pass123"})
Accounts.register_user!(%{name: "Seba", username: "sebatest", password: "pass123"})

# CATEGORIES
for category <- ~w(Action Drama Romance Comedy Sci-fi) do
  Multimedia.create_category!(category)
end
