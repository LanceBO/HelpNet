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
training = Training.create(title: "Comment Utiliser Gmail", category: "email", description: "Ce cours de base sur Gmail vous apprendra à utiliser le service de messagerie de Google. Vous apprendrez à créer un compte Gmail, à envoyer et recevoir des messages et à organiser votre boîte de réception.", price: 25, image: "gmail-background.jpg")
training1 = Training.create(title: " Comprendre les paramètres de sécurité de Gmail", category: "email", description: "Apprenez à configurer et à gérer les paramètres de sécurité de votre compte Gmail.", price: 25, image: "gmail-securite.jpg")
training2 = Training.create(title: "Utiliser les outils de productivité de Gmail", category: "email", description: "Découvrez comment utiliser les outils de productivité de Gmail pour améliorer votre productivité.", price: 30, image: "gmail-productivite.png")
training3 = Training.create(title: "Utiliser Gmail pour le travail", category: "email", description: "Découvrez comment utiliser Gmail pour améliorer votre productivité et votre efficacité au travail.", price: 30, image: "gmail-travail.jpg")
training4 = Training.create(title: "Après Gmail, je débute avec Google Workspace", category: "email", description: "Découvrez les outils liés à votre comtpe Gmail grâce à la plateforme Google Workspace", price: 40, image: "google-workspace.jpg", address: "16 villa Gaudelet, Paris")
training5 = Training.create(title: "Quelles sont les alternatives à Gmail", category: "email", description: "Gmail ne convient pas ? Grâce à cette formation vous aurez une liste exhaustive des outils similaires à Gmail, perme ", price: 30, image: "gmail-alternatives.jpg")
booking = Booking.create(training: Training.last, user: User.last)

ticket = Ticket.create(status: nil, category: "Email Send", url: "test url", user: User.last)
solution = Solution.create(videourl: "https://www.youtube.com/embed/vhxLsok_9MM?rel=0&cc_load_policy=1", title: "How to attach file to an email", description: "To attach a file to an email, bla bla bla", problems: "Ma pièce jointe ne s'envoie pas")
solution2 = Solution.create(videourl: "https://www.youtube.com/embed/vhxLsok_9MM?rel=0&cc_load_policy=1", title: "Blablabla", description: "blablabla", problems: "Je n'arrive pas à mettre une pièce jointe dans mon e-mail")
