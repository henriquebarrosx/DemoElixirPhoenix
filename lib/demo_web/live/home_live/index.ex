defmodule DemoWeb.HomeLive.Index do
  use DemoWeb, :live_view

  def mount(_params, _session, socket) do
    news = [
      %{
        soruce: "MESA TRADE | GWM & FRAJA",
        description:
          "Governo Lula pode incluir tributação de super-ricos dentro de pacote fiscal. O Ministério da Fazenda estuda a criação de um imposto mínimo para pessoas físicas. O objetivo é garantir uma tributação efetiva da renda dos milionários",
        createdAt: "14/11/2024 às 07:57"
      },
      %{
        soruce: "MESA TRADE | GWM & FRAJA",
        description:
          "Haddad: Ainda temos reunião com Lula, mas não sei se há tempo hábil para anúncio esta semana. Após reuniões com o presidente Luiz Inácio Lula da Silva e o presidente da Câmara, Arthur Lira (PP-AL), sobre o pacote de redução de gastos, o ministro da Fazenda, Fernando Haddad, disse que não sabe se haverá tempo hábil para o anúncio das medidas nesta semana ou se ficará para a próxima.",
        createdAt: "13/11/2024 às 17:48"
      },
      %{
        soruce: "MESA TRADE | GWM & FRAJA",
        description:
          "🇧🇷BGC Política I Revisão gastos. Capital Advice, 13 de novembro de 2024. Lira deve receber Haddad na residência oficial da Câmara nesta quarta para debater pacote de revisão de gastos. Pacheco deve falar sobre a reunião com Lula em entrevista no Senado.",
        createdAt: "13/11/2024 às 16:13"
      }
    ]

    %{:ok, assign(socket, :news, news)}
  end
end
