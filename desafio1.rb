
class Card
    attr_reader :suit, :number
    def initialize
        suit =['Corazón', 'Diamante', 'Trébol', 'Pica']
        num = [1,2,3,4,5,6,7,8,9,'J', 'Q', 'K']
        @suit = suit.sample
        @number = num.sample
    end
end
option = 1
while option != 'salir' do
    puts "Ingrese 'jugar' para generar 5 cartas.\n Ingrese 'mostrar' para mostrar sus 5 cartas.\n Ingrese'salir' para salir del programa."
    option = gets.chomp.downcase
    if option == 'jugar'
        cards = []
        5.times do
            cards.push(Card.new)
        end
        puts 'Se generó una mano nueva exitosamente'
    elsif option == 'mostrar'
        if cards == nil
            puts 'Su mano está vacía'
        else
            cards.each_with_index do |ele, i|
                puts "Carta #{i+1}: #{ele.number} de #{ele.suit}."
            end
        end
    elsif option == 'salir'
        puts 'Adíos'
    else
        puts 'Opción inválida'
    end
end
