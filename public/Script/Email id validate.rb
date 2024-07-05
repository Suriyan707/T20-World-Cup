Pattern = /^[A-Za-z0-9+_.-]+@([A-Za-z0-9]+\.)+[A-Za-z]{2,6}$/
def email_valid? email
    email =~ Pattern
end
puts email_valid?("suriyan@gmail.com") ? "True" : "False"