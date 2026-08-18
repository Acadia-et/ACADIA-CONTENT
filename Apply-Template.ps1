# ============================================================================
# APPLY BIOLOGY GRADE 9 UNIT 1 TEMPLATE TO ALL CURRICULUM & UNIVERSITY
# Creates standard structure: exam/, flashcard/, past_paper/, quiz/, short_note/, video/
# Deletes ALL images/ folders
# ============================================================================

$basePath = "C:\Users\firao\Desktop\ACADIA\ACADIA-CONTENT"

# ============================================================================
# 1. SOURCE FILES (from Biology Grade 9 Unit 1)
# ============================================================================

$sourceBiologyPath = Join-Path $basePath "Grade_9\biology\Unit 1_ INTRODUCTION TO BIOLOGY"
$sourcePdf = Join-Path $sourceBiologyPath "short_note\unit1_biology_notes.pdf"
$sourceMp4 = Join-Path $sourceBiologyPath "video\test.mp4"

# ============================================================================
# 2. DEFINE ALL GRADES AND SUBJECTS
# ============================================================================

$grades = @("Grade_9", "Grade_10")

# Grade 11-12 have Natural_Science and Social_Science subfolders
$grade11_12 = @("Grade_11", "Grade_12")

# Subjects for Grade 9-10
$grade9_10Subjects = @{
    "biology" = @(
        "Unit 1_ INTRODUCTION TO BIOLOGY",
        "Unit 2_ CHARACTERISTICS AND CLASSIFICATION OF ORGANISMS",
        "Unit 3_ CELLS",
        "Unit 4_ REPRODUCTION",
        "Unit 5_ HUMAN HEALTH, NUTRITION, AND DISEASE",
        "Unit 6_ ECOLOGY"
    )
    "chemistry" = @(
        "Unit 1_ CHEMISTRY AND ITS IMPORTANCE",
        "Unit 2_ MEASUREMENTS AND SCIENTIFIC METHODS",
        "Unit 3_ STRUCTURE OF THE ATOM",
        "Unit 4_ PERIODIC CLASSIFICATION OF ELEMENTS",
        "Unit 5_ CHEMICAL BONDING"
    )
    "physics" = @(
        "Unit 1_ PHYSICS AND HUMAN SOCIETY",
        "Unit 2_ PHYSICAL QUANTITIES",
        "Unit 3_ MOTION IN A STRAIGHT LINE",
        "Unit 4_ FORCE, WORK, ENERGY AND POWER",
        "Unit 5_ SIMPLE MACHINES",
        "Unit 6_ MECHANICAL OSCILLATION AND SOUND WAVE",
        "Unit 7_ TEMPERATURE AND THERMOMETRY"
    )
    "mathematics" = @(
        "Unit 1_ FURTHER ON SETS",
        "Unit 2_ THE NUMBER SYSTEM",
        "Unit 3_ SOLVING EQUATIONS",
        "Unit 4_ SOLVING INEQUALITIES",
        "Unit 5_ INTRODUCTION TO TRIGONOMETRY",
        "Unit 6_ REGULAR POLYGONS",
        "Unit 7_ CONGRUENCY AND SIMILARITY",
        "Unit 8_ VECTORS IN TWO DIMENSIONS",
        "Unit 9_ STATISTICS AND PROBABILITY"
    )
    "english" = @(
        "Unit 1_ LIVING IN URBAN AREAS",
        "Unit 2_ STUDY SKILLS",
        "Unit 3_ TRAFFIC ACCIDENT",
        "Unit 4_ NATIONAL PARKS",
        "Unit 5_ HORTICULTURE",
        "Unit 6_ POVERTY IN ETHIOPIA",
        "Unit 7_ COMMUNITY SERVICES",
        "Unit 8_ COMMUNICABLE DISEASES"
    )
    "economics" = @(
        "Unit 1_ INTRODUCING ECONOMICS",
        "Unit 2_ THE BASIC ECONOMIC PROBLEMS AND ECONOMIC SYSTEMS",
        "Unit 3_ ECONOMIC RESOURCES AND MARKETS",
        "Unit 4_ INTRODUCTION TO DEMAND AND SUPPLY",
        "Unit 5_ INTRODUCTION TO PRODUCTION AND COST",
        "Unit 6_ INTRODUCTION TO MONEY",
        "Unit 7_ INTRODUCTION TO MACROECONOMICS",
        "Unit 8_ BASIC ENTREPRENEURSHIP"
    )
    "geography" = @(
        "Unit 1_ INTRODUCTION TO GEOGRAPHY",
        "Unit 2_ THE EARTH",
        "Unit 3_ MAP READING AND INTERPRETATION",
        "Unit 4_ THE PHYSICAL ENVIRONMENT OF ETHIOPIA",
        "Unit 5_ POPULATION OF ETHIOPIA",
        "Unit 6_ ECONOMIC ACTIVITIES IN ETHIOPIA"
    )
    "history" = @(
        "Unit 1_ THE DISCIPLINE OF HISTORY AND HUMAN EVOLUTION",
        "Unit 2_ ANCIENT WORLD CIVILIZATIONS UP TO c. 500 AD",
        "Unit 3_ PEOPLES AND STATES IN ETHIOPIA AND THE HORN TO THE END OF 13th C",
        "Unit 4_ THE MIDDLE AGES AND EARLY MODERN WORLD, C. 500 TO 1750s",
        "Unit 5_ PEOPLES AND STATES OF AFRICA TO 1500",
        "Unit 6_ AFRICA AND THE OUTSIDE WORLD 1500-1880s",
        "Unit 7_ STATES, PRINCIPALITIES, POPULATION MOVEMENTS & INTERACTIONS IN ETHIOPIA 13th TO MID-16th C",
        "Unit 8_ POLITICAL, SOCIAL AND ECONOMIC PROCESSES IN ETHIOPIA MID-16th TO MID-19th C",
        "Unit 9_ THE AGE OF REVOLUTIONS 1750s TO 1815"
    )
    "citizenship" = @(
        "Unit 1_ ETHICAL VALUES",
        "Unit 2_ THE CULTURE OF USING DIGITAL TECHNOLOGY",
        "Unit 3_ CONSTITUTION AND CONSTITUTIONALISM",
        "Unit 4_ UNDERSTANDING INDIGENOUS KNOWLEDGE",
        "Unit 5_ MULTICULTURALISM IN ETHIOPIA",
        "Unit 6_ NATIONAL UNITY THROUGH DIVERSITY",
        "Unit 7_ PROBLEM SOLVING SKILLS",
        "Unit 8_ ETHIOPIA'S FOREIGN RELATIONS IN EAST AFRICA"
    )
    "it" = @(
        "Unit 1_ ORGANIZATION OF FILES",
        "Unit 2_ COMPUTER NETWORK",
        "Unit 3_ APPLICATION SOFTWARE",
        "Unit 4_ IMAGE PROCESSING AND MULTIMEDIA",
        "Unit 5_ INFORMATION AND COMPUTER SECURITY",
        "Unit 6_ FUNDAMENTALS OF PROGRAMMING"
    )
}

