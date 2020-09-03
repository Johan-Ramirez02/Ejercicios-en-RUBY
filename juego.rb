puts "Introduzca piedra, papel o tijera"
usuario = ARGV[0]
computadora = rand(0..2)
    # Asignandole String a la variable computadora
if computadora == 0 
    computadora = "piedra"
elsif computadora == 1
    computadora = "papel"
elsif computadora == 2
    computadora = "tijera"
end
puts "Computadora saca: #{computadora}"
if usuario == "piedra" || usuario == "papel" || usuario == "tijera"
        # Gana el usuario
    if  usuario == "piedra" && computadora == "tijera" ||
        usuario == "papel" && computadora == "piedra" ||
        usuario == "tijera" && computadora == "papel"
        puts "Felcidades Ganaste!"
        # Pierde el usuario
    elsif   usuario == "piedra" && computadora == "papel" ||
            usuario == "papel" && computadora == "tijera" ||
            usuario == "tijera" && computadora == "piedra"
            puts "Has Perdido!"
        # Caso de empate
    else
            puts "Empate, ninguno gana!"
    end
else
    puts "Argumento inválido: Debe ser piedra, papel o tijera."
end