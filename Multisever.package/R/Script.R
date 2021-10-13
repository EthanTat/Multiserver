#Creating multi-server function
usethis::use_r("Multiserver")

#Checking the code
devtools::check()
devtools::load_all()

#MIT lisence
usethis::use_mit_license("Ethan Tat")

#Documentation for ?Multiserver()
devtools::document()
?Multiserver()


#test that
usethis::use_testthat()
usethis::use_test("Multiserver")
devtools::test()


#referencing used packages
usethis::use_package("testthat")

#data loading
usethis::use_data_raw("bank")
