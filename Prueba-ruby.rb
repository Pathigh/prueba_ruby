def read_alum(file_name)
  file = File.open(file_name, 'r')
  alum = file.readlines.map(&:chomp).map { |lines| lines.split(', ') }
  file.close
  alum
end

alumnos = read_alum("alumnos.csv")

opcion = 0

while opcion != 4
  puts "Menú"
  puts "1. Nombre de alumnos y sus Promedios"
  puts "2. Contar la cantidad de inasistencias de los alumnos"
  puts "3. Alumnos Aprobados"
  puts "4. salir"

  opcion = gets.chomp.to_i

  case opcion
    when 1
  			arre1 = alumnos[0].to_a
			arre2 = alumnos[1].to_a
			arre3 = alumnos[2].to_a
			arre4 = alumnos[3].to_a

alumno1 = Hash.new
	alumno1[arre1[0]] = arre1[1..-1].map{|valor| valor.to_i}
suma = 0
	alumno1["David"].each do |v|
    suma = suma + v
	end    

promedio = suma.to_f / alumno1["David"].size

puts "El promedio de David es : #{promedio}"

alumno2 = Hash.new
alumno2[arre2[0]] = arre2[1..-1].map{|valor| valor.to_i}

suma = 0

alumno2["Gonzalo"].each do |v|
    suma = suma + v
end    
promedio = suma.to_f / alumno2["Gonzalo"].size

puts "El promedio de Gonzalo es : #{promedio}"

alumno3 = Hash.new
alumno3[arre3[0]] = arre3[1..-1].map{|valor| valor.to_i}

suma = 0
alumno3["Mai"].each do |v|
    suma = suma + v
end    
promedio = suma.to_f / alumno3["Mai"].size

puts "El promedio de Mai es : #{promedio}"

alumno4 = Hash.new
alumno4[arre4[0]] = arre4[1..-1].map{|valor| valor.to_i}

suma = 0
alumno4["JP"].each do |v|
    suma = suma + v
end    
promedio = suma.to_f / alumno4["JP"].size

puts "El promedio de Jp es : #{promedio}"
         
    when 2
    	
    		arre1 = alumnos[0].to_a
			arre2 = alumnos[1].to_a
			arre3 = alumnos[2].to_a
			arre4 = alumnos[3].to_a

alumno1 = Hash.new
	alumno1[arre1[0]] = arre1[1..-1].map{|valor| valor.to_i}

asis = 0
	alumno1["David"].each do |v|
    if v == 0
    	asis = v + 1
	end    
end

puts "David tiene #{asis} inasistencias "

alumno2 = Hash.new
alumno2[arre2[0]] = arre2[1..-1].map{|valor| valor.to_i}

asis = 0
	alumno2["Gonzalo"].each do |v|
    if v == 0
    	asis = v + 1
	end    
end

puts "Gonzalo tiene #{asis} inasistencias "

alumno3 = Hash.new
alumno3[arre3[0]] = arre3[1..-1].map{|valor| valor.to_i}

asis = 0
alumno3["Mai"].each do |v|
	if v == 0
    	asis = v + 1
	end    
end

   
puts "Mai tiene #{asis} inasistencias "

alumno4 = Hash.new
alumno4[arre4[0]] = arre4[1..-1].map{|valor| valor.to_i}

asis = 0
alumno4["JP"].each do |v|
   if v == 0
    	asis = v + 1
	end    
end

puts "JP tiene #{asis} inasistencias "

      
      
    when 3


           	alu1 = alumnos[0].to_a
			alu2 = alumnos[1].to_a
			alu3 = alumnos[2].to_a
			alu4 = alumnos[3].to_a

alumno1 = Hash.new
	alumno1[alu1[0]] = alu1[1..-1].map{|valor| valor.to_i}
suma = 0
	alumno1["David"].each do |v|
    suma = suma + v
	end    

promedio = suma.to_f / alumno1["David"].size
if promedio > 5
 	puts'el alumno David esta aprobado'
end

alumno2 = Hash.new
alumno2[alu2[0]] = alu2[1..-1].map{|valor| valor.to_i}

suma = 0

alumno2["Gonzalo"].each do |v|
    suma = suma + v
end    
promedio = suma.to_f / alumno2["Gonzalo"].size
if promedio > 5
 	puts'el alumno Gonzalo esta aprobado'
end
alumno3 = Hash.new
alumno3[alu3[0]] = alu3[1..-1].map{|valor| valor.to_i}

suma = 0
alumno3["Mai"].each do |v|
    suma = suma + v
end    
promedio = suma.to_f / alumno3["Mai"].size
if promedio > 5
 	puts'el alumno Mai esta aprobado'
end

alumno4 = Hash.new
alumno4[alu4[0]] = alu4[1..-1].map{|valor| valor.to_i}

suma = 0
alumno4["JP"].each do |v|
    suma = suma + v
end    
promedio = suma.to_f / alumno4["JP"].size
 if promedio > 5
 	puts'el alumno JP esta aprobado'
end


   when 4 
      puts "ha elegido salir"
    else
      puts "opción inválida"
  end
end