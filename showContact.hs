email = "john@fp.com"
phone = 22490012

-- Pick a format of contact info
-- based on given choice
showContact choice = if choice == "email"
    then email
    else phone

-- theme: basics
-- goanna results: 4
-- oracle: false
-- intended fix: none