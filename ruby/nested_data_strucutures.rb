# challenge 5.5 Release 2

# For this excercise we will take one of DBC's ideas.
# We will demonstrte queries on nested data structures.
# Theme for this excercise will be a Fashion Show.

#Fashion Show hash
  #Sub-hash of Runways (2 runways)
    #Hash key: agency, model_name
    # 3 agencies with 3 models in each agency

fashion_show = {
    runway1: { agency1_1: [ "roni", "gisela", "evaline" ],
           agency2_1: [ "lucie", "tyra", "hailey" ],
           agency3_1: [ "nena", "cherie", "margaret" ]

    },
    runway2: { agency1_2: [ "thelma", "jen", "aileen" ],
           agency2_2: [ "abree", "chiara", "denise" ],
           agency3_2: [ "autumn", "mackenzie", "sable" ]

    },
}


  #list all models in show
  p fashion_show[:runway1][:agency1_1]
  p fashion_show[:runway1][:agency2_1]
  p fashion_show[:runway1][:agency3_1]
  p fashion_show[:runway2][:agency1_2]
  p fashion_show[:runway2][:agency2_2]
  p fashion_show[:runway2][:agency3_2]

  #list models in agency 2
  p fashion_show[:runway1][:agency2_1]
  p fashion_show[:runway2][:agency2_2]

  #who is the thrid person on runway 2 from agency3
  p fashion_show[:runway2][:agency3_2][2]