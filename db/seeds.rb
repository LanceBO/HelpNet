# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Booking.destroy_all
Training.destroy_all
Issue.destroy_all
Ticket.destroy_all
User.destroy_all
Solution.destroy_all


user = User.create(email: "helpnet@gmail.com", password: "123456", first_name: "René", last_name: "Clark", helper: false, helper_status: false )
helper = User.create(email: "helper@gmail.com", password: "123456", first_name: "Helper", last_name: "Help", helper: true, helper_status: true )
helper2 = User.create(email: "helper2@gmail.com", password: "123456", first_name: "Helper2", last_name: "Help2", helper: true, helper_status: true )
training = Training.create(title: "Comment Utiliser Gmail", category: "email", description: "Ce cours de base sur Gmail vous apprendra à utiliser le service de messagerie de Google. Vous apprendrez à créer un compte Gmail, à envoyer et recevoir des messages et à organiser votre boîte de réception.", price: 25, image: "gmail-background.jpg", address: "16 villa Gaudelet, Paris")
training1 = Training.create(title: " Comprendre les paramètres de sécurité de Gmail", category: "email", description: "Apprenez à configurer et à gérer les paramètres de sécurité de votre compte Gmail.", price: 25, image: "gmail-securite.jpg", address: "16 villa Gaudelet, Paris")
training2 = Training.create(title: "Utiliser les outils de productivité de Gmail", category: "email", description: "Découvrez comment utiliser les outils de productivité de Gmail pour améliorer votre productivité.", price: 30, image: "gmail-productivite.png", address: "16 villa Gaudelet, Paris")
training3 = Training.create(title: "Utiliser Gmail pour le travail", category: "email", description: "Découvrez comment utiliser Gmail pour améliorer votre productivité et votre efficacité au travail.", price: 30, image: "gmail-travail.jpg", address: "16 villa Gaudelet, Paris")
training4 = Training.create(title: "Installer Gmail sur son smartphone", category: "email", description: "Découvrez comment installer Gmail sur votre smartphone", price: 40, image: "google-workspace.jpg", address: "16 villa Gaudelet, Paris")
training5 = Training.create(title: "Quelles sont les alternatives à Gmail", category: "email", description: "Gmail ne convient pas ? Grâce à cette formation vous aurez une liste exhaustive des outils similaires à Gmail", price: 30, image: "gmail-alternatives.jpg", address: "16 villa Gaudelet, Paris")
booking = Booking.create(training: Training.last, user: User.last)

ticket = Ticket.create(status: nil, category: "Email Send", url: "test url", user: User.last)
solution = Solution.create(videourl: "https://www.youtube.com/embed/vhxLsok_9MM", title: "How to attach file to an email", description: "To attach a file to an email, bla bla bla", problems: "Ma pièce jointe ne s'envoie pas")
solution2 = Solution.create(videourl: "https://www.youtube.com/embed/vhxLsok_9MM?rel=0&cc_load_policy=1", title: "Blablabla", description: "blablabla", problems: "Je n'arrive pas à mettre une pièce jointe dans mon e-mail")
solution3 = Solution.create(videourl: "https://www.youtube.com/embed/FBRdb597RR8", title: "Error", description: "Error", problems: "Erreur : La taille de la pièce jointe dépasse la limite maximale")
solution4 = Solution.create(videourl: "https://www.youtube.com/embed/gRqqT3KHt78", title: "Error pièce jointe", description: "Error pièce jointe", problems: "Je n'arrive à pas télécharger une pièce jointe d'un e-mail reçu")
