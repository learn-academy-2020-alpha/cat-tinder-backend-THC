#Progammer Checklist for Cat Tinder Backend =)

1. Create tests (for both models and requests)
    - check the ability to see the index of cats and create a new cat 
    - check the presence of name, age, and hobby
    - make sure that the hobby is at least 10 characters
2. Add methods (index & create) inside our controller
    - if the create causes error, show 'unprocessable_entity' 422 error
    - define cat_params (name, age, and hobby) 
3. Add validations (to match the tests) inside the 'cat.rb' model file

- Once done... connect to front-end using CORS & Fetch Cats B)!
