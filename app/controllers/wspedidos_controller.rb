class WspedidosController < ApplicationController
  skip_before_action :authenticate_user!

  def initial_screen; end

  def search_orders
    order = Wspedido.where(cliente_cpfcnpj: params['cpf'].delete('.-'))
                    .where(numero: params['pedido'])
                    .where(pedidostatus_id: [23, 3, 29])
                    .first
    if order.present?
      redirect_to order_change_view_path(cpf: params['cpf'].delete('.-'), pedido: params['pedido']), notice: 'Pedido Encontrado.'
    else
      redirect_to inital_screen_path, notice: 'Pedido Não Encontrado.'
    end
  end

  def order_change
    @order = Wspedido.where(cliente_cpfcnpj: params['cpf']).where(numero: params['pedido']).first
    @items = Item.where(pedido_id: @order.id)
  end

  def generate_order_change
    # byebug
    wspedido = Wspedido.find(params["order_id"].to_i)
    order_change = OrderChange.new(description: params["change"]["description"], 
                                   client_name: wspedido.cliente_razaosocial,
                                   phone: wspedido.cliente_telefone,
                                   order_id: wspedido.numero )
    clothes = []
    params["order_change"].each do |oc|
      if oc.second == "1"
        item = Item.find_by(item_id: oc.first)
        clothes.append("#{item.nome_produto}, #{item.sku}, Valor: #{item.valor_total}, Quantidade: #{item.quantidade}")
      end
    end
    order_change.clothes = clothes
    redirect_to change_order_saved_path, notice: 'Solitação salva com sucesso.' if order_change.save
  end

  def change_order_saved; end
end
