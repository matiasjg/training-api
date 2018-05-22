# ruby encoding: utf-8

plan_list = [
  [ "Ejercicios", "La categoría más completa de rutinas de entrenamiento para hacer en casa." ],
  [ "Dieta", "Llevar una buena dieta equilibrada debe ser una parte fundamental de nuestro estilo de vida." ],
  [ "Guias", "Te dejamos algunos consejos prácticos para tu entrenamiento." ]
]

plan_list.each do |name, description |
  Plan.create( name: name, description: description )
end


training_list = [
  [ "Flexiones", "25 flexiones de brazos, 4 repeticiones", 20, "hbGR_wq7wzo", 120, 1 ],
  [ "Abdominales", "10 abdominales, 3 repeticiones", 10, "tiTDIaBIWqU", 100, 1 ],
  [ "Saltos", "15 saltos, 4 repeticiones", 15, "", 250, 1 ],
  [ "Trote", "20 minutos de trote.", 20, "", 150, 1 ],
  [ "Desayuno", "Fuerte en proteínas, 1 huevo revuelto con jugo de naranja", 0, "", 1200, 2 ],
  [ "Colación", "1 yogurt", 0, "", 800, 2 ],
  [ "Almuerzo", "Carne con ensalada", 0, "", 500, 2 ],
  [ "Merienda", "1 yogurt o te con tostadas", 0, "", 600, 2 ],
  [ "Cena", "Liviana, pastas o verduras salteadas", 0, "", 800, 2 ]

]

training_list.each do |name, details, time, video_id, calories, plan_id|
  Training.create( name: name, time: time, video_id: video_id, calories: calories, plan_id: plan_id )
end
