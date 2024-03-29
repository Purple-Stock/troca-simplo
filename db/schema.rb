# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20_210_315_000_508) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'items', force: :cascade do |t|
    t.string 'item_id'
    t.string 'pedido_id'
    t.string 'produto_id'
    t.string 'produto_estoque_id'
    t.string 'sku'
    t.string 'nome_produto'
    t.string 'slug_produto'
    t.string 'origem_mercadoria'
    t.string 'tempo_producao'
    t.string 'ncm'
    t.string 'combinacoes'
    t.string 'perguntas'
    t.string 'quantidade'
    t.string 'unidade_medida_id'
    t.string 'valor_unitario'
    t.string 'valor_total'
    t.string 'altura'
    t.string 'largura'
    t.string 'comprimento'
    t.string 'peso'
    t.string 'valor_frete_unitario'
    t.string 'valor_frete_adicional'
    t.string 'objeto_codigo_rastreamento'
    t.string 'descricao'
    t.string 'image'
    t.string 'presente'
    t.string 'total_presente'
    t.string 'desconto'
    t.string 'desconto_percentual'
    t.string 'url_rastreamento_item'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'order_changes', force: :cascade do |t|
    t.string 'description'
    t.text 'clothes', default: [], array: true
    t.string 'client_name'
    t.string 'phone'
    t.string 'order_id'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.integer 'status', default: 0
    t.string 'full_address'
    t.string 'email'
    t.integer 'change_type', default: 0
    t.integer 'devolution_type', default: 0
  end

  create_table 'users', force: :cascade do |t|
    t.string 'email', default: '', null: false
    t.string 'encrypted_password', default: '', null: false
    t.string 'reset_password_token'
    t.datetime 'reset_password_sent_at'
    t.datetime 'remember_created_at'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['email'], name: 'index_users_on_email', unique: true
    t.index ['reset_password_token'], name: 'index_users_on_reset_password_token', unique: true
  end

  create_table 'wspedidos', force: :cascade do |t|
    t.integer 'numero'
    t.datetime 'data_pedido'
    t.string 'pedidostatus_id'
    t.string 'cliente_tipo'
    t.string 'cliente_cpfcnpj'
    t.string 'cliente_razaosocial'
    t.string 'cliente_ie'
    t.string 'cliente_data_nascimento'
    t.string 'cliente_logradouro'
    t.string 'cliente_numero'
    t.string 'cliente_informacoes_adicionais'
    t.string 'cliente_bairro'
    t.string 'cliente_cidade'
    t.string 'cliente_estado'
    t.string 'cliente_pais'
    t.string 'cliente_cep'
    t.string 'cliente_telefone'
    t.string 'cliente_telefone_comercial'
    t.string 'cliente_celular'
    t.string 'cliente_email'
    t.string 'cliente_observacao'
    t.string 'entrega_cpfcnpj'
    t.string 'entrega_razaosocial'
    t.string 'entrega_ie'
    t.string 'entrega_data_nascimento'
    t.string 'entrega_logradouro'
    t.string 'entrega_numero'
    t.string 'entrega_informacoes_adicionais'
    t.string 'entrega_bairro'
    t.string 'entrega_cidade'
    t.string 'entrega_estado'
    t.string 'entrega_pais'
    t.string 'entrega_cep'
    t.string 'entrega_telefone'
    t.string 'entrega_telefone_comercial'
    t.string 'entrega_celular'
    t.string 'entrega_email'
    t.string 'envio_prazo'
    t.string 'envio_prazo_descricao'
    t.string 'entrega_prazo'
    t.string 'envio_servico_id'
    t.string 'envio_servico'
    t.string 'envio_codigo_objeto'
    t.string 'pagamento_integrador_id'
    t.string 'pagamento_forma'
    t.string 'referencia_venda'
    t.string 'nota_fiscal'
    t.string 'nota_fiscal_serie'
    t.string 'nota_fiscal_chave'
    t.string 'nota_fiscal_data'
    t.string 'total_pedido'
    t.string 'desconto_avista'
    t.string 'total_descontos'
    t.string 'total_acrescimos'
    t.string 'total_frete'
    t.string 'total_produtos'
    t.string 'total_peso'
    t.string 'url_rastreamento'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end
end
