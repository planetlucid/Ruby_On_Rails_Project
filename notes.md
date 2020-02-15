
Le Concept
---

**Hero Ranker:**     
    • Show a Hero with Rank Number heroes 
    • Also has criteria such as team name and comic book publisher name.

**User can:**
    • Add Hero name - STRING - 'Wolverine'
    • Add Team name - STRING - 'X-Men'
    • Add Publisher Name - STRING - 'Marvel'
    • Add Power Rank - Integer of 1 through 10000 - '500'
    • Possible Bonus Feature - Fights won#, lose#, draw#
     
**Rank Guide:**
    When entering rank consider the following...
    • Average Non-athletic Humans:  Folks that could seriously mess up a sandwhich.
        1 - 100
    • Athletic Humans: Folks that could seriously mess up a group of average people.
        101 - 300
    • Mutants & Meta-Humans: Folks that could seriously mess up a city.
        301 - 9500
    • Demigods:  Folks that could seriously mess up a planet.
        9501 - 9900
    • Omega Threat Levels: Folks that could destroy a planet easily.
        9901 - 10000 

**Implementation Ideas:**
    • Power Rank - dropdown with prepopulated Power Rank or text field that has the range 
        of 1-10000
   
    • when a number is chosen it dynamically display a word that describes their strengh 
        level like 'Mutant & Meta-Human'

**Scratchpad of Code**

Rank Hero App - 


'User' = 'User'[ probably should stay the same]
    • has_many :posts(Actually Hero)
    • has_many :comments(Actually Team)
    • has_many :commented_posts(no clue if this stay), through :comments(Actually Team)

'Post' = 'Hero'
    • belongs_to :user
    • has_many :comments(Actually Teams) 
    • has_many :categories (Actually Comics), through :comments(Teams) ---(*Still need to JOIN THIS)
    • has_many :users, through :comments(Actually Team)
    • Title = Hero's Name
    • Content = the Hero's rank

'Comment' = 'Team'  
    • belongs_to :user ---(*Still need to JOIN THIS)
    • belongs_to :hero
    • belongs_to :comic

'Category' = 'Comic'
    • Name of Comic
    • has_many :posts(Actually Heros)