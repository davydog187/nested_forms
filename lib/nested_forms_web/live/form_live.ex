defmodule NestedFormsWeb.FormLive do
  use Phoenix.LiveView
  use Phoenix.HTML

  def render(assigns) do
    ~L"""
    <div>
      <%= for {item, index} <- Enum.with_index(@list) do %>
        <%= f = form_for(item, "##{index}", as: "example #{index}") %>
        <%= label f, :name  %>
        <%= text_input f, :value  %>
      <% end %>
    </div>
    """
  end

  def mount(_data, socket) do
    socket = assign(socket, :list, Enum.map(1..10, &to_changeset/1))

    {:ok, socket}
  end

  defp to_changeset(value) do
    data = %{label: to_string(value), value: value}
    types = %{label: :string, value: :number}

    Ecto.Changeset.change({data, types}, %{})
  end
end