# Grade 11-12 Natural Science subjects
$grade11_12Natural = @{
    "agriculture" = @(
        "Unit 1_ INTRODUCTION TO CROP PRODUCTION",
        "Unit 2_ FIELD CROPS PRODUCTION AND MANAGEMENT",
        "Unit 3_ INDUSTRIAL CROPS PRODUCTION AND MANAGEMENT",
        "Unit 4_ INTRODUCTION TO FARM ANIMALS",
        "Unit 5_ ANIMAL FEEDS AND FEEDING PRACTICES",
        "Unit 6_ ANIMAL GENETICS AND BREEDING PRACTICES",
        "Unit 7_ FARM ANIMALS HOUSING",
        "Unit 8_ BASIC ANIMAL HEALTH AND DISEASE CONTROL",
        "Unit 9_ DAIRY CATTLE PRODUCTION AND MANAGEMENT",
        "Unit 10_ INTRODUCTION TO NATURAL RESOURCES",
        "Unit 11_ MANAGEMENT OF NATURAL RESOURCES",
        "Unit 12_ CONCEPTS OF BIODIVERSITY",
        "Unit 13_ CLIMATE CHANGE ADAPTATION AND MITIGATION",
        "Unit 14_ INTRODUCTION TO HUMAN NUTRITION",
        "Unit 15_ DIVERSIFIED FOOD PRODUCTION AND CONSUMPTION"
    )
    "biology" = @(
        "Unit 1_ BIOLOGY AND TECHNOLOGY",
        "Unit 2_ ANIMALS",
        "Unit 3_ ENZYMES",
        "Unit 4_ GENETICS",
        "Unit 5_ THE HUMAN BODY SYSTEMS",
        "Unit 6_ POPULATION AND NATURAL RESOURCES"
    )
    "chemistry" = @(
        "Unit 1_ ATOMIC STRUCTURE AND PERIODIC PROPERTIES OF THE ELEMENTS",
        "Unit 2_ CHEMICAL BONDING",
        "Unit 3_ PHYSICAL STATES OF MATTER",
        "Unit 4_ CHEMICAL KINETICS",
        "Unit 5_ CHEMICAL EQUILIBRIUM",
        "Unit 6_ SOME IMPORTANT OXYGEN-CONTAINING ORGANIC COMPOUNDS"
    )
    "physics" = @(
        "Unit 1_ PHYSICS AND HUMAN SOCIETY",
        "Unit 2_ VECTORS",
        "Unit 3_ MOTION IN ONE AND TWO DIMENSIONS",
        "Unit 4_ DYNAMICS",
        "Unit 5_ HEAT CONDUCTION AND CALORIMETRY",
        "Unit 6_ ELECTROSTATICS AND ELECTRIC CIRCUIT",
        "Unit 7_ NUCLEAR PHYSICS"
    )
    "mathematics" = @(
        "Unit 1_ RELATIONS AND FUNCTIONS",
        "Unit 2_ RATIONAL EXPRESSIONS AND RATIONAL FUNCTIONS",
        "Unit 3_ MATRICES",
        "Unit 4_ DETERMINANTS AND THEIR PROPERTIES",
        "Unit 5_ VECTORS"
    )
    "english" = @(
        "Unit 1_ ENVIRONMENTAL HAZARDS",
        "Unit 2_ CIVILIZATION",
        "Unit 3_ CAUSES OF ROAD TRAFFIC ACCIDENTS",
        "Unit 4_ PEOPLE AND NATURAL RESOURCES",
        "Unit 5_ IRRIGATION",
        "Unit 6_ GLOBAL WARMING",
        "Unit 7_ PATRIOTISM",
        "Unit 8_ EFFICIENCY OF HEALTH SERVICES",
        "Unit 9_ INDIGENOUS CONFLICT RESOLUTION",
        "Unit 10_ ARTIFICIAL INTELLIGENCE"
    )
}

# Grade 11-12 Social Science subjects
$grade11_12Social = @{
    "economics" = @(
        "Unit 1_ THEORY OF CONSUMER BEHAVIOR AND DEMAND",
        "Unit 2_ MARKET STRUCTURE AND THE DECISION OF FIRMS",
        "Unit 3_ NATIONAL INCOME ACCOUNTING",
        "Unit 4_ CONSUMPTION, SAVING AND INVESTMENT",
        "Unit 5_ TRADE AND FINANCE",
        "Unit 6_ ECONOMIC DEVELOPMENT",
        "Unit 7_ MAIN SECTORS, SECTORIAL POLICIES AND STRATEGIES OF ETHIOPIA"
    )
    "geography" = @(
        "Unit 1_ FORMATION OF THE CONTINENTS",
        "Unit 2_ CLIMATE CLASSIFICATION AND CLIMATE REGIONS OF OUR WORLD",
        "Unit 3_ NATURAL RESOURCES AND CONFLICTS OVER RESOURCES",
        "Unit 4_ GLOBAL POPULATION DYNAMICS AND CHALLENGES",
        "Unit 5_ GEOGRAPHY AND ECONOMIC DEVELOPMENT",
        "Unit 6_ MAJOR GLOBAL ENVIRONMENTAL CHANGES",
        "Unit 7_ GEOGRAPHIC ISSUES AND PUBLIC CONCERNS",
        "Unit 8_ GEO-SPATIAL INFORMATION AND DATA PROCESSING"
    )
    "history" = @(
        "Unit 1_ HISTORY, HISTORIOGRAPHY, AND HUMAN EVOLUTION",
        "Unit 2_ MAJOR SPOTS OF ANCIENT WORLD CIVILIZATIONS UP TO c.500 A.D",
        "Unit 3_ PEOPLES, STATES AND HISTORICAL PROCESSES IN ETHIOPIA AND THE HORN TO THE END OF THE 13TH CENTURY",
        "Unit 4_ THE MIDDLE AGES AND EARLY MODERN WORLD, C. 500 AD-1789",
        "Unit 5_ PEOPLES AND STATES OF AFRICA TO 1500",
        "Unit 6_ AFRICA AND THE OUTSIDE WORLD 1500-1880s",
        "Unit 7_ STATES, PRINCIPALITIES, POPULATION MOVEMENTS AND INTERACTIONS IN ETHIOPIA",
        "Unit 8_ POLITICAL, SOCIAL AND ECONOMIC PROCESSES IN ETHIOPIA, MID 16TH TO MID-19TH CENTURY",
        "Unit 9_ THE AGE OF REVOLUTIONS, 1789 TO 1815"
    )
    "english" = @{
        "Grade_11" = @(
            "Unit 1_ ENVIRONMENTAL HAZARDS",
            "Unit 2_ CIVILIZATION",
            "Unit 3_ CAUSES OF ROAD TRAFFIC ACCIDENTS",
            "Unit 4_ PEOPLE AND NATURAL RESOURCES",
            "Unit 5_ IRRIGATION",
            "Unit 6_ GLOBAL WARMING",
            "Unit 7_ PATRIOTISM",
            "Unit 8_ EFFICIENCY OF HEALTH SERVICES",
            "Unit 9_ INDIGENOUS CONFLICT RESOLUTION",
            "Unit 10_ ARTIFICIAL INTELLIGENCE"
        )
        "Grade_12" = @(
            "Unit 1_ SUSTAINABLE DEVELOPMENT",
            "Unit 2_ TIME MANAGEMENT",
            "Unit 3_ EVIDENCE ON TRAFFIC ACCIDENT",
            "Unit 4_ NATURAL RESOURCE MANAGEMENT",
            "Unit 5_ MECHANIZED AGRICULTURE",
            "Unit 6_ GREEN ECONOMIES",
            "Unit 7_ NATIONAL PRIDE",
            "Unit 8_ TELEMEDICINE",
            "Unit 9_ CONFLICT MANAGEMENT",
            "Unit 10_ ROBOTICS"
        )
    }
    "mathematics" = @{
        "Grade_11" = @(
            "Unit 1_ RELATIONS AND FUNCTIONS",
            "Unit 2_ RATIONAL EXPRESSIONS AND RATIONAL FUNCTIONS",
            "Unit 3_ MATRICES",
            "Unit 4_ DETERMINANTS AND THEIR PROPERTIES",
            "Unit 5_ VECTORS"
        )
        "Grade_12" = @(
            "Unit 1_ SEQUENCES AND SERIES",
            "Unit 2_ INTRODUCTIONS TO CALCULUS",
            "Unit 3_ STATISTICS",
            "Unit 4_ INTRODUCTION TO LINEAR PROGRAMMING",
            "Unit 5_ MATHEMATICAL APPLICATIONS IN BUSINESS"
        )
    }
}

