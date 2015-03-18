class Usuario < ActiveRecord::Base
	#attr_accessor :nome, :sobrenome, :email

	validates_presence_of :nome
	validates :sobrenome, presence: true, length: { minimum: 5 }
	validates :email, presence: true, uniqueness: true

	def nomecompleto
		nome + " " + sobrenome
	end
end
