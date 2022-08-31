defmodule <%= inspect(web_module) %>.Components.Card do
  @moduledoc """
  A sample component generated by the `mix surface.init` task.
  """

  use Surface.Component

  @doc "The header slot"
  slot header

  @doc "The footer slot"
  slot footer

  @doc "The main content slot"
  slot default

  @doc "The background color"
  prop rounded, :boolean, default: false

  def render(assigns) do
    ~F"""
    <style>
      .card {
        max-width: 384px;
        overflow: hidden;
        border: 1px solid #ddd;
      }

      .content {
        padding: 24px 16px;
        color: #666;
        font-size: 16px;
        line-height: 24px;
      }

      .header {
        width: 100%;
        background-color: #ddd;
        padding: 24px;
      }

      .footer {
        padding: 24px 16px;
      }

      .rounded-lg {
        border-radius: 8px;
      }
    </style>

    <div class={"card", "rounded-lg": @rounded}>
      <div class="header">
        <#slot {@header} />
      </div>
      <div class="content">
        <#slot />
      </div>
      <div class="footer">
        <#slot {@footer} />
      </div>
    </div>
    """
  end
end
