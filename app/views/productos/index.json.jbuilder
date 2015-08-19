json.array!(@productos) do |producto|
  json.extract! producto, :id, :keywords, :description, :subject, :title, :sub_title, :modelo, :altura, :incluye, :colores, :altura_min, :altura_max, :material, :precio, :descuento, :vesa, :dimensiones, :distancia, :peso, :angulo_in, :angulo_giro, :color
  json.url producto_url(producto, format: :json)
end
