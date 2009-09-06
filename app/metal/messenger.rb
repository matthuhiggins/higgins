class Messenger
  NOT_FOUND = [404, {"Content-Type" => "text/html"}, "Not Found"]
  class << self
    def call(env)
      if env["PATH_INFO"] =~ /^\/message\/?(\d*)/
        case env["REQUEST_METHOD"]
          when "GET" then get_messages($1)
          when "POST" then deliver_message(env['rack.input'].readlines.to_s)
        end
      else
        NOT_FOUND
      end
    end
    
    private
      def get_messages(revision)
        [200, {}, Message.since(revision).to_json]
      end
    
      def deliver_message(text)
        new_counter = Message.deliver(text)
        [200, {}, new_counter.to_s]
      end
  end
end