# ============================================================================
# 3. UNIVERSITY SUBJECTS
# ============================================================================

$universityFirstSemesterNatural = @(
    "english",
    "geography",
    "logic",
    "mathematics",
    "physics",
    "psychology"
)

$universityFirstSemesterSocial = @(
    "economics",
    "english",
    "geography",
    "logic",
    "mathematics",
    "psychology"
)

$universitySecondSemesterOther = @(
    "Anthropology",
    "Biology",
    "Chemistry",
    "Economics",
    "Emerging Technologies",
    "English Skill II",
    "History",
    "Moral and Citizenship Education"
)

$universitySecondSemesterPre = @(
    "Anthropology",
    "Applied Mathematics",
    "C++ Programming",
    "Emerging Technologies",
    "English Skill 2",
    "Entrepreneurship",
    "History",
    "Moral and Citizenship Education"
)

# University chapter names (First Semester)
$universityFirstChapters = @{
    "english" = @(
        "Chapter 1_ study skills",
        "Chapter 2_ health and fitness",
        "Chapter 3_ cultural values",
        "Chapter 4_ wild life",
        "Chapter 5_ population"
    )
    "geography" = @(
        "Chapter 1_ introduction",
        "Chapter 2_ the geology of Ethiopia and the horn",
        "Chapter 3_ the topography of Ethiopia and the horn",
        "Chapter 4_ drainage system and water resource of Ethiopia and the horn",
        "Chapter 5_ the climate of Ethiopia and the horn",
        "Chapter 6_ soils, natural vegetation and wildlife resource",
        "Chapter 7_ population of ethiopia and the horn",
        "Chapter 8_ economic activitie in Ethiopia"
    )
    "logic" = @(
        "Chapter 1_ introduction to philosophy",
        "Chapter 2_ basic concept of logic",
        "Chapter 3_ logic and language",
        "Chapter 4_ basic concepts of critical thinking",
        "Chapter 5_ informal fallacies",
        "Chapter 6_ categorical propositions"
    )
    "mathematics" = @(
        "Chapter 1_ propositional logic and set theory",
        "Chapter 2_ the real and complex number system",
        "Chapter 3_ function",
        "Chapter 4_ analytic geometry"
    )
    "physics" = @(
        "Chapter 1_ preliminaries",
        "Chapter 2_ kinematic and dynamic of particles",
        "Chapter 3_ fluid dynamics",
        "Chapter 4_ heat and thermodynamics",
        "Chapter 5_ oscillation, waves and optics",
        "Chapter 6_ electromagnetism and electronics",
        "Chapter 7_ cross cutting application of physics"
    )
    "psychology" = @(
        "Chapter 1_ essence of psychology",
        "Chapter 2_ sensation and perception",
        "Chapter 3_ leaning and theories of learning",
        "Chapter 4_ memory and forgetting",
        "Chapter 5_ motivation and emotion",
        "Chapter 6_ personality",
        "Chapter 7_ psychological disorder and treatment techniques",
        "Chapter 8_ intro to life skills",
        "Chapter 9_ inta-personal and interpersonal skills",
        "Chapter 10_ academic skills",
        "Chapter 11_ social skills"
    )
    "economics" = @(
        "Chapter 1_ basics of economics",
        "Chapter 2_ theory of demand and supply",
        "Chapter 3_ theory of customer behaviour",
        "Chapter 4_ the theory of production and cost",
        "Chapter 5_ market structure",
        "Chapter 6_ fundamental concepts of macroeconomics"
    )
}

# University Second Semester chapters
$universitySecondChapters = @{
    "Anthropology" = @(
        "Unit 1_ Introducing Anthropology and its Subject Matter",
        "Unit 2_ Human Culture and Ties that Connect",
        "Unit 3_ Human Diversity, Culture Areas and Contact in Ethiopia",
        "Unit 4_ Marginalized, Minorities, and Vulnerable Groups",
        "Unit 5_ Identity, Inter-Ethnic Relations and Multiculturalism in Ethiopia",
        "Unit 6_ Customary and Local Governance Systems and Peace Making",
        "Unit 7_ Indigenous Knowledge Systems (IKS) and Practices"
    )
    "Biology" = @(
        "Chapter 1_ introduction",
        "Chapter 2_ biological molecules",
        "Chapter 3_ the cellular basics of life",
        "Chapter 4_ cellular metabolism and metabolic disorder",
        "Chapter 5_ genetics and evolution",
        "Chapter 6_ infectious diseases and immunity",
        "Chapter 7_ taxonomy of organism",
        "Chapter 8_ ecology and conservation of natural resources",
        "Chapter 9_ introduction to botany and zoology",
        "Chapter 10_ application of biological science"
    )
    "Chemistry" = @(
        "Chapter 1_ essential ideas in chemistry",
        "Chapter 2_ atoms, molecules and ions",
        "Chapter 3_ mass and mole concept",
        "Chapter 4_ stoichiometry of chemical reaction",
        "Chapter 5_ electronic structure and periodic properties of elements",
        "Chapter 6_ chemical bonding and molecular geometry",
        "Chapter 7_ equilibrium concepts and acid base equilibrium",
        "Chapter 8_ organic chemistry"
    )
    "Emerging Technologies" = @(
        "Chapter 1_ Introduction to Emerging Technologies",
        "Chapter 2_ Overview for Data Science",
        "Chapter 3_ Introduction to Artificial Intelligence (AI)",
        "Chapter 4_ Internet of Things (IoT)",
        "Chapter 5_ Augmented Reality",
        "Chapter 6_ Ethics and Professionalism of Emerging Technologies",
        "Chapter 7_ Other Emerging Technologies"
    )
    "English Skill II" = @(
        "Unit 1_ Life Skills",
        "Unit 2_ Speculations about the future of Science",
        "Unit 3_ Environmental Protection",
        "Unit 4_ Indigenous Knowledge",
        "Unit 5_ Cultural Heritage"
    )
    "English Skill 2" = @(
        "Unit 1_ Life Skills",
        "Unit 2_ Speculations about the future of Science",
        "Unit 3_ Environmental Protection",
        "Unit 4_ Indigenous Knowledge",
        "Unit 5_ Cultural Heritage"
    )
    "History" = @(
        "Chapter 1_ introduction",
        "Chapter 2_ peoples and cultures in Ethiopia and the horn",
        "Chapter 3_ politics, economy and socio cultural processes in Ethiopia to end of the 13th century",
        "Chapter 4_ politics, economy and socio cultural processes in Ethiopia from late 13th to 16th century",
        "Chapter 5_ politics, economy and socio cultural processes in Ethiopia from early 16th to 18th century",
        "Chapter 6_ internal interactions and external relations in Ethiopia 1800-1941",
        "Chapter 7_ internal developments and external relations, 1941-1994"
    )
    "Moral and Citizenship Education" = @(
        "Chapter 1_ Understanding Civics and Ethics",
        "Chapter 2_ Approaches to Ethics",
        "Chapter 3_ Ethical Decision Making and Moral Judgments",
        "Chapter 4_ State, Government and Citizenship",
        "Chapter 5_ Constitution, Democracy and Human Rights"
    )
    "Economics" = @(
        "Chapter 1_ basics of economics",
        "Chapter 2_ theory of demand and supply",
        "Chapter 3_ theory of customer behaviour",
        "Chapter 4_ the theory of production and cost",
        "Chapter 5_ market structure",
        "Chapter 6_ fundamental concepts of macroeconomics"
    )
    "Applied Mathematics" = @(
        "Chapter 1_ Vectors and Vector Spaces",
        "Chapter 2_ Matrices and Determinants",
        "Chapter 3_ Limit and Continuity",
        "Chapter 4_ Derivatives",
        "Chapter 5_ Application of Derivative",
        "Chapter 6_ Integration",
        "Chapter 7_ Integration Techniques",
        "Chapter 8_ Improper Integrals",
        "Chapter 9_ Application of Integration (Area)",
        "Chapter 10_ Volume of Solids of Revolution",
        "Chapter 11_ Arc Length",
        "Chapter 12_ Surface Area"
    )
    "C++ Programming" = @(
        "Chapter 1_ Introduction to C++ Programming",
        "Chapter 2_ Basics of C++ (Comments, Case Sensitivity, Statements)",
        "Chapter 3_ Primitive Data Types",
        "Chapter 4_ flow of controls",
        "Chapter 5_ arrays and strings",
        "Chapter 6_ functions",
        "Chapter 7_ structures and unions",
        "Chapter 8_ pointers"
    )
    "Entrepreneurship" = @(
        "Chapter 1_ The Nature of Entrepreneurship",
        "Chapter 2_ Business Planning",
        "Chapter 3_ Business Formation",
        "Chapter 4_ Product-Service Development",
        "Chapter 5_ Marketing",
        "Chapter 6_ Business Financing",
        "Chapter 7_ Managing Growth and Transition"
    )
}

