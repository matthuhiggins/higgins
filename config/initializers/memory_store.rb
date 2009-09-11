module ActiveSupport
  module Cache
    MemoryStore.class_eval do
      def read_multi(*keys)
        keys.flatten!
        keys.each_with_object({}) do |key, results|
          results[key] = @data[key]
        end
      end
    end
  end
end
