load 'pessoa_fisica.rb'

class Cadastro
	attr_accessor :lista

	def initialize
		@lista=Array.new
	end

	def add(pessoa)
		self.lista.push(pessoa)
	end

	def qtdTotalPessoa
		self.lista.count
	end

	def qtdPessoa
		n=0
		self.lista.each do |p|
			if(!p.is_a?PessoaFisica)
				n+=1
			end
		end
		return n
	end

	def qtdPessoaFisica
		n=0
		self.lista.each do |p|
			if(p.is_a?PessoaFisica)
				n+=1
			end
		end
		return n
	end
end