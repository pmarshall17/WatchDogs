require 'digest'
require 'pry'


resp = `curl http://api.petfinder.com/auth.getToken -F key=3cb99c576efa43d0164ed946c198bc20 -F sig=7037d74bf5d5d181b6d6d096bec901a1`

