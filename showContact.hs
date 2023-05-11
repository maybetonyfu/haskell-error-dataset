-- theme: basics
email = "john@fp.com"
phone = 22490012

-- Pick a format of contact info
-- based on given choice
showContact choice = if choice == "email"
    then email
    else phone