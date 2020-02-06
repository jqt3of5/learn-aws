require 'json'

def lambda_handler(event:, context:)

  x = fib(event["n"])
  
  { statusCode: 200, body: JSON.generate({x: x}) }
end

def fib(n)
  if n == 1
    return 1
  end
  
  if n == 0
    return 1
  end

  return fib(n - 1) + fib(n - 2)
end

