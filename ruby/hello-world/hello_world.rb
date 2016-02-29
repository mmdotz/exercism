class HelloWorld

  def self.hello(name = (name_set = true; :Alice))
    if name_set
      'Hello, World!'
    else
      "Hello, #{name}!"
    end
  end

end
