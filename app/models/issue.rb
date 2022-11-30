class Issue < ApplicationRecord
  belongs_to :ticket, optional: true
  belongs_to :user
  attr_accessor :new1, :new2, :new3
  attr_writer :current_step

  CATEGORIES = ["Problème matériel", "Problème sur internet", "Problème e-mail"]
  SUBCATEGORIES = ["Je n'arrive pas à me connecter", "Je n'arrive à envoyer un e-mail", "Je ne reçois plus mes e-mails", "Problème avec une pièce jointe", "Je reçois beaucoup de SPAMS", "Je n'arrive pas à supprimer un e-mail"]
  SUBSUBCATEGORIES = ["Je n'arrive pas à mettre jointe dans mon e-mail", "Ma pièce jointe jointe ne s'envoie pas", "Erreur : La taille de la pièce jointe dépasse la limite maximale", "Je n'arrive à pas télécharger une pièce jointe d'un e-mail reçu"]
  validates :category, presence: true, inclusion: { in: CATEGORIES}
  validates :subcategory, presence: true, inclusion: { in: SUBCATEGORIES}
  validates :subsubcategory, presence: true, inclusion: { in: SUBSUBCATEGORIES}

  validates_presence_of :new1, :if => lambda { |o| o.current_step == "new1" }
  validates_presence_of :new2, :if => lambda { |o| o.current_step == "new2" }
  validates_presence_of :new3, :if => lambda { |o| o.current_step == "new3" }

  def current_step
    @current_step || steps.first
  end

  def steps
    %w[new1 new2 new3]
  end

  def first_step?
    current_step == steps.first
  end

  def next_step
    self.current_step = steps[steps.index(current_step)+1]
  end

  def previous_step
    self.current_step = steps[steps.index(current_step)-1]
  end

  def last_step?
    current_step == steps.last
  end

  def new1?
    current_step == "new1"
  end

  def new2?
    current_step == "new2"
  end

  def new3?
    current_step == "new3"
  end

  def all_valid?
    steps.all? do |step|
      self.current_step = step
      valid?
    end
  end

end
