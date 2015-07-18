params = {"{\"data\":{\"sender_id\":1,\"recipient_id\":23,\"new_message\":\"Awesome, see you soon.\"}}"=>nil}

params = JSON.parse(params[:data])
puts params