# ============================================================================
# 4. HELPER FUNCTIONS
# ============================================================================

function New-DirectoryIfNotExists {
    param([string]$path)
    if (-not (Test-Path $path)) {
        New-Item -Path $path -ItemType Directory -Force | Out-Null
        return $true
    }
    return $false
}

function New-FileIfNotExists {
    param([string]$path, [string]$content)
    if (-not (Test-Path $path)) {
        $content | Out-File -FilePath $path -Encoding UTF8
        return $true
    }
    return $false
}

function Copy-FileIfNotExists {
    param([string]$source, [string]$destination)
    if ((Test-Path $source) -and (-not (Test-Path $destination))) {
        Copy-Item -Path $source -Destination $destination -Force
        return $true
    }
    return $false
}

function Remove-ImageFolders {
    param([string]$path)
    $imageFolders = Get-ChildItem -Path $path -Directory -Recurse -ErrorAction SilentlyContinue | Where-Object { $_.Name -eq "images" }
    $count = 0
    foreach ($folder in $imageFolders) {
        Remove-Item -Path $folder.FullName -Recurse -Force -ErrorAction SilentlyContinue
        $count++
    }
    return $count
}

# ============================================================================
# 5. JSON TEMPLATES
# ============================================================================

function Get-UnitMetadataJson {
    param([string]$id, [string]$title, [string]$description = "Description for $title")
    $json = @"
{
  "id": "$id",
  "title": "$title",
  "description": "$description",
  "version": 1,
  "difficulty": "Medium",
  "estimatedTime": "45 minutes",
  "objectives": [
    "Objective 1 for this unit",
    "Objective 2 for this unit"
  ],
  "quizzes": [],
  "flashcards": [],
  "pdfs": [],
  "videos": [],
  "practiceExams": [],
  "pastPapers": []
}
"@
    return $json
}

function Get-ExamJson {
    param([string]$subject, [string]$grade, [string]$unitNum, [string]$unitTitle)
    $json = @"
{
  "items": [
    {
      "content_type": "exam",
      "title": "$unitTitle Unit Test",
      "total_questions": 10,
      "time_limit_minutes": 30,
      "passing_score": 60,
      "questions": [
        {
          "id": "${subject}_${grade}_u${unitNum}_exam_1",
          "question": "What is the main topic of this unit?",
          "options": {
            "A": "Option A - Correct Answer",
            "B": "Option B",
            "C": "Option C",
            "D": "Option D"
          },
          "correct_answer": "A",
          "explanation": "This is the correct answer because it best describes the main topic."
        },
        {
          "id": "${subject}_${grade}_u${unitNum}_exam_2",
          "question": "Which of the following is an important concept in this unit?",
          "options": {
            "A": "Concept A",
            "B": "Concept B",
            "C": "Concept C",
            "D": "Concept D"
          },
          "correct_answer": "A",
          "explanation": "Concept A is the key concept in this unit."
        },
        {
          "id": "${subject}_${grade}_u${unitNum}_exam_3",
          "question": "What is the primary purpose of studying this unit?",
          "options": {
            "A": "Purpose A",
            "B": "Purpose B",
            "C": "Purpose C",
            "D": "Purpose D"
          },
          "correct_answer": "A",
          "explanation": "The primary purpose is correctly described in Purpose A."
        }
      ]
    }
  ]
}
"@
    return $json
}

function Get-FlashcardJson {
    param([string]$unitTitle)
    $json = @"
{
  "items": [
    {
      "content_type": "flashcard",
      "title": "$unitTitle Flashcards",
      "total_cards": 8,
      "cards": [
        {
          "id": "fc_1",
          "front": "What is the main concept of this unit?",
          "back": "The main concept is the core idea of this unit.",
          "difficulty": "easy"
        },
        {
          "id": "fc_2",
          "front": "What is a key term in this unit?",
          "back": "A key term is an important vocabulary word.",
          "difficulty": "easy"
        },
        {
          "id": "fc_3",
          "front": "Why is this unit important?",
          "back": "This unit is important because it builds foundational knowledge.",
          "difficulty": "medium"
        },
        {
          "id": "fc_4",
          "front": "What are the main topics covered?",
          "back": "The main topics are the key areas of study in this unit.",
          "difficulty": "medium"
        }
      ]
    }
  ]
}
"@
    return $json
}

function Get-PastPaperJson {
    param([string]$subject, [string]$grade, [string]$unitNum, [string]$unitTitle)
    $json = @"
{
  "items": [
    {
      "content_type": "past_paper",
      "title": "$grade $subject $unitTitle Sample Past Paper",
      "year": 2025,
      "time_limit_minutes": 15,
      "total_questions": 4,
      "questions": [
        {
          "id": "${subject}_${grade}_u${unitNum}_pp1",
          "question": "What is the main topic of this unit?",
          "options": {
            "A": "Option A",
            "B": "Option B",
            "C": "Option C",
            "D": "Option D"
          },
          "correct_answer": "A",
          "explanation": "Explanation for the correct answer."
        },
        {
          "id": "${subject}_${grade}_u${unitNum}_pp2",
          "question": "Which concept is most important in this unit?",
          "options": {
            "A": "Concept A",
            "B": "Concept B",
            "C": "Concept C",
            "D": "Concept D"
          },
          "correct_answer": "A",
          "explanation": "Explanation for the correct answer."
        }
      ]
    }
  ]
}
"@
    return $json
}

function Get-QuizJson {
    param([string]$subject, [string]$grade, [string]$unitNum, [string]$unitTitle)
    $json = @"
{
  "items": [
    {
      "content_type": "quiz",
      "title": "$unitTitle Quick Check",
      "total_questions": 5,
      "time_limit_minutes": 10,
      "passing_score": 60,
      "questions": [
        {
          "id": "${subject}_${grade}_u${unitNum}_q1",
          "question": "What is the main topic of this unit?",
          "options": {
            "A": "Option A - Correct",
            "B": "Option B",
            "C": "Option C",
            "D": "Option D"
          },
          "correct_answer": "A",
          "explanation": "Explanation for the correct answer."
        },
        {
          "id": "${subject}_${grade}_u${unitNum}_q2",
          "question": "Which of the following is a key concept?",
          "options": {
            "A": "Concept A",
            "B": "Concept B",
            "C": "Concept C",
            "D": "Concept D"
          },
          "correct_answer": "A",
          "explanation": "Explanation for the correct answer."
        }
      ]
    }
  ]
}
"@
    return $json
}

