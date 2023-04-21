<!-- Improved compatibility of back to top link: See: https://github.com/othneildrew/Best-README-Template/pull/73 -->
<a name="readme-top"></a>
<!--
*** Thanks for checking out the Best-README-Template. If you have a suggestion
*** that would make this better, please fork the repo and create a pull request
*** or simply open an issue with the tag "enhancement".
*** Don't forget to give the project a star!
*** Thanks again! Now go create something AMAZING! :D
-->



<!-- PROJECT SHIELDS -->
<!--
*** I'm using markdown "reference style" links for readability.
*** Reference links are enclosed in brackets [ ] instead of parentheses ( ).
*** See the bottom of this document for the declaration of the reference variables
*** for contributors-url, forks-url, etc. This is an optional, concise syntax you may use.
*** https://www.markdownguide.org/basic-syntax/#reference-style-links
-->
[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]



<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="https://github.com/wise-app-team/wise-app-be">
    <img src="images/logo.png" alt="Logo" width="80" height="80">
  </a>

<h3 align="center">WiseApp</h3>

  <p align="center">
    project_description
    <br />
    <a href="https://github.com/wise-app-team/wise-app-be"><strong>Explore the docs »</strong></a>
    <br />
    <br />
       ·
    <a href="https://github.com/wise-app-team/wise-app-be/issues">Report Bug</a>
    ·
    <a href="https://github.com/wise-app-team/wise-app-be/issues">Request Feature</a>
  </p>
</div>



<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#roadmap">Roadmap</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
    <li><a href="#acknowledgments">Acknowledgments</a></li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## About The Project


Wise App is a web app seeking to solve a modern problem with a modern solution. As of 2019, Americans aged 65 or older take an average of four medications [^1]. Between insurance, specialties, and provider availability, not all medications are managed by the same providers, and that's where Wise App comes in.

WiseApp is an application that helps users manage their medication intake by providing features such as medication search, reminders, and interaction checking. Users can register through the site or use Google to log in through OmniAuth. Once logged in, they can search for their medications and add them to their profile. The application allows users to set reminders for when to take each medication and receive email or text notifications. They can also view any potential interactions that the medications have.

This project is the backend side of WiseApp and uses the following technology stack:

- Ruby 3.1.1
- Rails 7.0.4
- PostgreSQL as the database for Active Record
- Puma web server
- New Relic for application monitoring
- bcrypt for password security
- Faraday for making HTTP requests
- Bootsnap for caching to reduce boot times
- Figaro for managing application configuration
- JSON API Serializer for generating JSON responses

Additionally, the project uses several gems for development and testing, such as Capybara, RSpec, Faker, and Shoulda Matchers.



Stretch goals include adding a social aspect to help users find events in their local area.

