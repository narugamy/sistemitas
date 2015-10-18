class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  attr_accessible :nombres, :apellidos, :nombre_perfil,
  				  :email, :password, :password_confirmation

  has_many :statuses

  validates :nombres, presence: true

  validates :apellidos, presence: true

  validates :nombre_perfil, presence: true,
                              uniqueness: true,
                              format: {
                                with: /[a-zA-Z0-9_-]+/,
                                message: 'Debe estar formateado correctamente.'
                              }

  def nombre_completo
  	nombre_perfil
  end
end