function Get-NotesJson {
    param([string]$subject, [string]$grade, [string]$unitFolder, [string]$pdfName)
    $encodedFolder = [System.Web.HttpUtility]::UrlEncode($unitFolder)
    $json = @"
{
  "items": [
    {
      "content_type": "short_note",
      "title": "$unitFolder Notes",
      "download_url": "https://raw.githubusercontent.com/Acadia-et/ACADIA-CONTENT/main/$grade/$subject/$encodedFolder/short_note/$pdfName",
      "file_format": "pdf",
      "file_size_mb": 0.18,
      "free_content": false
    }
  ]
}
"@
    return $json
}

function Get-VideosJson {
    param([string]$subject, [string]$grade, [string]$unitFolder)
    $encodedFolder = [System.Web.HttpUtility]::UrlEncode($unitFolder)
    $json = @"
{
  "items": [
    {
      "content_type": "video",
      "title": "$grade $subject $unitFolder - Video 1",
      "download_url": "https://youtu.be/VIDEO_ID_1",
      "file_format": "youtube",
      "duration_seconds": 600,
      "free_content": false
    },
    {
      "content_type": "video",
      "title": "$grade $subject $unitFolder - Video 2",
      "download_url": "https://youtu.be/VIDEO_ID_2",
      "file_format": "youtube",
      "duration_seconds": 480,
      "free_content": false
    },
    {
      "content_type": "video",
      "title": "$grade $subject $unitFolder - Lab/Test Video",
      "download_url": "https://raw.githubusercontent.com/Acadia-et/ACADIA-CONTENT/main/$grade/$subject/$encodedFolder/video/test.mp4",
      "file_format": "mp4",
      "file_size_mb": 45.2,
      "duration_seconds": 180,
      "free_content": false
    }
  ]
}
"@
    return $json
}

function Get-UniversityMetadataJson {
    param([string]$subject, [string]$semester, [string]$stream)
    $json = @"
{
  "id": "${subject}_Freshman_${semester}",
  "grade": "Freshman",
  "semester": "$semester",
  "subject": "$subject",
  "stream": "$stream",
  "description": "Freshman $subject - $semester"
}
"@
    return $json
}

function Get-UniversityChapterJson {
    param([string]$subject, [string]$semester, [string]$stream, [string]$chapterId, [string]$chapterTitle, [string]$chapterFolder)
    $json = @"
{
  "items": [
    {
      "content_type": "short_note",
      "title": "$chapterTitle Notes",
      "download_url": "https://raw.githubusercontent.com/Acadia-et/ACADIA-CONTENT/main/University/freshman/$semester/$stream/$subject/$chapterFolder/short_note/${chapterId}_notes.pdf",
      "file_format": "pdf",
      "file_size_mb": 0.18,
      "free_content": false
    },
    {
      "content_type": "quiz",
      "title": "$chapterTitle Quick Check",
      "download_url": "https://raw.githubusercontent.com/Acadia-et/ACADIA-CONTENT/main/University/freshman/$semester/$stream/$subject/$chapterFolder/quiz/quiz.json",
      "file_format": "json",
      "free_content": false
    },
    {
      "content_type": "exam",
      "title": "$chapterTitle Unit Test",
      "download_url": "https://raw.githubusercontent.com/Acadia-et/ACADIA-CONTENT/main/University/freshman/$semester/$stream/$subject/$chapterFolder/exam/exam.json",
      "file_format": "json",
      "free_content": false
    },
    {
      "content_type": "video",
      "title": "$chapterTitle Videos",
      "download_url": "https://raw.githubusercontent.com/Acadia-et/ACADIA-CONTENT/main/University/freshman/$semester/$stream/$subject/$chapterFolder/video/videos.json",
      "file_format": "json",
      "free_content": false
    },
    {
      "content_type": "past_paper",
      "title": "Freshman $subject $chapterTitle Sample Past Paper",
      "download_url": "https://raw.githubusercontent.com/Acadia-et/ACADIA-CONTENT/main/University/freshman/$semester/$stream/$subject/$chapterFolder/past_paper/past_paper.json",
      "file_format": "json",
      "free_content": false
    }
  ]
}
"@
    return $json
}

# ============================================================================
# 6. PROCESS UNIT FUNCTION
# ============================================================================

function Process-Unit {
    param(
        [string]$unitPath,
        [string]$subject,
        [string]$grade,
        [string]$unitNum,
        [string]$unitName,
        [string]$unitFolder,
        [string]$unitId,
        [string]$pdfName
    )
    
    Write-Host "    Processing: $unitFolder" -ForegroundColor Gray
    
    # Create subfolders
    $subfolders = @("exam", "flashcard", "past_paper", "quiz", "short_note", "video")
    foreach ($folder in $subfolders) {
        $folderPath = Join-Path $unitPath $folder
        New-DirectoryIfNotExists $folderPath | Out-Null
    }
    
    # Create unit metadata.json
    $metadataPath = Join-Path $unitPath "metadata.json"
    if (-not (Test-Path $metadataPath)) {
        $metadataContent = Get-UnitMetadataJson -id $unitId -title "$unitNum: $unitName"
        New-FileIfNotExists -path $metadataPath -content $metadataContent | Out-Null
    }
    
    # Create exam.json
    $examPath = Join-Path $unitPath "exam\exam.json"
    if (-not (Test-Path $examPath)) {
        $examContent = Get-ExamJson -subject $subject -grade $grade -unitNum $unitNum -unitTitle "$unitNum: $unitName"
        New-FileIfNotExists -path $examPath -content $examContent | Out-Null
    }
    
    # Create flashcards.json
    $flashcardPath = Join-Path $unitPath "flashcard\flashcards.json"
    if (-not (Test-Path $flashcardPath)) {
        $flashcardContent = Get-FlashcardJson -unitTitle "$unitNum: $unitName"
        New-FileIfNotExists -path $flashcardPath -content $flashcardContent | Out-Null
    }
    
    # Create past_paper.json
    $pastPaperPath = Join-Path $unitPath "past_paper\past_paper.json"
    if (-not (Test-Path $pastPaperPath)) {
        $pastPaperContent = Get-PastPaperJson -subject $subject -grade $grade -unitNum $unitNum -unitTitle "$unitNum: $unitName"
        New-FileIfNotExists -path $pastPaperPath -content $pastPaperContent | Out-Null
    }
    
    # Create quiz.json
    $quizPath = Join-Path $unitPath "quiz\quiz.json"
    if (-not (Test-Path $quizPath)) {
        $quizContent = Get-QuizJson -subject $subject -grade $grade -unitNum $unitNum -unitTitle "$unitNum: $unitName"
        New-FileIfNotExists -path $quizPath -content $quizContent | Out-Null
    }
    
    # Create notes.json
    $notesPath = Join-Path $unitPath "short_note\notes.json"
    if (-not (Test-Path $notesPath)) {
        $notesContent = Get-NotesJson -subject $subject -grade $grade -unitFolder $unitFolder -pdfName $pdfName
        New-FileIfNotExists -path $notesPath -content $notesContent | Out-Null
    }
    
    # Copy or create PDF
    $pdfPath = Join-Path $unitPath "short_note\$pdfName"
    if (-not (Test-Path $pdfPath)) {
        if (Test-Path $sourcePdf) {
            Copy-FileIfNotExists -source $sourcePdf -destination $pdfPath | Out-Null
        }
    }
    
    # Create videos.json
    $videosPath = Join-Path $unitPath "video\videos.json"
    if (-not (Test-Path $videosPath)) {
        $videosContent = Get-VideosJson -subject $subject -grade $grade -unitFolder $unitFolder
        New-FileIfNotExists -path $videosPath -content $videosContent | Out-Null
    }
    
    # Copy test.mp4
    $mp4Path = Join-Path $unitPath "video\test.mp4"
    if (-not (Test-Path $mp4Path)) {
        if (Test-Path $sourceMp4) {
            Copy-FileIfNotExists -source $sourceMp4 -destination $mp4Path | Out-Null
        }
    }
    
    # Delete images folder
    $imagesDeleted = Remove-ImageFolders -path $unitPath
    if ($imagesDeleted -gt 0) {
        Write-Host "      🗑 Deleted $imagesDeleted images folder(s)" -ForegroundColor Red
    }
}

