class Issue < ApplicationRecord
  belongs_to :ticket, optional: true
  belongs_to :user

  CATEGORIES = ["Problème matériel", "Problème sur internet", "Problème e-mail"]
  SUBCATEGORIES = ["Je n'arrive pas à me connecter", "Je n'arrive à envoyer un e-mail", "Je ne reçois plus mes e-mails", "Problème avec une pièce jointe", "Je reçois beaucoup de SPAMS", "Je n'arrive pas à supprimer un e-mail"]
  SUBSUBCATEGORIES = ["Je n'arrive pas à mettre jointe dans mon e-mail", "Ma pièce jointe jointe ne s'envoie pas", "Erreur : La taille de la pièce jointe dépasse la limite maximale", "Je n'arrive à pas télécharger une pièce jointe d'un e-mail reçu"]
  validates :category, presence: true, inclusion: { in: CATEGORIES}
  validates :subcategory, presence: true, inclusion: { in: SUBCATEGORIES}
  validates :subsubcategory, presence: true, inclusion: { in: SUBSUBCATEGORIES}



end
