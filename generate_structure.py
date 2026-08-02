import os
import json
from pathlib import Path

# Base directory
BASE_DIR = Path("C:/Users/firao/Desktop/ACADIA-CONTENT")

# Content types
CONTENT_TYPES = ["exam", "flashcard", "past_paper", "quiz", "short_note", "video"]

# University structure from structure.txt
UNIVERSITY_STRUCTURE = {
    "University": {
        "Freshman": {
            "First_Semester": {
                "Natural_Science": {
                    "civic": [
                        "Chapter 1_ introduction",
                        "Chapter 2_ health and fitness",
                        "Chapter 3_ cultural values",
                        "Chapter 4_ wild life",
                        "Chapter 5_ population"
                    ],
                    "geography": [
                        "Chapter 1_ introduction",
                        "Chapter 2_ the geology of Ethiopia and the horn",
                        "Chapter 3_ the topography of Ethiopia and the horn",
                        "Chapter 4_ drainage system and water resource of Ethiopia and the horn",
                        "Chapter 5_ the climate of Ethiopia and the horn",
                        "Chapter 6_ soils, natural vegetation and wildlife resource",
                        "Chapter 7_ population of ethiopia and the horn",
                        "Chapter 8_ economic activitie in Ethiopia"
                    ],
                    "logic": [
                        "Chapter 1_ introduction to philosophy",
                        "Chapter 2_ basic concept of logic",
                        "Chapter 3_ logic and language",
                        "Chapter 4_ basic concepts of critical thinking",
                        "Chapter 5_ informal fallacies",
                        "Chapter 6_ categorical propositions"
                    ],
                    "mathematics": [
                        "Chapter 1_ propositional logic and set theory",
                        "Chapter 2_ function",
                        "Chapter 3_ matrices and determinant",
                        "Chapter 4_ introduction to calculus"
                    ],
                    "psychology": [
                        "Chapter 10_ academic skills",
                        "Chapter 11_ social skills",
                        "Chapter 1_ essence of psychology",
                        "Chapter 2_ sensation and perception",
                        "Chapter 3_ leaning and theories of learning",
                        "Chapter 4_ memory and forgetting",
                        "Chapter 5_ motivation and emotion",
                        "Chapter 6_ personality",
                        "Chapter 7_ psychological disorder and treatment techniques",
                        "Chapter 8_ intro to life skills",
                        "Chapter 9_ inta-personal and interpersonal skills"
                    ]
                },
                "Social_Science": {
                    "civic": [
                        "Chapter 1_ introduction",
                        "Chapter 2_ health and fitness",
                        "Chapter 3_ cultural values",
                        "Chapter 4_ wild life",
                        "Chapter 5_ population"
                    ],
                    "geography": [
                        "Chapter 1_ introduction",
                        "Chapter 2_ the geology of Ethiopia and the horn",
                        "Chapter 3_ the topography of Ethiopia and the horn",
                        "Chapter 4_ drainage system and water resource of Ethiopia and the horn",
                        "Chapter 5_ the climate of Ethiopia and the horn",
                        "Chapter 6_ soils, natural vegetation and wildlife resource",
                        "Chapter 7_ population of ethiopia and the horn",
                        "Chapter 8_ economic activitie in Ethiopia"
                    ],
                    "logic": [
                        "Chapter 1_ introduction to philosophy",
                        "Chapter 2_ basic concept of logic",
                        "Chapter 3_ logic and language",
                        "Chapter 4_ basic concepts of critical thinking",
                        "Chapter 5_ informal fallacies",
                        "Chapter 6_ categorical propositions"
                    ],
                    "mathematics": [
                        "Chapter 1_ propositional logic and set theory",
                        "Chapter 2_ function",
                        "Chapter 3_ matrices and determinant",
                        "Chapter 4_ introduction to calculus"
                    ],
                    "psychology": [
                        "Chapter 10_ academic skills",
                        "Chapter 11_ social skills",
                        "Chapter 1_ essence of psychology",
                        "Chapter 2_ sensation and perception",
                        "Chapter 3_ leaning and theories of learning",
                        "Chapter 4_ memory and forgetting",
                        "Chapter 5_ motivation and emotion",
                        "Chapter 6_ personality",
                        "Chapter 7_ psychological disorder and treatment techniques",
                        "Chapter 8_ intro to life skills",
                        "Chapter 9_ inta-personal and interpersonal skills"
                    ]
                }
            },
            "Second_Semester": {
                "Pre_Engineering": {
                    "chemistry": [
                        "Chapter 1_ essential ideas in chemistry",
                        "Chapter 2_ atoms, molecules and ions",
                        "Chapter 3_ mass and mole concept",
                        "Chapter 4_ stoichiometry of chemical reaction",
                        "Chapter 5_ electronic structure and periodic properties of elements",
                        "Chapter 6_ chemical bonding and molecular geometry",
                        "Chapter 7_ equilibrium concepts and acid base equilibrium",
                        "Chapter 8_ organic chemistry"
                    ],
                    "emerging_technologies": [
                        "Chapter 1_ Introduction to Emerging Technologies",
                        "Chapter 2_ Overview for Data Science",
                        "Chapter 3_ Introduction to Artificial Intelligence (AI)",
                        "Chapter 4_ Internet of Things (IoT)",
                        "Chapter 5_ Augmented Reality",
                        "Chapter 6_ Ethics and Professionalism of Emerging Technologies"
                    ],
                    "mathematics": [
                        "Chapter 1_ calculus",
                        "Chapter 2_ differential equation",
                        "Chapter 3_ linear algebra",
                        "Chapter 4_ complex analysis"
                    ],
                    "physics": [
                        "Chapter 1_ mechanics",
                        "Chapter 2_ thermodynamics",
                        "Chapter 3_ electricity and magnetism",
                        "Chapter 4_ waves and optics",
                        "Chapter 5_ modern physics"
                    ]
                },
                "Other_Natural_Science": {
                    "Anthropology": [
                        "Unit 1_ Introducing Anthropology and its Subject Matter",
                        "Unit 2_ Human Culture and Ties that Connect",
                        "Unit 3_ Human Diversity, Culture Areas and Contact in Ethiopia",
                        "Unit 4_ Marginalized, Minorities, and Vulnerable Groups",
                        "Unit 5_ Identity, Inter-Ethnic Relations and Multiculturalism in Ethiopia",
                        "Unit 6_ Customary and Local Governance Systems and Peace Making",
                        "Unit 7_ Indigenous Knowledge Systems (IKS) and Practices"
                    ],
                    "Biology": [
                        "Chapter 10_ application of biological science",
                        "Chapter 1_ introduction",
                        "Chapter 2_ biological molecules",
                        "Chapter 3_ the cellular basics of life",
                        "Chapter 4_ cellular metabolism and metabolic disorder",
                        "Chapter 5_ genetics and evolution",
                        "Chapter 6_ infectious diseases and immunity",
                        "Chapter 7_ taxonomy of organism",
                        "Chapter 8_ ecology and conservation of natural resources",
                        "Chapter 9_ introduction to botany and zoology"
                    ],
                    "Chemistry": [
                        "Chapter 1_ essential ideas in chemistry",
                        "Chapter 2_ atoms, molecules and ions",
                        "Chapter 3_ mass and mole concept",
                        "Chapter 4_ stoichiometry of chemical reaction",
                        "Chapter 5_ electronic structure and periodic properties of elements",
                        "Chapter 6_ chemical bonding and molecular geometry",
                        "Chapter 7_ equilibrium concepts and acid base equilibrium",
                        "Chapter 8_ organic chemistry"
                    ],
                    "Economics": [
                        "Chapter 1_ basics of economics",
                        "Chapter 2_ theory of demand and supply",
                        "Chapter 3_ theory of customer behaviour",
                        "Chapter 4_ the theory of production and cost",
                        "Chapter 5_ market structure",
                        "Chapter 6_ fundamental concepts of macroeconomics"
                    ],
                    "Emerging Technologies": [
                        "Chapter 1_ Introduction to Emerging Technologies",
                        "Chapter 2_ Overview for Data Science",
                        "Chapter 3_ Introduction to Artificial Intelligence (AI)",
                        "Chapter 4_ Internet of Things (IoT)",
                        "Chapter 5_ Augmented Reality",
                        "Chapter 6_ Ethics and Professionalism of Emerging Technologies"
                    ]
                }
            }
        }
    }
}

