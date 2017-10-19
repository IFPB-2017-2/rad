load 'pessoa_fisica.rb'
load 'cadastro.rb'

# p1 = Pessoa.new("José",33)
# puts p1.nome
# puts p1.idade

# p1.nome = "Fulaninho"

# # puts p1.nome
# p1.imprimir

# p2= PessoaFisica.new("José Ricardo", 34, "000.456.789-99")

# p2.imprimir

# puts p1.is_a? Pessoa
# puts p2.is_a? Pessoa
# puts p2.is_a? PessoaFisica

# puts p1.is_a?PessoaFisica

cadastro= Cadastro.new

print "Quantas pessoas deseja cadastrar? "
qtdPessoas = gets.to_i

for i in 1..qtdPessoas
	print "Deseja cadastrar Pessoa Física? (S / N): "
	if(gets.chomp.upcase == 'S')
		print "Nome: "
		nome = gets.chomp
		print "Idade: "
		idade = gets.to_i
		print "CPF: "
		cpf = gets.chomp
		p = PessoaFisica.new(nome,idade,cpf)
	else
		print "Nome: "
		nome = gets.chomp
		print "Idade: "
		idade = gets.to_i
		p = Pessoa.new(nome,idade)
	end
	cadastro.add(p)
end

puts "Total de Pessoas cadastradas: #{cadastro.qtdTotalPessoa}"
puts "Pessoas: #{cadastro.qtdPessoa}"
puts "Pessoas Físicas: #{cadastro.qtdPessoaFisica}"