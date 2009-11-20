class Message
  class << self
    MAX_MESSAGES = 100
  
    def since(revision)
      get_messages(revision)
    end
    
    def deliver(message)
      new_counter = current_counter + 1
      cache.write('message_counter', new_counter)
      cache.write("message_#{new_counter}", message, :expires_in => 10.seconds)
      new_counter
    end
    
    private
      def get_messages(start_counter = nil)
        current = current_counter
        if start_counter.blank?
          start_counter = current < MAX_MESSAGES ? 0 : current - MAX_MESSAGES
        else
          start_counter = start_counter.to_i + 1
        end

        keys = (start_counter..current).map { |counter| "message_#{counter}" }

        {
          "messages" => cache.read_multi(keys).values_at(*keys).compact,
          "number" => current
        }
      end
    
      def current_counter
        if counter = cache.read('message_counter')
          counter.to_i
        else
          cache.write('message_counter', -1)
          -1
        end
      end
      
      def cache
        Rails.cache
      end
  end
end