# Structure from structure.txt
STRUCTURE = {
    "Grade_9": {
        "biology": [
            "Unit 1_ INTRODUCTION TO BIOLOGY",
            "Unit 2_ CHARACTERISTICS AND CLASSIFICATION OF ORGANISMS",
            "Unit 3_ CELLS",
            "Unit 4_ REPRODUCTION",
            "Unit 5_ HUMAN HEALTH, NUTRITION, AND DISEASE",
            "Unit 6_ ECOLOGY"
        ],
        "chemistry": [
            "Unit 1_ CHEMISTRY AND ITS IMPORTANCE",
            "Unit 2_ MEASUREMENTS AND SCIENTIFIC METHODS",
            "Unit 3_ STRUCTURE OF THE ATOM",
            "Unit 4_ PERIODIC CLASSIFICATION OF ELEMENTS",
            "Unit 5_ CHEMICAL BONDING"
        ],
        "citizenship": [
            "Unit 1_ ETHICAL VALUES",
            "Unit 2_ THE CULTURE OF USING DIGITAL TECHNOLOGY",
            "Unit 3_ CONSTITUTION AND CONSTITUTIONALISM",
            "Unit 4_ UNDERSTANDING INDIGENOUS KNOWLEDGE",
            "Unit 5_ MULTICULTURALISM IN ETHIOPIA",
            "Unit 6_ NATIONAL UNITY THROUGH DIVERSITY",
            "Unit 7_ PROBLEM SOLVING SKILLS",
            "Unit 8_ ETHIOPIA'S FOREIGN RELATIONS IN EAST AFRICA"
        ],
        "economics": [
            "Unit 1_ INTRODUCING ECONOMICS",
            "Unit 2_ THE BASIC ECONOMIC PROBLEMS AND ECONOMIC SYSTEMS",
            "Unit 3_ ECONOMIC RESOURCES AND MARKETS",
            "Unit 4_ INTRODUCTION TO DEMAND AND SUPPLY",
            "Unit 5_ INTRODUCTION TO PRODUCTION AND COST",
            "Unit 6_ INTRODUCTION TO MONEY",
            "Unit 7_ INTRODUCTION TO MACROECONOMICS",
            "Unit 8_ BASIC ENTREPRENEURSHIP"
        ],
        "english": [
            "Unit 1_ LIVING IN URBAN AREAS",
            "Unit 2_ STUDY SKILLS",
            "Unit 3_ TRAFFIC ACCIDENT",
            "Unit 4_ NATIONAL PARKS",
            "Unit 5_ HORTICULTURE",
            "Unit 6_ POVERTY IN ETHIOPIA",
            "Unit 7_ COMMUNITY SERVICES",
            "Unit 8_ COMMUNICABLE DISEASES"
        ],
        "geography": [
            "Unit 1_ INTRODUCTION TO GEOGRAPHY",
            "Unit 2_ THE EARTH",
            "Unit 3_ MAP READING AND INTERPRETATION",
            "Unit 4_ THE PHYSICAL ENVIRONMENT OF ETHIOPIA",
            "Unit 5_ POPULATION OF ETHIOPIA",
            "Unit 6_ ECONOMIC ACTIVITIES IN ETHIOPIA"
        ],
        "history": [
            "Unit 1_ THE DISCIPLINE OF HISTORY AND HUMAN EVOLUTION",
            "Unit 2_ ANCIENT WORLD CIVILIZATIONS UP TO c. 500 AD",
            "Unit 3_ PEOPLES AND STATES IN ETHIOPIA AND THE HORN TO THE END OF 13th C",
            "Unit 4_ THE MIDDLE AGES AND EARLY MODERN WORLD, C. 500 TO 1750s",
            "Unit 5_ PEOPLES AND STATES OF AFRICA TO 1500",
            "Unit 6_ AFRICA AND THE OUTSIDE WORLD 1500-1880s",
            "Unit 7_ STATES, PRINCIPALITIES, POPULATION MOVEMENTS & INTERACTIONS IN ETHIOPIA 13th TO MID-16th C",
            "Unit 8_ POLITICAL, SOCIAL AND ECONOMIC PROCESSES IN ETHIOPIA MID-16th TO MID-19th C",
            "Unit 9_ THE AGE OF REVOLUTIONS 1750s TO 1815"
        ],
        "it": [
            "Unit 1_ ORGANIZATION OF FILES",
            "Unit 2_ COMPUTER NETWORK",
            "Unit 3_ APPLICATION SOFTWARE",
            "Unit 4_ IMAGE PROCESSING AND MULTIMEDIA",
            "Unit 5_ INFORMATION AND COMPUTER SECURITY",
            "Unit 6_ FUNDAMENTALS OF PROGRAMMING"
        ],
        "mathematics": [
            "Unit 1_ RELATIONS AND FUNCTIONS",
            "Unit 2_ POLYNOMIAL FUNCTIONS",
            "Unit 3_ EXPONENTIAL AND LOGARITHMIC FUNCTIONS",
            "Unit 4_ TRIGONOMETRIC FUNCTIONS",
            "Unit 5_ CIRCLES",
            "Unit 6_ SOLID FIGURES",
            "Unit 7_ COORDINATE GEOMETRY"
        ],
        "physics": [
            "Unit 1_ VECTOR QUANTITIES",
            "Unit 2_ UNIFORMLY ACCELERATED MOTION",
            "Unit 3_ ELASTICITY AND STATIC EQUILIBRIUM OF RIGID BODY",
            "Unit 4_ STATIC AND CURRENT ELECTRICITY",
            "Unit 5_ MAGNETISM",
            "Unit 6_ ELECTROMAGNETIC WAVES AND GEOMETRICAL OPTICS"
        ]
    },
    "Grade_10": {
        "biology": [
            "Unit 1_ SUB-FIELDS OF BIOLOGY",
            "Unit 2_ PLANTS",
            "Unit 3_ BIOCHEMICAL MOLECULES",
            "Unit 4_ CELL REPRODUCTION",
            "Unit 5_ HUMAN BIOLOGY",
            "Unit 6_ ECOLOGICAL INTERACTION"
        ],
        "chemistry": [
            "Unit 1_ CHEMICAL REACTIONS AND STOICHIOMETRY",
            "Unit 2_ SOLUTIONS",
            "Unit 3_ IMPORTANT INORGANIC COMPOUNDS",
            "Unit 4_ ENERGY CHANGES AND ELECTROCHEMISTRY",
            "Unit 5_ METALS AND NONMETALS",
            "Unit 6_ HYDROCARBONS AND THEIR NATURAL SOURCES"
        ],
        "citizenship": [
            "Unit 1_ DEMOCRACY AND DEMOCRATIZATION",
            "Unit 2_ CITIZENS IN THE DIGITAL TECHNOLOGY AGE",
            "Unit 3_ UNDERSTANDING GOOD GOVERNANCE",
            "Unit 4_ PEACE AND INDIGENOUS CONFLICT RESOLUTION MECHANISMS",
            "Unit 5_ FEDERALISM IN ETHIOPIA",
            "Unit 6_ HUMAN RIGHTS",
            "Unit 7_ PATRIOTISM",
            "Unit 8_ GLOBALIZATION AND GLOBAL ISSUES"
        ],
        "economics": [
            "Unit 1_ THEORY OF CONSUMER BEHAVIOUR",
            "Unit 2_ THEORIES OF DEMAND AND SUPPLY",
            "Unit 3_ THEORIES OF PRODUCTION AND COST",
            "Unit 4_ MARKET STRUCTURE",
            "Unit 5_ BANKING AND FINANCE",
            "Unit 6_ ECONOMIC GROWTH",
            "Unit 7_ THE ETHIOPIAN ECONOMY",
            "Unit 8_ BUSINESS STARTUPS AND INNOVATION"
        ],
        "english": [
            "Unit 10_ DIGITAL VS SATELLITE TELEVISION",
            "Unit 1_ POPULATION GROWTH",
            "Unit 2_ TRAVEL BEHAVIORS",
            "Unit 3_ PUNCTUALITY",
            "Unit 4_ TOURIST ATTRACTIONS",
            "Unit 5_ HONEY PROCESSING",
            "Unit 6_ MIGRATION",
            "Unit 7_ BRANDING ETHIOPIA AND NATIONAL IDENTITY",
            "Unit 8_ THE HEALING POWER OF PLANTS",
            "Unit 9_ MULTILINGUALISM"
        ],
        "geography": [
            "Unit 1_ LANDFORMS OF AFRICA",
            "Unit 2_ CLIMATE OF AFRICA",
            "Unit 3_ NATURAL RESOURCE BASE OF AFRICA",
            "Unit 4_ POPULATION OF AFRICA",
            "Unit 5_ MAJOR ECONOMIC AND CULTURAL ACTIVITIES OF AFRICA",
            "Unit 6_ HUMAN NATURAL ENVIRONMENT INTERACTIONS",
            "Unit 7_ GEOGRAPHIC ISSUES AND PUBLIC CONCERNS IN AFRICA",
            "Unit 8_ GEOSPATIAL INFORMATION AND DATA PROCESSING"
        ],
        "history": [
            "Unit 1_ DEVELOPMENT OF CAPITALISM AND NATIONALISM 1815-1914",
            "Unit 2_ AFRICA AND THE COLONIAL EXPERIENCE (1880s-1960s)",
            "Unit 3_ SOCIAL, ECONOMIC AND POLITICAL DEVELOPMENTS IN ETHIOPIA MID 19th C TO 1941",
            "Unit 4_ SOCIETY AND POLITICS IN THE AGE OF WORLD WARS 1914-1945",
            "Unit 5_ GLOBAL AND REGIONAL DEVELOPMENTS SINCE 1945",
            "Unit 6_ ETHIOPIA INTERNAL DEVELOPMENTS AND EXTERNAL INFLUENCES FROM 1941 TO 1991",
            "Unit 7_ AFRICA SINCE 1960",
            "Unit 8_ POST-1991 DEVELOPMENTS IN ETHIOPIA",
            "Unit 9_ INDIGENOUS KNOWLEDGE AND HERITAGES OF ETHIOPIA"
        ],
        "it": [
            "Unit 1_ ORGANIZATION OF FILES",
            "Unit 2_ COMPUTER NETWORK",
            "Unit 3_ APPLICATION SOFTWARE",
            "Unit 4_ IMAGE PROCESSING AND MULTIMEDIA",
            "Unit 5_ INFORMATION AND COMPUTER SECURITY",
            "Unit 6_ FUNDAMENTALS OF PROGRAMMING"
        ],
        "mathematics": [
            "Unit 1_ RELATIONS AND FUNCTIONS",
            "Unit 2_ POLYNOMIAL FUNCTIONS",
            "Unit 3_ EXPONENTIAL AND LOGARITHMIC FUNCTIONS",
            "Unit 4_ TRIGONOMETRIC FUNCTIONS",
            "Unit 5_ CIRCLES",
            "Unit 6_ SOLID FIGURES",
            "Unit 7_ COORDINATE GEOMETRY"
        ],
        "physics": [
            "Unit 1_ VECTOR QUANTITIES",
            "Unit 2_ UNIFORMLY ACCELERATED MOTION",
            "Unit 3_ ELASTICITY AND STATIC EQUILIBRIUM OF RIGID BODY",
            "Unit 4_ STATIC AND CURRENT ELECTRICITY",
            "Unit 5_ MAGNETISM",
            "Unit 6_ ELECTROMAGNETIC WAVES AND GEOMETRICAL OPTICS"
        ]
    },
    "Grade_11": {
        "Natural_Science": {
            "agriculture": [
                "Unit 10_ INTRODUCTION TO NATURAL RESOURCES",
                "Unit 11_ MANAGEMENT OF NATURAL RESOURCES",
                "Unit 12_ CONCEPTS OF BIODIVERSITY",
                "Unit 13_ CLIMATE CHANGE ADAPTATION AND MITIGATION",
                "Unit 14_ INTRODUCTION TO HUMAN NUTRITION",
                "Unit 15_ DIVERSIFIED FOOD PRODUCTION AND CONSUMPTION",
                "Unit 1_ INTRODUCTION TO CROP PRODUCTION",
                "Unit 2_ FIELD CROPS PRODUCTION AND MANAGEMENT",
                "Unit 3_ INDUSTRIAL CROPS PRODUCTION AND MANAGEMENT",
                "Unit 4_ INTRODUCTION TO FARM ANIMALS",
                "Unit 5_ ANIMAL FEEDS AND FEEDING PRACTICES",
                "Unit 6_ ANIMAL GENETICS AND BREEDING PRACTICES",
                "Unit 7_ FARM ANIMALS HOUSING",
                "Unit 8_ BASIC ANIMAL HEALTH AND DISEASE CONTROL",
                "Unit 9_ DAIRY CATTLE PRODUCTION AND MANAGEMENT"
            ],
            "aptitude": [
                "Part 1_ Mathematical Part",
                "Part 2_ English Part"
            ],
            "biology": [
                "Unit 1_ BIOLOGY AND TECHNOLOGY",
                "Unit 2_ ANIMALS",
                "Unit 3_ ENZYMES",
                "Unit 4_ GENETICS",
                "Unit 5_ THE HUMAN BODY SYSTEMS",
                "Unit 6_ POPULATION AND NATURAL RESOURCES"
            ],
            "chemistry": [
                "Unit 1_ ATOMIC STRUCTURE AND PERIODIC PROPERTIES OF THE ELEMENTS",
                "Unit 2_ CHEMICAL BONDING",
                "Unit 3_ PHYSICAL STATES OF MATTER",
                "Unit 4_ CHEMICAL KINETICS",
                "Unit 5_ CHEMICAL EQUILIBRIUM",
                "Unit 6_ SOME IMPORTANT OXYGEN-CONTAINING ORGANIC COMPOUNDS"
            ],
            "english": [
                "Unit 10_ ARTIFICIAL INTELLIGENCE",
                "Unit 1_ ENVIRONMENTAL HAZARDS",
                "Unit 2_ CIVILIZATION",
                "Unit 3_ CAUSES OF ROAD TRAFFIC ACCIDENTS",
                "Unit 4_ PEOPLE AND NATURAL RESOURCES",
                "Unit 5_ IRRIGATION",
                "Unit 6_ GLOBAL WARMING",
                "Unit 7_ PATRIOTISM",
                "Unit 8_ EFFICIENCY OF HEALTH SERVICES",
                "Unit 9_ INDIGENOUS CONFLICT RESOLUTION"
            ],
            "it": [
                "Unit 1_ INFORMATION SYSTEMS AND ITS APPLICATIONS",
                "Unit 2_ EMERGING TECHNOLOGIES",
                "Unit 3_ DATABASE MANAGEMENT",
                "Unit 4_ WEB DEVELOPMENT",
                "Unit 5_ HARDWARE TROUBLESHOOTING AND PREVENTIVE MAINTENANCE",
                "Unit 6_ FUNDAMENTALS OF PROGRAMMING"
            ],
            "mathematics": [
                "Unit 1_ RELATIONS AND FUNCTIONS",
                "Unit 2_ RATIONAL EXPRESSIONS AND RATIONAL FUNCTIONS",
                "Unit 3_ MATRICES",
                "Unit 4_ DETERMINANTS AND THEIR PROPERTIES",
                "Unit 5_ VECTORS"
            ],
            "physics": [
                "Unit 1_ PHYSICS AND HUMAN SOCIETY",
                "Unit 2_ VECTORS",
                "Unit 3_ MOTION IN ONE AND TWO DIMENSIONS",
                "Unit 4_ DYNAMICS",
                "Unit 5_ HEAT CONDUCTION AND CALORIMETRY",
                "Unit 6_ ELECTROSTATICS AND ELECTRIC CIRCUIT",
                "Unit 7_ NUCLEAR PHYSICS"
            ]
        },
        "Social_Science": {
            "aptitude": [
                "Part 1_ Mathematical Part",
                "Part 2_ English Part"
            ],
            "citizenship": [
                "Unit 1_ DEMOCRACY AND DEMOCRATIZATION",
                "Unit 2_ CITIZENS IN THE DIGITAL TECHNOLOGY AGE",
                "Unit 3_ UNDERSTANDING GOOD GOVERNANCE",
                "Unit 4_ PEACE AND INDIGENOUS CONFLICT RESOLUTION MECHANISMS",
                "Unit 5_ FEDERALISM IN ETHIOPIA",
                "Unit 6_ HUMAN RIGHTS",
                "Unit 7_ PATRIOTISM",
                "Unit 8_ GLOBALIZATION AND GLOBAL ISSUES"
            ],
            "economics": [
                "Unit 1_ THEORY OF CONSUMER BEHAVIOR AND DEMAND",
                "Unit 2_ MARKET STRUCTURE AND THE DECISION OF FIRMS",
                "Unit 3_ NATIONAL INCOME ACCOUNTING",
                "Unit 4_ CONSUMPTION, SAVING AND INVESTMENT",
                "Unit 5_ TRADE AND FINANCE",
                "Unit 6_ ECONOMIC DEVELOPMENT",
                "Unit 7_ MAIN SECTORS, SECTORIAL POLICIES AND STRATEGIES OF ETHIOPIA"
            ],
            "english": [
                "Unit 10_ ARTIFICIAL INTELLIGENCE",
                "Unit 1_ ENVIRONMENTAL HAZARDS",
                "Unit 2_ CIVILIZATION",
                "Unit 3_ CAUSES OF ROAD TRAFFIC ACCIDENTS",
                "Unit 4_ PEOPLE AND NATURAL RESOURCES",
                "Unit 5_ IRRIGATION",
                "Unit 6_ GLOBAL WARMING",
                "Unit 7_ PATRIOTISM",
                "Unit 8_ EFFICIENCY OF HEALTH SERVICES",
                "Unit 9_ INDIGENOUS CONFLICT RESOLUTION"
            ],
            "geography": [
                "Unit 1_ FORMATION OF THE CONTINENTS",
                "Unit 2_ CLIMATE CLASSIFICATION AND CLIMATE REGIONS OF OUR WORLD",
                "Unit 3_ NATURAL RESOURCES AND CONFLICTS OVER RESOURCES",
                "Unit 4_ GLOBAL POPULATION DYNAMICS AND CHALLENGES",
                "Unit 5_ GEOGRAPHY AND ECONOMIC DEVELOPMENT",
                "Unit 6_ MAJOR GLOBAL ENVIRONMENTAL CHANGES",
                "Unit 7_ GEOGRAPHIC ISSUES AND PUBLIC CONCERNS",
                "Unit 8_ GEO-SPATIAL INFORMATION AND DATA PROCESSING"
            ],
            "history": [
                "Unit 1_ HISTORY, HISTORIOGRAPHY, AND HUMAN EVOLUTION",
                "Unit 2_ MAJOR SPOTS OF ANCIENT WORLD CIVILIZATIONS UP TO c.500 A.D",
                "Unit 3_ PEOPLES, STATES AND HISTORICAL PROCESSES IN ETHIOPIA AND THE HORN TO THE END OF THE 13TH CENTURY",
                "Unit 4_ THE MIDDLE AGES AND EARLY MODERN WORLD, C. 500 AD-1789",
                "Unit 5_ PEOPLES AND STATES OF AFRICA TO 1500",
                "Unit 6_ AFRICA AND THE OUTSIDE WORLD 1500-1880s",
                "Unit 7_ STATES, PRINCIPALITIES, POPULATION MOVEMENTS AND INTERACTIONS IN ETHIOPIA",
                "Unit 8_ POLITICAL, SOCIAL AND ECONOMIC PROCESSES IN ETHIOPIA, MID 16TH TO MID-19TH CENTURY",
                "Unit 9_ THE AGE OF REVOLUTIONS, 1789 TO 1815"
            ],
            "it": [
                "Unit 1_ INFORMATION SYSTEMS AND ITS APPLICATIONS",
                "Unit 2_ EMERGING TECHNOLOGIES",
                "Unit 3_ DATABASE MANAGEMENT",
                "Unit 4_ WEB DEVELOPMENT",
                "Unit 5_ HARDWARE TROUBLESHOOTING AND PREVENTIVE MAINTENANCE",
                "Unit 6_ FUNDAMENTALS OF PROGRAMMING"
            ],
            "mathematics": [
                "Unit 1_ RELATIONS AND FUNCTIONS",
                "Unit 2_ RATIONAL EXPRESSIONS AND RATIONAL FUNCTIONS",
                "Unit 3_ MATRICES",
                "Unit 4_ DETERMINANTS AND THEIR PROPERTIES",
                "Unit 5_ POPULATION AND NATURAL RESOURCES"
            ]
        }
    },
    "Grade_12": {
        "Natural_Science": {
            "agriculture": [
                "Unit 10_ FISHERY PRODUCTION AND MANAGEMENT",
                "Unit 11_ APICULTURE",
                "Unit 12_ NURSERY AND PLANTATION TECHNOLOGY",
                "Unit 13_ BASICS OF AGRO-FORESTRY SYSTEMS AND PRACTICES",
                "Unit 14_ SOIL AND WATER CONSERVATION",
                "Unit 15_ GENDER AND HUMAN NUTRITION",
                "Unit 16_ SAFE FOOD PRODUCTION AND POSTHARVEST HANDLING",
                "Unit 17_ APPLICATION OF INFORMATION AND COMMUNICATION TECHNOLOGIES (ICT) IN AGRICULTURE",
                "Unit 1_ VEGETABLE CROPS PRODUCTION AND MANAGEMENT",
                "Unit 2_ FRUIT CROPS PRODUCTION AND MANAGEMENT",
                "Unit 3_ ROOT AND TUBER CROPS PRODUCTION AND MANAGEMENT",
                "Unit 4_ COFFEE, TEA AND SPICES PRODUCTION AND MANAGEMENT",
                "Unit 5_ INTRODUCTION TO PLANT BIOTECHNOLOGY",
                "Unit 6_ BEEF CATTLE PRODUCTION AND MANAGEMENT",
                "Unit 7_ SHEEP AND GOAT PRODUCTION AND MANAGEMENT",
                "Unit 8_ CAMEL PRODUCTION AND MANAGEMENT",
                "Unit 9_ POULTRY PRODUCTION AND MANAGEMENT"
            ],
            "aptitude": [
                "Part 1_ Mathematical Part",
                "Part 2_ English Part"
            ],
            "biology": [
                "Unit 1_ APPLICATION OF BIOLOGY",
                "Unit 2_ MICROORGANISMS",
                "Unit 3_ ENERGY TRANSFORMATION",
                "Unit 4_ EVOLUTION",
                "Unit 5_ HUMAN BODY SYSTEM",
                "Unit 6_ CLIMATE CHANGE"
            ],
            "chemistry": [
                "Unit 1_ ACID-BASE CONCEPTS AND IONIC EQUILIBRIA",
                "Unit 2_ ELECTROCHEMISTRY",
                "Unit 3_ CHEMICAL KINETICS",
                "Unit 4_ ORGANIC CHEMISTRY",
                "Unit 5_ POLYMERS",
                "Unit 6_ ANALYTICAL CHEMISTRY"
            ],
            "english": [
                "Unit 10_ ARTIFICIAL INTELLIGENCE",
                "Unit 1_ ENVIRONMENTAL HAZARDS",
                "Unit 2_ CIVILIZATION",
                "Unit 3_ CAUSES OF ROAD TRAFFIC ACCIDENTS",
                "Unit 4_ PEOPLE AND NATURAL RESOURCES",
                "Unit 5_ IRRIGATION",
                "Unit 6_ GLOBAL WARMING",
                "Unit 7_ PATRIOTISM",
                "Unit 8_ EFFICIENCY OF HEALTH SERVICES",
                "Unit 9_ INDIGENOUS CONFLICT RESOLUTION"
            ],
            "it": [
                "Unit 1_ INFORMATION SYSTEMS AND THEIR APPLICATIONS",
                "Unit 2_ EMERGING TECHNOLOGIES",
                "Unit 3_ DATABASE MANAGEMENT SYSTEM",
                "Unit 4_ WEB AUTHORING",
                "Unit 5_ MAINTENANCE AND TROUBLESHOOTING",
                "Unit 6_ FUNDAMENTALS OF PROGRAMMING"
            ],
            "mathematics": [
                "Unit 1_ SEQUENCES AND SERIES",
                "Unit 2_ INTRODUCTIONS TO CALCULUS",
                "Unit 3_ STATISTICS",
                "Unit 4_ INTRODUCTION TO LINEAR PROGRAMMING",
                "Unit 5_ MATHEMATICAL APPLICATIONS IN BUSINESS"
            ],
            "physics": [
                "Unit 1_ PHYSICS AND HUMAN SOCIETY",
                "Unit 2_ VECTORS",
                "Unit 3_ MOTION IN ONE AND TWO DIMENSIONS",
                "Unit 4_ DYNAMICS",
                "Unit 5_ HEAT CONDUCTION AND CALORIMETRY",
                "Unit 6_ ELECTROSTATICS AND ELECTRIC CIRCUIT",
                "Unit 7_ NUCLEAR PHYSICS"
            ]
        },
        "Social_Science": {
            "aptitude": [
                "Part 1_ Mathematical Part",
                "Part 2_ English Part"
            ],
            "citizenship": [
                "Unit 1_ DEMOCRACY AND DEMOCRATIZATION",
                "Unit 2_ CITIZENS IN THE DIGITAL TECHNOLOGY AGE",
                "Unit 3_ UNDERSTANDING GOOD GOVERNANCE",
                "Unit 4_ PEACE AND INDIGENOUS CONFLICT RESOLUTION MECHANISMS",
                "Unit 5_ FEDERALISM IN ETHIOPIA",
                "Unit 6_ HUMAN RIGHTS",
                "Unit 7_ PATRIOTISM",
                "Unit 8_ GLOBALIZATION AND GLOBAL ISSUES"
            ],
            "economics": [
                "Unit 1_ THEORY OF CONSUMER BEHAVIOR AND DEMAND",
                "Unit 2_ MARKET STRUCTURE AND THE DECISION OF FIRMS",
                "Unit 3_ NATIONAL INCOME ACCOUNTING",
                "Unit 4_ CONSUMPTION, SAVING AND INVESTMENT",
                "Unit 5_ TRADE AND FINANCE",
                "Unit 6_ ECONOMIC DEVELOPMENT",
                "Unit 7_ MAIN SECTORS, SECTORIAL POLICIES AND STRATEGIES OF ETHIOPIA"
            ],
            "english": [
                "Unit 10_ ARTIFICIAL INTELLIGENCE",
                "Unit 1_ ENVIRONMENTAL HAZARDS",
                "Unit 2_ CIVILIZATION",
                "Unit 3_ CAUSES OF ROAD TRAFFIC ACCIDENTS",
                "Unit 4_ PEOPLE AND NATURAL RESOURCES",
                "Unit 5_ IRRIGATION",
                "Unit 6_ GLOBAL WARMING",
                "Unit 7_ PATRIOTISM",
                "Unit 8_ EFFICIENCY OF HEALTH SERVICES",
                "Unit 9_ INDIGENOUS CONFLICT RESOLUTION"
            ],
            "geography": [
                "Unit 1_ FORMATION OF THE CONTINENTS",
                "Unit 2_ CLIMATE CLASSIFICATION AND CLIMATE REGIONS OF OUR WORLD",
                "Unit 3_ NATURAL RESOURCES AND CONFLICTS OVER RESOURCES",
                "Unit 4_ GLOBAL POPULATION DYNAMICS AND CHALLENGES",
                "Unit 5_ GEOGRAPHY AND ECONOMIC DEVELOPMENT",
                "Unit 6_ MAJOR GLOBAL ENVIRONMENTAL CHANGES",
                "Unit 7_ GEOGRAPHIC ISSUES AND PUBLIC CONCERNS",
                "Unit 8_ GEO-SPATIAL INFORMATION AND DATA PROCESSING"
            ],
            "history": [
                "Unit 1_ HISTORY, HISTORIOGRAPHY, AND HUMAN EVOLUTION",
                "Unit 2_ MAJOR SPOTS OF ANCIENT WORLD CIVILIZATIONS UP TO c. 500 A.D",
                "Unit 3_ PEOPLES, STATES AND HISTORICAL PROCESSES IN ETHIOPIA AND THE HORN TO THE END OF 13th C",
                "Unit 4_ THE MIDDLE AGES AND EARLY MODERN WORLD, C. 500 AD-1789",
                "Unit 5_ PEOPLES AND STATES OF AFRICA TO 1500",
                "Unit 6_ AFRICA AND THE OUTSIDE WORLD 1500-1880s",
                "Unit 7_ STATES, PRINCIPALITIES, POPULATION MOVEMENTS & INTERACTIONS IN ETHIOPIA 13th TO MID-16th C",
                "Unit 8_ POLITICAL, SOCIAL AND ECONOMIC PROCESSES IN ETHIOPIA MID-16th TO MID-19th C",
                "Unit 9_ THE AGE OF REVOLUTIONS 1750s TO 1815"
            ],
            "it": [
                "Unit 1_ INFORMATION SYSTEMS AND THEIR APPLICATIONS",
                "Unit 2_ EMERGING TECHNOLOGIES",
                "Unit 3_ DATABASE MANAGEMENT SYSTEM",
                "Unit 4_ WEB AUTHORING",
                "Unit 5_ MAINTENANCE AND TROUBLESHOOTING",
                "Unit 6_ FUNDAMENTALS OF PROGRAMMING"
            ],
            "mathematics": [
                "Unit 1_ SEQUENCES AND SERIES",
                "Unit 2_ INTRODUCTIONS TO CALCULUS",
                "Unit 3_ STATISTICS",
                "Unit 4_ INTRODUCTION TO LINEAR PROGRAMMING",
                "Unit 5_ MATHEMATICAL APPLICATIONS IN BUSINESS"
            ]
        }
    }
}

