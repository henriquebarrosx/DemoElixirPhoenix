defmodule DemoWeb.HomeLive.Index do
  use DemoWeb, :live_view

  def mount(_params, _session, socket) do
    news = [
      %{
        source: "MESA TRADE | GWM & FRAJA",
        description:
          "Governo Lula pode incluir tributação de super-ricos dentro de pacote fiscal. O Ministério da Fazenda estuda a criação de um imposto mínimo para pessoas físicas. O objetivo é garantir uma tributação efetiva da renda dos milionários",
        createdAt: get_news_date("2024-11-15T10:13:00Z")
      },
      %{
        source: "MESA TRADE | GWM & FRAJA",
        description:
          "Haddad: Ainda temos reunião com Lula, mas não sei se há tempo hábil para anúncio esta semana. Após reuniões com o presidente Luiz Inácio Lula da Silva e o presidente da Câmara, Arthur Lira (PP-AL), sobre o pacote de redução de gastos, o ministro da Fazenda, Fernando Haddad, disse que não sabe se haverá tempo hábil para o anúncio das medidas nesta semana ou se ficará para a próxima.",
        createdAt: get_news_date("2024-11-14T17:48:00Z")
      },
      %{
        source: "MESA TRADE | GWM & FRAJA",
        description:
          "🇧🇷BGC Política I Revisão gastos. Capital Advice, 13 de novembro de 2024. Lira deve receber Haddad na residência oficial da Câmara nesta quarta para debater pacote de revisão de gastos. Pacheco deve falar sobre a reunião com Lula em entrevista no Senado.",
        createdAt: get_news_date("2024-11-13T16:13:00Z")
      }
    ]

    {:ok, assign(socket, :news, news)}
  end

  defp get_news_date(datetime_str) do
    case DateTime.from_iso8601(datetime_str) do
      {:ok, datetime, _} ->
        today = Date.utc_today()

        is_today = Date.compare(DateTime.to_date(datetime), today) == :eq
        date = "#{datetime.day}/#{datetime.month}/#{datetime.year}"

        time =
          datetime
          |> DateTime.to_time()
          |> Time.to_string()
          |> String.slice(0, 5)

        if is_today, do: time, else: "#{date} às #{time}"

      {:error, _} ->
        "Invalid date"
    end
  end
end
