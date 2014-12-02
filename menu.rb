require "~/Documents/tugas_trainings/tugas_satu/player.rb"
class Menu
    input_menu = 0
    players = Array.new
    while input_menu !=3 do
		puts "#=========================================#"
		puts "#        Welcome to Battle Arena           "
		puts "#-----------------------------------------#"
		puts "#Description :"
		puts '1. ketik "new" untuk membuat karakter     #'
		puts '2. ketik "start" untuk memulai pertarungan#'
		puts '#-----------------------------------------#'
		puts '#Current Player :#'
		puts '#*max player 2 atau 3'
		input = gets.chomp.to_i
		if input == 1
			puts "Masukkan Nama Player :"
			player1 = Player.new gets.chomp
			puts "Player Name : #{player1.nama}"
			puts "Blood : #{player1.blood}"
			puts "Manna : #{player1.manna}"
			players << player1.nama
			puts "#{players}"
		elsif input == 2
			if players.length < 2
				puts "Player saat ini baru 1 orang"
				puts "Tambah Player :"
				player1 = Player.new gets.chomp
				players << player1.nama
			else
				input_menu = 3
			end
		else 
			menu = Menu.new
			menu
		end
	end
	puts "#=========================================#"
	puts "#        Welcome to Battle Arena           "
	puts "#-----------------------------------------#"
	puts "Battle Start :"
	puts 'siapa yang akan menyerang:'

	puts 'siapa yang diserang:'
end
menu =  Menu.new
menu