def create_metadata(subject_name, unit_name, content_type, index=1):
    """Create metadata for content item"""
    metadata = {
        "id": f"{content_type}_{index}",
        "title": f"{content_type.replace('_', ' ').title()} {index}",
        "description": f"{content_type.replace('_', ' ').title()} for {unit_name}",
        "content_type": content_type,
        "download_url": f"https://github.com/Acadia-et/ACADIA-CONTENT/raw/main/{subject_name}/{unit_name}/{content_type}/{content_type}_{index}.json",
        "file_format": "json",
        "file_size_mb": 0.5,
        "created_at": "2026-08-02T00:00:00Z"
    }
    return metadata

def create_unit_metadata(subject_name, unit_name, units_list):
    """Create metadata for a unit"""
    metadata = {
        "id": unit_name.lower().replace(" ", "_"),
        "title": unit_name,
        "description": f"{unit_name} for {subject_name}",
        "content_types": CONTENT_TYPES,
        "units": []
    }
    return metadata

def create_subject_metadata(subject_name, units):
    """Create metadata for a subject"""
    metadata = {
        "id": subject_name.lower(),
        "title": subject_name.replace("_", " ").title(),
        "description": f"{subject_name.replace('_', ' ').title()} subject",
        "units": units
    }
    return metadata

