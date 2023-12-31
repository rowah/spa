defmodule SpaWeb.EmptyState do
  # tell elixir that this is a component
  use SpaWeb, :html

  attr(:text, :string, required: true)
  attr(:image, :string, required: true)

  def show(assigns) do
    ~H"""
    <div>
      <h2 class="text-lg font-semibold tracking-tight sm:text-center sm:text-2xl"><%= @text %></h2>
      <div class="mt-10 mx-auto w-full max-w-xs">
        <img
          src={~p"/images/cooking/#{@image}"}
          class="w-full max-w-none rounded-xl ring-1 ring-gray-400/10 md:ml-4 lg:-ml-0"
        />
      </div>
    </div>
    """
  end
end
