class MyServer
  def call(env)
    return [200, {'Content-Type' => 'text/html'}, preety_response]
  end

  def preety_response
    (Time.now.to_i % 2).zero? ? ["<em>Hello</em>"] : ["<strong>Hello</strong>"]
  end
end
