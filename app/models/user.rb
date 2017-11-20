class User < ApplicationRecord

  attr_accessor :activation_token, :reset_token
  # Antes de salvar um novo usuário, chama o método downcase_email para deixar o e-mail em minúsculo
  before_save   :downcase_email
  # Antes de criar um novo usuário, cria o activation_digest
  before_create :create_activation_digest

  validates :username, presence: true, uniqueness: true, length: { minimum: 4, maximum: 100 }
  validates :password, presence: true, length: { minimum: 4, maximum: 100 }
  validates :password_digest, presence: true

  has_secure_password
  has_many :usuarioAvaliaJogos
  has_many :reviews
  has_one  :wishlist

  # Activates an account.
  def activate
    update_attribute(:activated,    true)
    update_attribute(:activated_at, Time.zone.now)
  end

  # Sends activation email.
  def send_activation_email
    UserMailer.account_activation(self).deliver_now
  end

  def create_reset_digest
    self.reset_token = User.new_token
    update_attribute(:reset_digest, User.digest(reset_token))
    update_attribute(:reset_sent_at, Time.zone.now)
  end

  # Sends password reset email.
  def send_password_reset_email
    UserMailer.password_reset(self).deliver_now
  end

  # Returns the hash digest of the given string.
  def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end

  # Returns true if the given token matches the digest.
  def authenticated?(attribute, token)
    digest = send("#{attribute}_digest")
    return false if digest.nil?
    BCrypt::Password.new(digest).is_password?(token)
  end

  # Returns a random token.
  def User.new_token
    SecureRandom.urlsafe_base64
  end

  # Returns true if a password reset has expired.
  def password_reset_expired?
    reset_sent_at < 24.hours.ago
  end

  def add_jogo(jogo_id)
    puts jogo_id
    wish = wishlist
    jogoWish = wishlist.jogo.find_by('jogo_id == ?', jogo_id)
  
    if jogoWish
      puts 'jogo ja tem na lista'
    else
      puts ' jogo está sendo adicionado'
      wishlist.jogo << Jogo.find(jogo_id)
      save
    end 
    puts 'não encontrei o jogo'
  end

  private

    # Converts email to all lower-case.
    def downcase_email
      self.email = email.downcase
    end

    # Creates and assigns the activation token and digest.
    def create_activation_digest
      self.activation_token = User.new_token
      self.activation_digest = User.digest(activation_token)
    end
end
