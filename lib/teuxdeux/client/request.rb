
module TeuxDeux
  class Client
    module Request
      def get(path, options={}, raw=false)
        request(:get, path, options, raw)
      end
