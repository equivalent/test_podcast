From what I understood, my task was to create backend and frontend on
reading podcast rss file.

Basically I created class Feed::Pull that will after initialization pull 
down the XML, parse it (with gem simple-rss) and returns  array of 
Feed::Item objects

Each Feed::Item object after initialization will have methods like

  *  display_title
  *  display_description
  *  url 

so I' will be able to call in (haml) views something like


    = item.display_titel
    = item.url


I written some tests around this, I don't know if they are 100% passing
when we run *rspec* I was just doing TDD in haste and  only red-green was in my head.
