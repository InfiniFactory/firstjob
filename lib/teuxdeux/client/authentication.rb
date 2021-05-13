module TeuxDeux
  class Client
    module Authentication
      def authentication
        if login && password
          {:login => login, :password => pas