[^1](https://www.kff.org/health-reform/issue-brief/data-note-prescription-drugs-and-older-adults/) 

This is the back end repo, the front end repo is located [here](https://github.com/wise-app-team/wise-app-fe)

<p align="right">(<a href="#readme-top">back to top</a>)</p>



### Built With

* [![Rails]][Rails-url]
* [![Circle-CI]][Circle-url]
* [![PostgreSQL]][PostgreSQL-url]
* [![Puma]][Puma-url]
* [![bcrypt]][bcrypt-url]
* [![Faraday]][Faraday-url]
* [![Figaro]][Figaro-url]
* [![JSON-Serializer]][JSON-Serializer-url]
* [![Capybara]][Capybara-url]
* [![RSpec]][RSpec-url]
* [![Faker]][Faker-url]
* [![Shoulda-Matchers]][Shoulda-Matchers-url]

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- GETTING STARTED -->
## Getting Started

To get a local copy up and running follow these simple example steps.

### Prerequisites

This is an example of how to list things you need to use the software and how to install them.
You must have the following software installed on your system:

* [Ruby](https://www.ruby-lang.org/en/downloads/)
* [Bundler](https://bundler.io/)
* [PostgreSQL](https://www.postgresql.org/download/)


### Installation

1. Clone the repo
   ```sh
   git clone git@github.com:wise-app-team/wise-app-be.git
   ```
2. Install dependencies
   ```sh
   bundle install
   ```
3. Configure the database by running rails db:setup:
   ```js
   rails db:setup
   ```
4. Start the server by running rails server:
   ```js
   rails server
   ```
5. Visit http://localhost:5000 in your web browser to confirm that the app is running. Notice the port of 5000 on the backend. The front end service will need to be running concurrently on localhost:3000

<p align="right">(<a href="#readme-top">back to top</a>)</p>

### Database Tables
Users:
![Users_table](/images/users_table.png)

Drugs:
![Drugs_table](/images/drugs_table.png)

User_drugs:
![User_drugs_table](/images/user_drugs_table.png)


See the [open issues](https://github.com/wise-app-team/wise-app-be/issues) for a full list of proposed features (and known issues).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

Below are the endpoints for the WiseApp. The base URL is https://http://localhost:5000/api/v1/ and all endpoints are relative to that URL. Until we have a production environment, the base URL will be the same for all environments.

Endpoint for user dashboard/user show:
```sh
http://localhost:5000/api/v1/users/1
```
Response:
```sh
{
    "data": {
        "id": "1",
        "type": "user",
        "attributes": {
            "name": "John Doe",
            "email": "john@john.com",
            "provider": null,
            "token": null,
            "password_digest": "$2a$12$5KMMwAVfpbBqpo7gNyIBkuHL6b2PmLj2T6TEJi906fW/po1cllVbO",
            "birthday": "1999-01-01",
            "phone_number": "1234567890",
            "street_address": "123 Main St",
            "city": "Denver",
            "state": "NY",
            "zip_code": "12345",
            "drugs": [
                {
                    "id": 1,
                    "rxcui": "209459",
                    "name": "acetaminophen 500 MG Oral Tablet [Tylenol]",
                    "synonym": "Tylenol 500 MG Oral Tablet",
                    "created_at": "2023-04-20T21:28:45.099Z",
                    "updated_at": "2023-04-20T21:28:45.099Z"
                },
                {
                    "id": 2,
                    "rxcui": "541894",
                    "name": "amphetamine aspartate 2.5 MG / amphetamine sulfate 2.5 MG / dextroamphetamine saccharate 2.5 MG / dextroamphetamine sulfate 2.5 MG Oral Tablet [Adderall]",
                    "synonym": "Adderall 10 MG Oral Tablet",
                    "created_at": "2023-04-20T21:28:45.112Z",
                    "updated_at": "2023-04-20T21:28:45.112Z"
                },
                {
                    "id": 3,
                    "rxcui": "828557",
                    "name": "acetaminophen 160 MG Chewable Tablet [Tylenol]",
                    "synonym": "Tylenol 160 MG Chewable Tablet",
                    "created_at": "2023-04-20T21:29:52.294Z",
                    "updated_at": "2023-04-20T21:29:52.294Z"
                },
                {
                    "id": 5,
                    "rxcui": "2374361",
                    "name": "acetaminophen 500 MG Oral Powder [Tylenol]",
                    "synonym": "Tylenol 500 MG Oral Powder",
                    "created_at": "2023-04-20T21:41:45.717Z",
                    "updated_at": "2023-04-20T21:41:45.717Z"
                }
            ],
            "user_drugs": [
                {
                    "id": 1,
                    "user_id": 1,
                    "drug_id": 1,
                    "dose1": "2000-01-01T09:00:00.000Z",
                    "dose2": "2000-01-01T12:00:00.000Z",
                    "dose3": "2000-01-01T19:00:00.000Z",
                    "prn": true,
                    "notes": "Take with food",
                    "created_at": "2023-04-20T21:28:45.134Z",
                    "updated_at": "2023-04-20T21:28:45.134Z"
                },
                {
                    "id": 2,
                    "user_id": 1,
                    "drug_id": 2,
                    "dose1": "2000-01-01T09:00:00.000Z",
                    "dose2": null,
                    "dose3": null,
                    "prn": false,
                    "notes": "Take with food and water",
                    "created_at": "2023-04-20T21:28:45.148Z",
                    "updated_at": "2023-04-20T21:28:45.148Z"
                },
                {
                    "id": 4,
                    "user_id": 1,
                    "drug_id": 3,
                    "dose1": "2000-01-01T16:29:00.000Z",
                    "dose2": null,
                    "dose3": null,
                    "prn": true,
                    "notes": "take this with a smile",
                    "created_at": "2023-04-20T21:30:00.880Z",
                    "updated_at": "2023-04-20T21:30:00.880Z"
                },
                {
                    "id": 5,
                    "user_id": 1,
                    "drug_id": 5,
                    "dose1": "2000-01-01T15:42:00.000Z",
                    "dose2": "2000-01-01T15:42:00.000Z",
                    "dose3": null,
                    "prn": false,
                    "notes": "oh yeah",
                    "created_at": "2023-04-20T21:42:41.845Z",
                    "updated_at": "2023-04-20T21:42:41.845Z"
                }
            ]
        }
    }
}
```

Endpoint for drug search:
```sh
https://rxnav.nlm.nih.gov/REST/drugs.json?name=Tylenol
```
Response:
```sh
{
    "drugGroup": {
        "name": null,
        "conceptGroup": [
            {
                "tty": "BPCK"
            },
            {
                "tty": "SBD",
                "conceptProperties": [
                    {
                        "rxcui": "1243440",
                        "name": "8 HR acetaminophen 650 MG Extended Release Oral Tablet [Tylenol]",
                        "synonym": "Tylenol 650 MG 8 HR Extended Release Oral Tablet",
                        "tty": "SBD",
                        "language": "ENG",
                        "suppress": "N",
                        "umlscui": ""
                    },
                    {
                        "rxcui": "1738139",
                        "name": "acetaminophen 325 MG Oral Capsule [Tylenol]",
                        "synonym": "Tylenol 325 MG Oral Capsule",
                        "tty": "SBD",
                        "language": "ENG",
                        "suppress": "N",
                        "umlscui": ""
                    },
                    {
                        "rxcui": "209387",
                        "name": "acetaminophen 325 MG Oral Tablet [Tylenol]",
                        "synonym": "Tylenol 325 MG Oral Tablet",
                        "tty": "SBD",
                        "language": "ENG",
                        "suppress": "N",
                        "umlscui": ""
                    },
                    {
                        "rxcui": "209459",
                        "name": "acetaminophen 500 MG Oral Tablet [Tylenol]",
                        "synonym": "Tylenol 500 MG Oral Tablet",
                        "tty": "SBD",
                        "language": "ENG",
                        "suppress": "N",
                        "umlscui": ""
                    },
                    {
                        "rxcui": "2178758",
                        "name": "acetaminophen 160 MG Oral Powder [Tylenol]",
                        "synonym": "Tylenol 160 MG Oral Powder",
                        "tty": "SBD",
                        "language": "ENG",
                        "suppress": "N",
                        "umlscui": ""
                    },
                    {
                        "rxcui": "2374361",
                        "name": "acetaminophen 500 MG Oral Powder [Tylenol]",
                        "synonym": "Tylenol 500 MG Oral Powder",
                        "tty": "SBD",
                        "language": "ENG",
                        "suppress": "N",
                        "umlscui": ""
                    },
                    {
                        "rxcui": "828555",
                        "name": "acetaminophen 32 MG/ML Oral Suspension [Tylenol]",
                        "synonym": "Tylenol 32 MG/ML Oral Suspension",
                        "tty": "SBD",
                        "language": "ENG",
                        "suppress": "N",
                        "umlscui": ""
                    },
                    {
                        "rxcui": "828557",
                        "name": "acetaminophen 160 MG Chewable Tablet [Tylenol]",
                        "synonym": "Tylenol 160 MG Chewable Tablet",
                        "tty": "SBD",
                        "language": "ENG",
                        "suppress": "N",
                        "umlscui": ""
                    }
                ]
            }
        ]
    }
}
```

Endpoint for drug interactions:
```sh
https://rxnav.nlm.nih.gov/REST/interaction/list.json?rxcuis=207106%20152923%20656659%20209459
```
Response:
```sh
{
    "nlmDisclaimer": "It is not the intention of NLM to provide specific medical advice, but rather to provide users with information to better understand their health and their medications. NLM urges you to consult with a qualified physician for advice about medications.",
    "fullInteractionTypeGroup": [
        {
            "sourceDisclaimer": "DrugBank is intended for educational and scientific research purposes only and you expressly acknowledge and agree that use of DrugBank is at your sole risk. The accuracy of DrugBank information is not guaranteed and reliance on DrugBank shall be at your sole risk. DrugBank is not intended as a substitute for professional medical advice, diagnosis or treatment..[www.drugbank.ca]",
            "sourceName": "DrugBank",
            "fullInteractionType": [
                {
                    "comment": "Drug1 (rxcui = 152923, name = simvastatin 40 MG Oral Tablet [Zocor], tty = SBD). Drug2 (rxcui = 207106, name = fluconazole 50 MG Oral Tablet [Diflucan], tty = SBD). Drug1 is resolved to simvastatin, Drug2 is resolved to fluconazole and interaction asserted in DrugBank between Simvastatin and Fluconazole.",
                    "minConcept": [
                        {
                            "rxcui": "152923",
                            "name": "simvastatin 40 MG Oral Tablet [Zocor]",
                            "tty": "SBD"
                        },
                        {
                            "rxcui": "207106",
                            "name": "fluconazole 50 MG Oral Tablet [Diflucan]",
                            "tty": "SBD"
                        }
                    ],
                    "interactionPair": [
                        {
                            "interactionConcept": [
                                {
                                    "minConceptItem": {
                                        "rxcui": "36567",
                                        "name": "simvastatin",
                                        "tty": "IN"
                                    },
                                    "sourceConceptItem": {
                                        "id": "DB00641",
                                        "name": "Simvastatin",
                                        "url": "https://go.drugbank.com/drugs/DB00641#interactions"
                                    }
                                },
                                {
                                    "minConceptItem": {
                                        "rxcui": "4450",
                                        "name": "fluconazole",
                                        "tty": "IN"
                                    },
                                    "sourceConceptItem": {
                                        "id": "DB00196",
                                        "name": "Fluconazole",
                                        "url": "https://go.drugbank.com/drugs/DB00196#interactions"
                                    }
                                }
                            ],
                            "severity": "N/A",
                            "description": "The metabolism of Simvastatin can be decreased when combined with Fluconazole."
                        }
                    ]
                },
                {
                    "comment": "Drug1 (rxcui = 152923, name = simvastatin 40 MG Oral Tablet [Zocor], tty = SBD). Drug2 (rxcui = 656659, name = bosentan 125 MG Oral Tablet, tty = SCD). Drug1 is resolved to simvastatin, Drug2 is resolved to bosentan and interaction asserted in DrugBank between Simvastatin and Bosentan. Drug1 is resolved to simvastatin, Drug2 is resolved to bosentan anhydrous and interaction asserted in DrugBank between Simvastatin and Bosentan.",
                    "minConcept": [
                        {
                            "rxcui": "152923",
                            "name": "simvastatin 40 MG Oral Tablet [Zocor]",
                            "tty": "SBD"
                        },
                        {
                            "rxcui": "656659",
                            "name": "bosentan 125 MG Oral Tablet",
                            "tty": "SCD"
                        }
                    ],
                    "interactionPair": [
                        {
                            "interactionConcept": [
                                {
                                    "minConceptItem": {
                                        "rxcui": "36567",
                                        "name": "simvastatin",
                                        "tty": "IN"
                                    },
                                    "sourceConceptItem": {
                                        "id": "DB00641",
                                        "name": "Simvastatin",
                                        "url": "https://go.drugbank.com/drugs/DB00641#interactions"
                                    }
                                },
                                {
                                    "minConceptItem": {
                                        "rxcui": "1468845",
                                        "name": "bosentan anhydrous",
                                        "tty": "PIN"
                                    },
                                    "sourceConceptItem": {
                                        "id": "DB00559",
                                        "name": "Bosentan",
                                        "url": "https://go.drugbank.com/drugs/DB00559#interactions"
                                    }
                                }
                            ],
                            "severity": "N/A",
                            "description": "The serum concentration of Simvastatin can be decreased when it is combined with Bosentan."
                        },
                        {
                            "interactionConcept": [
                                {
                                    "minConceptItem": {
                                        "rxcui": "36567",
                                        "name": "simvastatin",
                                        "tty": "IN"
                                    },
                                    "sourceConceptItem": {
                                        "id": "DB00641",
                                        "name": "Simvastatin",
                                        "url": "https://go.drugbank.com/drugs/DB00641#interactions"
                                    }
                                },
                                {
                                    "minConceptItem": {
                                        "rxcui": "75207",
                                        "name": "bosentan",
                                        "tty": "IN"
                                    },
                                    "sourceConceptItem": {
                                        "id": "DB00559",
                                        "name": "Bosentan",
                                        "url": "https://go.drugbank.com/drugs/DB00559#interactions"
                                    }
                                }
                            ],
                            "severity": "N/A",
                            "description": "The serum concentration of Simvastatin can be decreased when it is combined with Bosentan."
                        }
                    ]
                },
                {
                    "comment": "Drug1 (rxcui = 207106, name = fluconazole 50 MG Oral Tablet [Diflucan], tty = SBD). Drug2 (rxcui = 656659, name = bosentan 125 MG Oral Tablet, tty = SCD). Drug1 is resolved to fluconazole, Drug2 is resolved to bosentan and interaction asserted in DrugBank between Fluconazole and Bosentan. Drug1 is resolved to fluconazole, Drug2 is resolved to bosentan anhydrous and interaction asserted in DrugBank between Fluconazole and Bosentan.",
                    "minConcept": [
                        {
                            "rxcui": "207106",
                            "name": "fluconazole 50 MG Oral Tablet [Diflucan]",
                            "tty": "SBD"
                        },
                        {
                            "rxcui": "656659",
                            "name": "bosentan 125 MG Oral Tablet",
                            "tty": "SCD"
                        }
                    ],
                    "interactionPair": [
                        {
                            "interactionConcept": [
                                {
                                    "minConceptItem": {
                                        "rxcui": "4450",
                                        "name": "fluconazole",
                                        "tty": "IN"
                                    },
                                    "sourceConceptItem": {
                                        "id": "DB00196",
                                        "name": "Fluconazole",
                                        "url": "https://go.drugbank.com/drugs/DB00196#interactions"
                                    }
                                },
                                {
                                    "minConceptItem": {
                                        "rxcui": "1468845",
                                        "name": "bosentan anhydrous",
                                        "tty": "PIN"
                                    },
                                    "sourceConceptItem": {
                                        "id": "DB00559",
                                        "name": "Bosentan",
                                        "url": "https://go.drugbank.com/drugs/DB00559#interactions"
                                    }
                                }
                            ],
                            "severity": "N/A",
                            "description": "The metabolism of Bosentan can be decreased when combined with Fluconazole."
                        },
                        {
                            "interactionConcept": [
                                {
                                    "minConceptItem": {
                                        "rxcui": "4450",
                                        "name": "fluconazole",
                                        "tty": "IN"
                                    },
                                    "sourceConceptItem": {
                                        "id": "DB00196",
                                        "name": "Fluconazole",
                                        "url": "https://go.drugbank.com/drugs/DB00196#interactions"
                                    }
                                },
                                {
                                    "minConceptItem": {
                                        "rxcui": "75207",
                                        "name": "bosentan",
                                        "tty": "IN"
                                    },
                                    "sourceConceptItem": {
                                        "id": "DB00559",
                                        "name": "Bosentan",
                                        "url": "https://go.drugbank.com/drugs/DB00559#interactions"
                                    }
                                }
                            ],
                            "severity": "N/A",
                            "description": "The metabolism of Bosentan can be decreased when combined with Fluconazole."
                        }
                    ]
                },
                {
                    "comment": "Drug1 (rxcui = 152923, name = simvastatin 40 MG Oral Tablet [Zocor], tty = SBD). Drug2 (rxcui = 209459, name = acetaminophen 500 MG Oral Tablet [Tylenol], tty = SBD). Drug1 is resolved to simvastatin, Drug2 is resolved to acetaminophen and interaction asserted in DrugBank between Simvastatin and Acetaminophen.",
                    "minConcept": [
                        {
                            "rxcui": "152923",
                            "name": "simvastatin 40 MG Oral Tablet [Zocor]",
                            "tty": "SBD"
                        },
                        {
                            "rxcui": "209459",
                            "name": "acetaminophen 500 MG Oral Tablet [Tylenol]",
                            "tty": "SBD"
                        }
                    ],
                    "interactionPair": [
                        {
                            "interactionConcept": [
                                {
                                    "minConceptItem": {
                                        "rxcui": "36567",
                                        "name": "simvastatin",
                                        "tty": "IN"
                                    },
                                    "sourceConceptItem": {
                                        "id": "DB00641",
                                        "name": "Simvastatin",
                                        "url": "https://go.drugbank.com/drugs/DB00641#interactions"
                                    }
                                },
                                {
                                    "minConceptItem": {
                                        "rxcui": "161",
                                        "name": "acetaminophen",
                                        "tty": "IN"
                                    },
                                    "sourceConceptItem": {
                                        "id": "DB00316",
                                        "name": "Acetaminophen",
                                        "url": "https://go.drugbank.com/drugs/DB00316#interactions"
                                    }
                                }
                            ],
                            "severity": "N/A",
                            "description": "The metabolism of Simvastatin can be decreased when combined with Acetaminophen."
                        }
                    ]
                },
                {
                    "comment": "Drug1 (rxcui = 207106, name = fluconazole 50 MG Oral Tablet [Diflucan], tty = SBD). Drug2 (rxcui = 209459, name = acetaminophen 500 MG Oral Tablet [Tylenol], tty = SBD). Drug1 is resolved to fluconazole, Drug2 is resolved to acetaminophen and interaction asserted in DrugBank between Fluconazole and Acetaminophen.",
                    "minConcept": [
                        {
                            "rxcui": "207106",
                            "name": "fluconazole 50 MG Oral Tablet [Diflucan]",
                            "tty": "SBD"
                        },
                        {
                            "rxcui": "209459",
                            "name": "acetaminophen 500 MG Oral Tablet [Tylenol]",
                            "tty": "SBD"
                        }
                    ],
                    "interactionPair": [
                        {
                            "interactionConcept": [
                                {
                                    "minConceptItem": {
                                        "rxcui": "4450",
                                        "name": "fluconazole",
                                        "tty": "IN"
                                    },
                                    "sourceConceptItem": {
                                        "id": "DB00196",
                                        "name": "Fluconazole",
                                        "url": "https://go.drugbank.com/drugs/DB00196#interactions"
                                    }
                                },
                                {
                                    "minConceptItem": {
                                        "rxcui": "161",
                                        "name": "acetaminophen",
                                        "tty": "IN"
                                    },
                                    "sourceConceptItem": {
                                        "id": "DB00316",
                                        "name": "Acetaminophen",
                                        "url": "https://go.drugbank.com/drugs/DB00316#interactions"
                                    }
                                }
                            ],
                            "severity": "N/A",
                            "description": "The metabolism of Acetaminophen can be decreased when combined with Fluconazole."
                        }
                    ]
                }
            ]
        },
        {
            "sourceDisclaimer": "https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3422823/",
            "sourceName": "ONCHigh",
            "fullInteractionType": [
                {
                    "comment": "Drug1 (rxcui = 152923, name = simvastatin 40 MG Oral Tablet [Zocor], tty = SBD). Drug2 (rxcui = 207106, name = fluconazole 50 MG Oral Tablet [Diflucan], tty = SBD). Drug1 is resolved to simvastatin, Drug2 is resolved to fluconazole and interaction asserted in ONCHigh between simvastatin and fluconazole.",
                    "minConcept": [
                        {
                            "rxcui": "152923",
                            "name": "simvastatin 40 MG Oral Tablet [Zocor]",
                            "tty": "SBD"
                        },
                        {
                            "rxcui": "207106",
                            "name": "fluconazole 50 MG Oral Tablet [Diflucan]",
                            "tty": "SBD"
                        }
                    ],
                    "interactionPair": [
                        {
                            "interactionConcept": [
                                {
                                    "minConceptItem": {
                                        "rxcui": "36567",
                                        "name": "simvastatin",
                                        "tty": "IN"
                                    },
                                    "sourceConceptItem": {
                                        "id": "NA",
                                        "name": "simvastatin",
                                        "url": "NA"
                                    }
                                },
                                {
                                    "minConceptItem": {
                                        "rxcui": "4450",
                                        "name": "fluconazole",
                                        "tty": "IN"
                                    },
                                    "sourceConceptItem": {
                                        "id": "NA",
                                        "name": "fluconazole",
                                        "url": "NA"
                                    }
                                }
                            ],
                            "severity": "high",
                            "description": "HMG Co-A reductase inhibitors - CYP3A4 inhibitors"
                        }
                    ]
                }
            ]
        }
    ]
}
```

<!-- CONTRIBUTING -->
## Contributing

Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement".
Don't forget to give the project a star! Thanks again!

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTACT -->
## Contact

<div align="center">
  <img src="https://avatars.githubusercontent.com/u/114712752?v=4" alt="Profile" width="80" height="80">
  <p align="center">
    Kassandra Leyba<br>
    <a href="https://github.com/kassandraleyba">Github: kassandraleyba</a>
    <p><a href="https://www.linkedin.com/in/kassandra-leyba/">LinkedIn: kassandra-leyba</a></p>
  </p>
</div>

<div align="center">
  <img src="https://avatars.githubusercontent.com/u/117024855?v=4" alt="Profile" width="80" height="80">
  <p align="center">
    Bradley Dunlap<br>
    <a href="https://github.com/brad-dunlap">Github: brad-dunlap</a>
    <p><a href="https://www.linkedin.com/in/dunlap-brad/">LinkedIn: dunlap-brad</a></p>
  </p>
</div>

<div align="center">
  <img src="https://avatars.githubusercontent.com/u/112577589?v=4" alt="Profile" width="80" height="80">
  <p align="center">
    Meredith Trevino<br>
    <a href="https://github.com/MATrevino">Github: MATrevino</a>
    <p><a href="https://www.linkedin.com/in/meredith-trevino/">LinkedIn: meredith-trevino</a></p>
  </p>
</div>

<div align="center">
  <img src="https://avatars.githubusercontent.com/u/108768349?v=4" alt="Profile" width="80" height="80">
  <p align="center">
    Max MacGillivray<br>
    <a href="https://github.com/MoxieMax">Github: MoxieMax</a>
    <p><a href="https://www.linkedin.com/in/max-macgillivray/">LinkedIn: max-macgillivray</a></p>
  </p>
</div>

<div align="center">
  <img src="https://avatars.githubusercontent.com/u/17149928?v=4" alt="Profile" width="80" height="80">
  <p align="center">
    Isaac Alter<br>
    <a href="https://github.com/Isaac3924">Github: Isaac3924</a>
    <p><a href="https://www.linkedin.com/in/isaacalter/">LinkedIn: isaacalter</a></p>
  </p>
</div>

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- PROJECT MANAGER -->
## Project Manager

* Abdul Redd

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGMENTS -->
## Acknowledgments

* ["The Best README Template" by Github User othneil](https://github.com/othneildrew/Best-README-Template)


<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- GEMS -->
## Gems

* [Ruby 3.1.1](https://www.ruby-lang.org/en/)
* [Ruby on Rails 7.0.4](https://rubyonrails.org/)
* [PostgreSQL 1.1](https://www.postgresql.org/)
* [Puma 5.0](https://github.com/puma/puma)
* [bcrypt 3.1.7](https://github.com/codahale/bcrypt-ruby)
* [Faraday](https://github.com/lostisland/faraday)
* [Figaro](https://github.com/laserlemon/figaro)
* [JSONAPI::Serializer](https://github.com/jsonapi-serializer/jsonapi-serializer)
* [New Relic RPM](https://docs.newrelic.com/docs/apm/agents/ruby-agent/configuration/ruby-agent-configuration/)
* [RSpec](https://rspec.info/) (testing framework)
* [Capybara](https://github.com/teamcapybara/capybara) (acceptance testing framework)
* [FactoryBot](https://github.com/thoughtbot/factory_bot) (fixture replacement)
* [Faker](https://github.com/faker-ruby/faker) (fake data generator)
* [Orderly](https://github.com/jmondo/orderly) (gem for testing JSON response sorting)
* [Shoulda Matchers](https://github.com/thoughtbot/shoulda-matchers) (testing library)
* [SimpleCov](https://github.com/simplecov-ruby/simplecov) (code coverage analysis tool)
* [WebMock](https://github.com/bblimke/webmock) (library for stubbing HTTP requests)
* [Bootsnap](https://github.com/Shopify/bootsnap) (speeds up boot time)
* [TZInfo-Data](https://github.com/tzinfo/tzinfo-data) (timezone library)



<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/wise-app-team/wise-app-be.svg?style=for-the-badge
[contributors-url]: https://github.com/wise-app-team/wise-app-be/graphs/contributors

[forks-shield]: https://img.shields.io/github/forks/wise-app-team/wise-app-be.svg?style=for-the-badge
[forks-url]: https://github.com/wise-app-team/wise-app-be/network/members

[stars-shield]: https://img.shields.io/github/stars/wise-app-team/wise-app-be.svg?style=for-the-badge
[stars-url]: https://github.com/wise-app-team/wise-app-be/stargazers

[issues-shield]: https://img.shields.io/github/issues/wise-app-team/wise-app-be.svg?style=for-the-badge
[issues-url]: https://github.com/wise-app-team/wise-app-be/issues

[license-shield]: https://img.shields.io/github/license/github_username/repo_name.svg?style=for-the-badge
[license-url]: https://github.com/github_username/repo_name/blob/master/LICENSE.txt

[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://linkedin.com/in/linkedin_username

[product-screenshot]: images/screenshot.png


[Bootstrap.com]: https://img.shields.io/badge/Bootstrap-563D7C?style=for-the-badge&logo=bootstrap&logoColor=white
[Bootstrap-url]: https://getbootstrap.com
[JQuery.com]: https://img.shields.io/badge/jQuery-0769AD?style=for-the-badge&logo=jquery&logoColor=white
[JQuery-url]: https://jquery.com 

[Rails]: https://img.shields.io/badge/-Ruby%20on%20Rails-CC0000?logo=ruby-on-rails&logoColor=white&style=for-the-badge
[Rails-url]: https://rubyonrails.org 

[Circle-CI]: https://img.shields.io/circleci/build/github/wise-app-team/wise-app-be/main
[Circle-url]: https://app.circleci.com/

[PostgreSQL]: https://img.shields.io/badge/-PostgreSQL-4169E1?logo=postgresql&logoColor=white&style=for-the-badge
[PostgreSQL-url]: https://www.postgresql.org/

[Puma]: https://img.shields.io/badge/-Puma-FFD43B?logo=puma&logoColor=black&style=for-the-badge
[Puma-url]: https://github.com/puma/puma

[bcrypt]: https://img.shields.io/badge/-bcrypt-00599C?logo=gnu-privacy-guard&logoColor=white&style=for-the-badge
[bcrypt-url]: https://github.com/codahale/bcrypt-ruby

[Faraday]: https://img.shields.io/badge/-Faraday-3E3E3E?logo=ruby&logoColor=white&style=for-the-badge
[Faraday-url]: https://github.com/lostisland/faraday

[Figaro]: https://img.shields.io/badge/-Figaro-FF4136?logo=rubygems&logoColor=white&style=for-the-badge
[Figaro-url]: https://github.com/laserlemon/figaro

[JSON-Serializer]: https://img.shields.io/badge/-JSON%20API%20Serializer-1E90FF?logo=json&logoColor=white&style=for-the-badge
[JSON-Serializer-url]: https://github.com/jsonapi-serializer/jsonapi-serializer

[Capybara]: https://img.shields.io/badge/-Capybara-FF7F50?logo=rubygems&logoColor=white&style=for-the-badge
[Capybara-url]: https://github.com/teamcapybara/capybara

[RSpec]: https://img.shields.io/badge/-RSpec-FF7F50?logo=rubygems&logoColor=white&style=for-the-badge
[RSpec-url]: https://github.com/rspec/rspec

[Faker]: https://img.shields.io/badge/-Faker-FF69B4?logo=rubygems&logoColor=white&style=for-the-badge
[Faker-url]: https://github.com/faker-ruby/faker

[Shoulda-Matchers]: https://img.shields.io/badge/-Shoulda%20Matchers-5B5B5B?logo=rubygems&logoColor=white&style=for-the-badge
[Shoulda-Matchers-url]: https://github.com/thoughtbot/shoulda-matchers
