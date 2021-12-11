final Map info = {
  "MPS INTERESTS": {
    "title": "Full stack web app for finding MP's registered interests by name",
    "imagePath": 'images/mps.png',
    "about":
        "This solo project came about after playing around on the parliamentary API for a mobile app I am currently working on. I noticed that the API did not return any results for MP's registered interests, and that the information was very hard to access systematically on their website. This site is an effort to fill that gap. The data is scraped from with web with Python, the back end is node.js serving data stored on MongoDB atlas and the front end is all written in dart using the flutter framework.",
    "links": {
      "frontend (dart/flutter)":
          "https://github.com/raymondfdavey/mps-registered-interests-front-end-full",
      "backend (node/mongoDB)":
          "https://github.com/raymondfdavey/mps-registered-interests-backend-deployed",
      "data scraping (python/notebook)":
          "https://github.com/raymondfdavey/mp-registered-interests-scraping-programme",
    },
    "hosted": "mongoDB, heroku and github pages. full stack hosted on azure before free service ran out",
    "live": "https://raymondfdavey.github.io/mps-registered-interests-front-end-flutter-web-build/#/",
    "includes":
        "data processing, web scraping, data processing, creating and seeding database (mongo), API contruction, web-app, adaptable for mobile viewing, works as a mobile app (thanks to flutter), hosting and deployment, using environment variables"
  },
  "NC NEWS": {
    "imagePath": 'images/ncnews.png',
    "title":
        "Full stack reddit-style news site displaying articles, votes, and comments",
    "stack": "SQL, node.js, react.js",
    "about":
        "This was a week long programming assignment on the full-stack developer bootcamp I did (Northcoders, Manchester) written primarily in javascript using the react framework for front end, and using node.js with postgres and knex for the back end. Includes testing with mocha and chai for both front and back end",
    "links": {
      "frontend (js/react)": "https://github.com/raymondfdavey/NC-news",
      "backend (node/SQL)": "https://github.com/raymondfdavey/be-nc-news-deployed"
    },
    "hosted": "heroku, postgres and github pages",
    "github": "https://github.com/raymondfdavey/NC-news",
    "live": "https://raymondfdavey.github.io/NC-news/",
    "includes":
        "testing, API construction including paginated rrsults, react-based front end"
  },
  "YRGLSET": {
    "imagePath": 'images/yrglset.png',
    "title":
        "Full stack yearly-goal-setter web app with log-in and authentication",
    "stack": "SQL, node.js, react.js",
    "about":
        "I made this partly to practice linking front and back end, and to try and get authentication going on a project. I after speaking with a friend I wanted to make an easy way to set year-based goals. Front end written with react in JS, back-end is node.js serving data from a SQL database ",
    "links": {
      "frontend (js/react)": "https://github.com/raymondfdavey/yrglset",
      "backend (node/SQL)": "https://github.com/raymondfdavey/YRGLSET-FINAL"
    },
    "hosted": "backend - heroku, frontend - gh pages",
    "github": "https://github.com/raymondfdavey/yrglset",
    "live": "https://raymondfdavey.github.io/yrglset/",
  },
  "WHO'S WHERE": {
    "imagePath": 'images/whoswhere.png',
    "title": "Front-end for a student admininstation system",
    "stack": "react.js",
    "about":
        "2-day programming assignment for Northcoders bootcamp to design a the front end of a student administration system. includes testing in yarn and rudimentary data visualising using a package built for react",
    "links": {
      "frontend (js/react)": "https://github.com/raymondfdavey/whoswhere",
    },
    "hosted": "GitHub pages",
    "github": "https://github.com/raymondfdavey/whoswhere",
    "live": "https://raymondfdavey.github.io/whoswhere/",
  },
  "QUAKE DATA": {
    "imagePath": 'images/dataquake.png',
    "title": "Front end for a public API",
    "stack": "react.js",
    "about":
        "One day programming assignment for Northcoders. I picked a public API and built a front end to present the data it served. Built using javascript and react",
    "links": {
      "frontend (js/react)": "https://github.com/raymondfdavey/quaker",
    },
    "hosted": "GitHub pages",
    "github": "https://github.com/raymondfdavey/quaker",
    "live": "https://raymondfdavey.github.io/quaker/",
  },
  "FREE THE BEES!": {
    "imagePath": 'images/bees.png',
    "title": "Just for fun and experimentation. Audio is crucial for this site",
    "stack": "react.js",
    "about":
        "began as a way just to play around with a few things in react. Inspired by the wonderful novel 'The Bees' by Laline Paull ",
    "links": {
      "frontend (js/react)": "https://github.com/raymondfdavey/bees-in-space"
    },
    "hosted": "GitHub pages",
    "github": "https://github.com/raymondfdavey/bees-in-space",
    "live": "https://raymondfdavey.github.io/bees-in-space/"
  },
  "SHAME": {
    "imagePath": 'images/shame.png',
    "title": "Website for a friends band (work in progress)",
    "stack": "flutter",
    "about":
        "Simple website for a friends band to practice a different style of site. In progress as they are asking for different bits of functionality. in it I have tried to experiment using audio and video as well as a slightly more creative style",
    "links": {
      "frontend (dart/flutter)": "https://github.com/raymondfdavey/shame"
    },
    "hosted": "GitHub pages",
    "github": "https://github.com/raymondfdavey/shame",
    "live": "https://raymondfdavey.github.io/shame/"
  },
};