def generate_structure():
    """Generate the complete folder structure and metadata"""
    # Generate High School structure
    for grade, content in STRUCTURE.items():
        grade_path = BASE_DIR / grade
        grade_path.mkdir(parents=True, exist_ok=True)
        
        # Check if this grade has streams (Grade 11/12)
        has_streams = any(isinstance(v, dict) for v in content.values())
        
        if has_streams:
            # Has streams (Grade 11/12)
            for stream, subjects in content.items():
                if not isinstance(subjects, dict):
                    continue
                stream_path = grade_path / stream
                stream_path.mkdir(parents=True, exist_ok=True)
                
                for subject, units in subjects.items():
                    if not isinstance(units, list):
                        continue
                    subject_path = stream_path / subject
                    subject_path.mkdir(parents=True, exist_ok=True)
                    
                    # Create subject metadata
                    subject_metadata = create_subject_metadata(subject, units)
                    with open(subject_path / "metadata.json", "w") as f:
                        json.dump(subject_metadata, f, indent=2)
                    
                    for unit in units:
                        unit_path = subject_path / unit
                        unit_path.mkdir(parents=True, exist_ok=True)
                        
                        # Create unit metadata
                        unit_metadata = create_unit_metadata(subject, unit, units)
                        with open(unit_path / "metadata.json", "w") as f:
                            json.dump(unit_metadata, f, indent=2)
                        
                        # Create content type folders
                        for content_type in CONTENT_TYPES:
                            content_path = unit_path / content_type
                            content_path.mkdir(parents=True, exist_ok=True)
                            
                            # Create content metadata
                            content_metadata = create_metadata(subject, unit, content_type)
                            with open(content_path / "metadata.json", "w") as f:
                                json.dump(content_metadata, f, indent=2)
        else:
            # No streams (Grade 9/10) - all values should be lists of units
            for subject, units in content.items():
                if not isinstance(units, list):
                    continue
                subject_path = grade_path / subject
                subject_path.mkdir(parents=True, exist_ok=True)
                
                # Create subject metadata
                subject_metadata = create_subject_metadata(subject, units)
                with open(subject_path / "metadata.json", "w") as f:
                    json.dump(subject_metadata, f, indent=2)
                
                for unit in units:
                    unit_path = subject_path / unit
                    unit_path.mkdir(parents=True, exist_ok=True)
                    
                    # Create unit metadata
                    unit_metadata = create_unit_metadata(subject, unit, units)
                    with open(unit_path / "metadata.json", "w") as f:
                        json.dump(unit_metadata, f, indent=2)
                    
                    # Create content type folders
                    for content_type in CONTENT_TYPES:
                        content_path = unit_path / content_type
                        content_path.mkdir(parents=True, exist_ok=True)
                        
                        # Create content metadata
                        content_metadata = create_metadata(subject, unit, content_type)
                        with open(content_path / "metadata.json", "w") as f:
                            json.dump(content_metadata, f, indent=2)
    
    # Generate University structure
    for level, year in UNIVERSITY_STRUCTURE.items():
        level_path = BASE_DIR / level
        level_path.mkdir(parents=True, exist_ok=True)
        
        for year_name, semesters in year.items():
            year_path = level_path / year_name
            year_path.mkdir(parents=True, exist_ok=True)
            
            for semester, streams in semesters.items():
                semester_path = year_path / semester
                semester_path.mkdir(parents=True, exist_ok=True)
                
                for stream, subjects in streams.items():
                    stream_path = semester_path / stream
                    stream_path.mkdir(parents=True, exist_ok=True)
                    
                    for subject, chapters in subjects.items():
                        subject_path = stream_path / subject
                        subject_path.mkdir(parents=True, exist_ok=True)
                        
                        # Create subject metadata
                        subject_metadata = create_subject_metadata(subject, chapters)
                        with open(subject_path / "metadata.json", "w") as f:
                            json.dump(subject_metadata, f, indent=2)
                        
                        for chapter in chapters:
                            chapter_path = subject_path / chapter
                            chapter_path.mkdir(parents=True, exist_ok=True)
                            
                            # Create chapter metadata
                            chapter_metadata = create_unit_metadata(subject, chapter, chapters)
                            with open(chapter_path / "metadata.json", "w") as f:
                                json.dump(chapter_metadata, f, indent=2)
                            
                            # Create content type folders
                            for content_type in CONTENT_TYPES:
                                content_path = chapter_path / content_type
                                content_path.mkdir(parents=True, exist_ok=True)
                                
                                # Create content metadata
                                content_metadata = create_metadata(subject, chapter, content_type)
                                with open(content_path / "metadata.json", "w") as f:
                                    json.dump(content_metadata, f, indent=2)

if __name__ == "__main__":
    generate_structure()
    print("Structure generated successfully!")
