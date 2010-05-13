class Facebook
  def self.parse_cookie(cookies, app_id, application_secret)
    return unless (cookie = cookies["fbs_#{app_id}"])
    cookie = cookie.gsub(/^\"|\"$/, '')
    hash = Rack::Utils::parse_query(cookie)
    sorted_pairs = hash.sort
    
    payload = ''
    sorted_pairs.each do |key, value|
      if key != 'sig'
        payload += "#{key}=#{value}"
      end
    end
    
    md5 = Digest::MD5.hexdigest("#{payload}#{application_secret}")
    if md5 == hash['sig']
      hash
    end
  end
end