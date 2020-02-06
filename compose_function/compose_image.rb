require 'json'
require 'chunky_png'
require 'aws-sdk-s3'

s3 = Aws::S3::Resource.new(region:'us-west-2')

def lambda_handler(event:, context:)

  #payload = {image1:"image1.png", image2:"image2.png"} #event.payload
  payload = event.payload
  bucket = s3.bucket('estimation.learning.us-west-2')

  bucket.object(payload[:image1]).get(response_target: './image1.png')
  bucket.object(payload[:image2]).get(response_target: './image2.png')
  
  png1 = ChunkyPNG::Image.from_file('./image1.png')
  png2 = ChunkyPNG::Image.from_file('./image2.png')
  png1.compose!(png2, 10, 10)
  png1.save('./composited.png', :fast_rgba)

  bucket.object('rand').upload_file('composited.png')

  { statusCode: 200, body: JSON.generate({id: "rand"}) }
end