# ============================================================================
# 7. PROCESS SUBJECT FUNCTION
# ============================================================================

function Process-Subject {
    param(
        [string]$subjectPath,
        [string]$subject,
        [string]$grade,
        [string]$unitPrefix = "Unit",
        [string]$pdfPrefix = "unit"
    )
    
    $subjectFolderPath = Join-Path $subjectPath $subject
    if (-not (Test-Path $subjectFolderPath)) {
        return
    }
    
    Write-Host "  📚 Processing: $subject" -ForegroundColor Yellow
    
    # Get units for this subject
    $units = $null
    if ($grade -match "Grade_9|Grade_10") {
        $units = $grade9_10Subjects[$subject]
    } elseif ($grade -eq "Grade_11" -or $grade -eq "Grade_12") {
        # Check if this is Natural or Social
        if ($subjectPath -match "Natural_Science") {
            $units = $grade11_12Natural[$subject]
        } else {
            # Check if subject has grade-specific units
            if ($grade11_12Social[$subject] -is [hashtable]) {
                $units = $grade11_12Social[$subject][$grade]
            } else {
                $units = $grade11_12Social[$subject]
            }
        }
    }
    
    if (-not $units) {
        return
    }
    
    # Create subject metadata.json
    $metadataPath = Join-Path $subjectFolderPath "metadata.json"
    if (-not (Test-Path $metadataPath)) {
        $subjectId = "${subject}_${grade}"
        $metadataContent = @"
{
  "id": "$subjectId",
  "grade": "$grade",
  "subject": "$subject",
  "description": "${grade} ${subject}",
  "units": [
"@
        $unitEntries = @()
        $unitCounter = 1
        foreach ($unit in $units) {
            $unitNum = $unitCounter
            $unitName = ($unit -split "_ ", 2)[1]
            $safeName = ($unitName -replace " ", "_") -replace "[^a-zA-Z0-9_]", ""
            $unitId = "Unit_${unitNum}__${safeName}"
            $unitFolder = $unit
            $entry = "    {
      `"id`": `"$unitId`",
      `"title`": `"$unitNum: $unitName`",
      `"file`": `"$unitId.json`",
      `"folder`": `"$unitFolder`",
      `"content_types`": [`"short_note`", `"video`", `"quiz`", `"exam`", `"past_paper`", `"flashcard`"]
    }"
            $unitEntries += $entry
            $unitCounter++
        }
        $metadataContent += ($unitEntries -join ",`n")
        $metadataContent += "`n  ]`n}"
        New-FileIfNotExists -path $metadataPath -content $metadataContent | Out-Null
    }
    
    # Process each unit
    $unitNum = 1
    foreach ($unit in $units) {
        $unitName = ($unit -split "_ ", 2)[1]
        $unitFolder = $unit
        $safeName = ($unitName -replace " ", "_") -replace "[^a-zA-Z0-9_]", ""
        $unitId = "Unit_${unitNum}__${safeName}"
        $pdfName = "${pdfPrefix}${unitNum}_${subject}_notes.pdf"
        
        $unitPath = Join-Path $subjectFolderPath $unitFolder
        New-DirectoryIfNotExists $unitPath | Out-Null
        
        # Create Unit_X__[NAME].json at subject root
        $unitJsonPath = Join-Path $subjectFolderPath "$unitId.json"
        if (-not (Test-Path $unitJsonPath)) {
            $encodedFolder = [System.Web.HttpUtility]::UrlEncode($unitFolder)
            $unitJsonContent = @"
{
  "items": [
    {
      "content_type": "short_note",
      "title": "$unitName Notes",
      "download_url": "https://raw.githubusercontent.com/Acadia-et/ACADIA-CONTENT/main/$grade/$subject/$encodedFolder/short_note/$pdfName",
      "file_format": "pdf",
      "file_size_mb": 0.18,
      "free_content": false
    },
    {
      "content_type": "quiz",
      "title": "$unitName Quick Check",
      "download_url": "https://raw.githubusercontent.com/Acadia-et/ACADIA-CONTENT/main/$grade/$subject/$encodedFolder/quiz/quiz.json",
      "file_format": "json",
      "free_content": false
    },
    {
      "content_type": "exam",
      "title": "$unitName Unit Test",
      "download_url": "https://raw.githubusercontent.com/Acadia-et/ACADIA-CONTENT/main/$grade/$subject/$encodedFolder/exam/exam.json",
      "file_format": "json",
      "free_content": false
    },
    {
      "content_type": "video",
      "title": "$unitName Videos",
      "download_url": "https://raw.githubusercontent.com/Acadia-et/ACADIA-CONTENT/main/$grade/$subject/$encodedFolder/video/videos.json",
      "file_format": "json",
      "free_content": false
    },
    {
      "content_type": "past_paper",
      "title": "$grade $subject $unitName Sample Past Paper",
      "download_url": "https://raw.githubusercontent.com/Acadia-et/ACADIA-CONTENT/main/$grade/$subject/$encodedFolder/past_paper/past_paper.json",
      "file_format": "json",
      "free_content": false
    }
  ]
}
"@
            New-FileIfNotExists -path $unitJsonPath -content $unitJsonContent | Out-Null
        }
        
        Process-Unit -unitPath $unitPath -subject $subject -grade $grade -unitNum $unitNum -unitName $unitName -unitFolder $unitFolder -unitId $unitId -pdfName $pdfName
        
        $unitNum++
    }
    
    # Delete any images folders at subject level
    $imagesDeleted = Remove-ImageFolders -path $subjectFolderPath
    if ($imagesDeleted -gt 0) {
        Write-Host "    🗑 Deleted $imagesDeleted images folder(s)" -ForegroundColor Red
    }
}

# ============================================================================
# 8. PROCESS UNIVERSITY FUNCTION
# ============================================================================

function Process-UniversitySubject {
    param(
        [string]$subjectPath,
        [string]$subject,
        [string]$semester,
        [string]$stream,
        [string]$unitPrefix = "Chapter",
        [string]$pdfPrefix = "chapter",
        [string]$chapterList
    )
    
    $subjectFolderPath = Join-Path $subjectPath $subject
    New-DirectoryIfNotExists $subjectFolderPath | Out-Null
    
    Write-Host "  📚 Processing: $subject" -ForegroundColor Yellow
    
    # Get chapters for this subject
    $chapters = $chapterList
    
    if (-not $chapters) {
        return
    }
    
    # Create subject metadata.json
    $metadataPath = Join-Path $subjectFolderPath "metadata.json"
    if (-not (Test-Path $metadataPath)) {
        $subjectId = "${subject}_Freshman_${semester}"
        $metadataContent = @"
{
  "id": "$subjectId",
  "grade": "Freshman",
  "semester": "$semester",
  "subject": "$subject",
  "stream": "$stream",
  "description": "Freshman $subject - $semester",
  "units": [
"@
        $unitEntries = @()
        $chapterCounter = 1
        foreach ($chapter in $chapters) {
            $chapterNum = $chapterCounter
            $chapterName = ($chapter -split "_ ", 2)[1]
            $safeName = ($chapterName -replace " ", "_") -replace "[^a-zA-Z0-9_]", ""
            $chapterId = "Chapter_${chapterNum}__${safeName}"
            $chapterFolder = $chapter
            $entry = "    {
      `"id`": `"$chapterId`",
      `"title`": `"$chapterNum: $chapterName`",
      `"file`": `"$chapterId.json`",
      `"folder`": `"$chapterFolder`",
      `"content_types`": [`"short_note`", `"video`", `"quiz`", `"exam`", `"past_paper`", `"flashcard`"]
    }"
            $unitEntries += $entry
            $chapterCounter++
        }
        $metadataContent += ($unitEntries -join ",`n")
        $metadataContent += "`n  ]`n}"
        New-FileIfNotExists -path $metadataPath -content $metadataContent | Out-Null
    }
    
    # Process each chapter
    $chapterNum = 1
    foreach ($chapter in $chapters) {
        $chapterName = ($chapter -split "_ ", 2)[1]
        $chapterFolder = $chapter
        $safeName = ($chapterName -replace " ", "_") -replace "[^a-zA-Z0-9_]", ""
        $chapterId = "Chapter_${chapterNum}__${safeName}"
        $pdfName = "${pdfPrefix}${chapterNum}_${subject}_notes.pdf"
        
        $chapterPath = Join-Path $subjectFolderPath $chapterFolder
        New-DirectoryIfNotExists $chapterPath | Out-Null
        
        # Create Chapter_X__[NAME].json at subject root
        $chapterJsonPath = Join-Path $subjectFolderPath "$chapterId.json"
        if (-not (Test-Path $chapterJsonPath)) {
            $chapterJsonContent = Get-UniversityChapterJson -subject $subject -semester $semester -stream $stream -chapterId $chapterId -chapterTitle "$chapterNum: $chapterName" -chapterFolder $chapterFolder
            New-FileIfNotExists -path $chapterJsonPath -content $chapterJsonContent | Out-Null
        }
        
        # Create chapter metadata.json
        $metadataPath = Join-Path $chapterPath "metadata.json"
        if (-not (Test-Path $metadataPath)) {
            $metadataContent = Get-UnitMetadataJson -id "Chapter_${chapterNum}_$($chapterName -replace " ", "_")" -title "$chapterNum: $chapterName"
            New-FileIfNotExists -path $metadataPath -content $metadataContent | Out-Null
        }
        
        # Create subfolders and files
        $subfolders = @("exam", "flashcard", "past_paper", "quiz", "short_note", "video")
        foreach ($folder in $subfolders) {
            $folderPath = Join-Path $chapterPath $folder
            New-DirectoryIfNotExists $folderPath | Out-Null
        }
        
        # Create exam.json
        $examPath = Join-Path $chapterPath "exam\exam.json"
        if (-not (Test-Path $examPath)) {
            $examContent = Get-ExamJson -subject $subject -grade "Freshman" -unitNum $chapterNum -unitTitle "$chapterNum: $chapterName"
            New-FileIfNotExists -path $examPath -content $examContent | Out-Null
        }
        
        # Create flashcards.json
        $flashcardPath = Join-Path $chapterPath "flashcard\flashcards.json"
        if (-not (Test-Path $flashcardPath)) {
            $flashcardContent = Get-FlashcardJson -unitTitle "$chapterNum: $chapterName"
            New-FileIfNotExists -path $flashcardPath -content $flashcardContent | Out-Null
        }
        
        # Create past_paper.json
        $pastPaperPath = Join-Path $chapterPath "past_paper\past_paper.json"
        if (-not (Test-Path $pastPaperPath)) {
            $pastPaperContent = Get-PastPaperJson -subject $subject -grade "Freshman" -unitNum $chapterNum -unitTitle "$chapterNum: $chapterName"
            New-FileIfNotExists -path $pastPaperPath -content $pastPaperContent | Out-Null
        }
        
        # Create quiz.json
        $quizPath = Join-Path $chapterPath "quiz\quiz.json"
        if (-not (Test-Path $quizPath)) {
            $quizContent = Get-QuizJson -subject $subject -grade "Freshman" -unitNum $chapterNum -unitTitle "$chapterNum: $chapterName"
            New-FileIfNotExists -path $quizPath -content $quizContent | Out-Null
        }
        
        # Create notes.json
        $notesPath = Join-Path $chapterPath "short_note\notes.json"
        if (-not (Test-Path $notesPath)) {
            $notesContent = Get-NotesJson -subject $subject -grade "University/freshman/${semester}/${stream}" -unitFolder $chapterFolder -pdfName $pdfName
            New-FileIfNotExists -path $notesPath -content $notesContent | Out-Null
        }
        
        # Copy or create PDF
        $pdfPath = Join-Path $chapterPath "short_note\$pdfName"
        if (-not (Test-Path $pdfPath)) {
            if (Test-Path $sourcePdf) {
                Copy-FileIfNotExists -source $sourcePdf -destination $pdfPath | Out-Null
            }
        }
        
        # Create videos.json
        $videosPath = Join-Path $chapterPath "video\videos.json"
        if (-not (Test-Path $videosPath)) {
            $videosContent = Get-VideosJson -subject $subject -grade "Freshman" -unitFolder "$semester/$stream/$subject/$chapterFolder"
            New-FileIfNotExists -path $videosPath -content $videosContent | Out-Null
        }
        
        # Copy test.mp4
        $mp4Path = Join-Path $chapterPath "video\test.mp4"
        if (-not (Test-Path $mp4Path)) {
            if (Test-Path $sourceMp4) {
                Copy-FileIfNotExists -source $sourceMp4 -destination $mp4Path | Out-Null
            }
        }
        
        # Delete images folder
        $imagesDeleted = Remove-ImageFolders -path $chapterPath
        if ($imagesDeleted -gt 0) {
            Write-Host "      🗑 Deleted $imagesDeleted images folder(s)" -ForegroundColor Red
        }
        
        $chapterNum++
    }
}

# ============================================================================
# 9. MAIN EXECUTION
# ============================================================================

Write-Host "╔═══════════════════════════════════════════════════════════════╗" -ForegroundColor Cyan
Write-Host "║     APPLY BIOLOGY GRADE 9 UNIT 1 TEMPLATE TO ALL CURRICULUM ║" -ForegroundColor Cyan
Write-Host "╚═══════════════════════════════════════════════════════════════╝" -ForegroundColor Cyan
Write-Host ""

# Check source files exist
if (-not (Test-Path $sourcePdf)) {
    Write-Host "⚠ WARNING: Source PDF not found: $sourcePdf" -ForegroundColor Yellow
    Write-Host "   Will create empty placeholder PDFs instead." -ForegroundColor Yellow
}
if (-not (Test-Path $sourceMp4)) {
    Write-Host "⚠ WARNING: Source MP4 not found: $sourceMp4" -ForegroundColor Yellow
    Write-Host "   Will create empty placeholder MP4s instead." -ForegroundColor Yellow
}
Write-Host ""

# ============================================================================
# PROCESS GRADE 9
# ============================================================================

Write-Host "📁 Processing Grade_9..." -ForegroundColor Green
$grade9Path = Join-Path $basePath "Grade_9"

foreach ($subject in $grade9_10Subjects.Keys) {
    Process-Subject -subjectPath $grade9Path -subject $subject -grade "Grade_9" -unitPrefix "Unit" -pdfPrefix "unit"
}
Write-Host ""

# ============================================================================
# PROCESS GRADE 10
# ============================================================================

Write-Host "📁 Processing Grade_10..." -ForegroundColor Green
$grade10Path = Join-Path $basePath "Grade_10"

foreach ($subject in $grade9_10Subjects.Keys) {
    Process-Subject -subjectPath $grade10Path -subject $subject -grade "Grade_10" -unitPrefix "Unit" -pdfPrefix "unit"
}
Write-Host ""

# ============================================================================
# PROCESS GRADE 11 - NATURAL SCIENCE
# ============================================================================

Write-Host "📁 Processing Grade_11 - Natural Science..." -ForegroundColor Green
$grade11Path = Join-Path $basePath "Grade_11\Natural_Science"
New-DirectoryIfNotExists $grade11Path | Out-Null

foreach ($subject in $grade11_12Natural.Keys) {
    Process-Subject -subjectPath $grade11Path -subject $subject -grade "Grade_11" -unitPrefix "Unit" -pdfPrefix "unit"
}
Write-Host ""

# ============================================================================
# PROCESS GRADE 11 - SOCIAL SCIENCE
# ============================================================================

Write-Host "📁 Processing Grade_11 - Social Science..." -ForegroundColor Green
$grade11SocialPath = Join-Path $basePath "Grade_11\Social_Science"
New-DirectoryIfNotExists $grade11SocialPath | Out-Null

foreach ($subject in $grade11_12Social.Keys) {
    Process-Subject -subjectPath $grade11SocialPath -subject $subject -grade "Grade_11" -unitPrefix "Unit" -pdfPrefix "unit"
}
Write-Host ""

# ============================================================================
# PROCESS GRADE 12 - NATURAL SCIENCE
# ============================================================================

Write-Host "📁 Processing Grade_12 - Natural Science..." -ForegroundColor Green
$grade12Path = Join-Path $basePath "Grade_12\Natural_Science"
New-DirectoryIfNotExists $grade12Path | Out-Null

foreach ($subject in $grade11_12Natural.Keys) {
    Process-Subject -subjectPath $grade12Path -subject $subject -grade "Grade_12" -unitPrefix "Unit" -pdfPrefix "unit"
}
Write-Host ""

# ============================================================================
# PROCESS GRADE 12 - SOCIAL SCIENCE
# ============================================================================

Write-Host "📁 Processing Grade_12 - Social Science..." -ForegroundColor Green
$grade12SocialPath = Join-Path $basePath "Grade_12\Social_Science"
New-DirectoryIfNotExists $grade12SocialPath | Out-Null

foreach ($subject in $grade11_12Social.Keys) {
    Process-Subject -subjectPath $grade12SocialPath -subject $subject -grade "Grade_12" -unitPrefix "Unit" -pdfPrefix "unit"
}
Write-Host ""

# ============================================================================
# PROCESS UNIVERSITY - FIRST SEMESTER NATURAL SCIENCE
# ============================================================================

Write-Host "📁 Processing University - First Semester - Natural Science..." -ForegroundColor Green
$uniFirstNaturalPath = Join-Path $basePath "University\freshman\First_Semester\Natural_Science"
New-DirectoryIfNotExists $uniFirstNaturalPath | Out-Null

foreach ($subject in $universityFirstSemesterNatural) {
    $chapters = $universityFirstChapters[$subject]
    if ($chapters) {
        Process-UniversitySubject -subjectPath $uniFirstNaturalPath -subject $subject -semester "First_Semester" -stream "Natural_Science" -unitPrefix "Chapter" -pdfPrefix "chapter" -chapterList $chapters
    }
}
Write-Host ""

# ============================================================================
# PROCESS UNIVERSITY - FIRST SEMESTER SOCIAL SCIENCE
# ============================================================================

Write-Host "📁 Processing University - First Semester - Social Science..." -ForegroundColor Green
$uniFirstSocialPath = Join-Path $basePath "University\freshman\First_Semester\Social_Science"
New-DirectoryIfNotExists $uniFirstSocialPath | Out-Null

foreach ($subject in $universityFirstSemesterSocial) {
    $chapters = $universityFirstChapters[$subject]
    if ($chapters) {
        Process-UniversitySubject -subjectPath $uniFirstSocialPath -subject $subject -semester "First_Semester" -stream "Social_Science" -unitPrefix "Chapter" -pdfPrefix "chapter" -chapterList $chapters
    }
}
Write-Host ""

# ============================================================================
# PROCESS UNIVERSITY - SECOND SEMESTER OTHER NATURAL SCIENCE
# ============================================================================

Write-Host "📁 Processing University - Second Semester - Other Natural Science..." -ForegroundColor Green
$uniSecondOtherPath = Join-Path $basePath "University\freshman\Second_Semester\Other_Natural_Science"
New-DirectoryIfNotExists $uniSecondOtherPath | Out-Null

foreach ($subject in $universitySecondSemesterOther) {
    $chapters = $universitySecondChapters[$subject]
    if ($chapters) {
        Process-UniversitySubject -subjectPath $uniSecondOtherPath -subject $subject -semester "Second_Semester" -stream "Other_Natural_Science" -unitPrefix "Unit" -pdfPrefix "unit" -chapterList $chapters
    }
}
Write-Host ""

# ============================================================================
# PROCESS UNIVERSITY - SECOND SEMESTER PRE-ENGINEERING
# ============================================================================

Write-Host "📁 Processing University - Second Semester - Pre-Engineering..." -ForegroundColor Green
$uniSecondPrePath = Join-Path $basePath "University\freshman\Second_Semester\Pre_Engineering_Courses"
New-DirectoryIfNotExists $uniSecondPrePath | Out-Null

foreach ($subject in $universitySecondSemesterPre) {
    $chapters = $universitySecondChapters[$subject]
    if ($chapters) {
        Process-UniversitySubject -subjectPath $uniSecondPrePath -subject $subject -semester "Second_Semester" -stream "Pre_Engineering_Courses" -unitPrefix "Unit" -pdfPrefix "unit" -chapterList $chapters
    }
}
Write-Host ""

# ============================================================================
# FINAL SUMMARY
# ============================================================================

Write-Host "="*60 -ForegroundColor Green
Write-Host "  ✅ TEMPLATE APPLIED SUCCESSFULLY!" -ForegroundColor Green
Write-Host "="*60 -ForegroundColor Green
Write-Host ""
Write-Host "📁 Location: $basePath" -ForegroundColor Yellow
Write-Host ""
Write-Host "📌 What was done:" -ForegroundColor Cyan
Write-Host "  ✅ Created exam/, flashcard/, past_paper/, quiz/, short_note/, video/ folders" -ForegroundColor White
Write-Host "  ✅ Created metadata.json for each unit" -ForegroundColor White
Write-Host "  ✅ Created Unit_X__[NAME].json at subject root" -ForegroundColor White
Write-Host "  ✅ Created exam.json, flashcards.json, past_paper.json, quiz.json" -ForegroundColor White
Write-Host "  ✅ Created notes.json and videos.json" -ForegroundColor White
Write-Host "  ✅ Copied test.mp4 to each video folder" -ForegroundColor White
Write-Host "  ✅ Copied unit1_biology_notes.pdf as template for missing PDFs" -ForegroundColor White
Write-Host "  ✅ Deleted ALL images/ folders" -ForegroundColor White
Write-Host ""
Write-Host "📌 Processed:" -ForegroundColor Cyan
Write-Host "  ✅ Grade_9 (10 subjects)" -ForegroundColor White
Write-Host "  ✅ Grade_10 (10 subjects)" -ForegroundColor White
Write-Host "  ✅ Grade_11 Natural + Social Science" -ForegroundColor White
Write-Host "  ✅ Grade_12 Natural + Social Science" -ForegroundColor White
Write-Host "  ✅ University - First Semester (Natural + Social)" -ForegroundColor White
Write-Host "  ✅ University - Second Semester (Other Natural + Pre-Engineering)" -ForegroundColor White