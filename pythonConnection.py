import mysql.connector

username = input("Please enter your username: ")
password = input("Please enter your password: ")
print("")
mydb = mysql.connector.connect(
  host="localhost",
  user=username,
  password=password,
  database = 'globe'
)

# Function 1: Add country
# =====================================
def addCountry():
    AttributeList = []  # initializes all user-inputted attributes for the new country addition to the database

    # get input
    question = input("Provide the name of this country: ")

    query = "SELECT Dominant_language, Number_of_citizens, C_location FROM COUNTRY WHERE C_Name = %s"
    mycursor.execute(query, (question,))
    query = mycursor.fetchone()

    # prints error message and ends function if user's inputted country already exists
    if query != None:
        print("ERROR: Country already exists in database")
        return

    AttributeList.append(question) # AttributeList[0] = C_name
    question = input("Provide the total population: ")
    AttributeList.append(question) # AttributeList[1] = Number_of_citizens
    question = input("Provide the dominant language: ")
    AttributeList.append(question) # AttributeList[2] = Dominant_language
    question = input("Provide the continent that this country resides in: ")
    AttributeList.append(question) # AttributeList[3] = C_location
    question = input("Provide the capital of this country: ")
    AttributeList.append(question) # AttributeList[4] = Location_of_capital
    question = input("Provide the founding date of this country's government (YYYY-MM-DD): ")
    AttributeList.append(question) # AttributeList[5] = Founding_date
    question = input("Provide the name of the current leader of this country: ")
    AttributeList.append(question) # AttributeList[6] = Leader_name
    question = input("Provide that political party that this leader is part of: ")
    AttributeList.append(question) # AttributeList[7] = Leader_Political_party
    question = input("Provide the GDP (measured in USD): ")
    AttributeList.append(question) # AttributeList[8] = GDP
    question = input("Provide the dominant export: ")
    AttributeList.append(question) # AttributeList[9] = Dominant_import
    question = input("Provide the dominant import: ")
    AttributeList.append(question) # AttributeList[10] = Dominant_export 
    
    # ends function if user wants to cancel the addition of the new country
    if (question == "n" or question == "N"):
        return
    
    # insert data into the COUNTRY table
    query = "INSERT INTO COUNTRY (Number_of_citizens, C_Name, Dominant_language, C_location) VALUES (%s, %s, %s, %s)"
    mycursor.execute(query, (AttributeList[1], AttributeList[0], AttributeList[2], AttributeList[3]))

    # insert data into GOVERNMENT table
    query = "INSERT INTO GOVERNMENT(Location_of_capital, C_name, Founding_date, Leader_name) VALUES (%s, %s, %s, %s)"
    mycursor.execute(query, (AttributeList[4], AttributeList[0], AttributeList[5], AttributeList[6]))

    # insert data into LEADER table
    query = "INSERT INTO LEADER(L_name, Leader_Political_party) VALUES (%s, %s)"
    mycursor.execute(query, (AttributeList[6], AttributeList[7]))

    # insert data into ECONOMY table
    query = "INSERT INTO ECONOMY(C_name, GDP, Dominant_import, Dominant_export) VALUES (%s, %s, %s, %s)"
    mycursor.execute(query, (AttributeList[0], AttributeList[8], AttributeList[9], AttributeList[10]))

    mydb.commit() # commits all insertions into database
    print(f"{AttributeList[0]} has been successfully added to the database!")
# =====================================

# Function 2: Update country
# =====================================
def updateCountry():
    country = input("Please enter which country you would like to update: ")
    query = "SELECT Dominant_language, Number_of_citizens, C_location FROM COUNTRY WHERE C_Name = %s"
    mycursor.execute(query, (country,))
    queryResult = mycursor.fetchone()

    # prints error message and ends function if user's input is not found in database
    if queryResult == None:
        print("ERROR: Country could not be found in Database.")
        return
    
    print("===================================")
    print("1. Update general information") # update Number_of_citizens & Dominant_language
    print("2. Update government") # update Location_of_capital, Leader_name, Leader_Political_party
    print("3. Update economy") # update GDP, Dominant_import, Dominant_export
    print("4. Add a new alliance")
    print("===================================")
    decision = input("What would you like to update? (If you would like to exit, enter any other key): ")

    # ends function if user wants to exit
    if decision not in ["1", "2", "3", "4"]:
        return
    
    if decision == "1":
        newPopulation = input(f"Enter the new population of {country}: ")
        newDomLanguage = input(f"Enter the new dominant language of {country}: ")
        query = "UPDATE COUNTRY SET Number_of_citizens = %s, Dominant_language = %s WHERE C_name = %s"
        mycursor.execute(query, (newPopulation, newDomLanguage, country))
    
    elif decision == "2":
        capital = input(f"Enter the new capital of {country}: ")
        leader = input(f"Enter the name of the new leader of {country}: ")
        politicalParty = input(f"Enter the political party of {leader}: ")
 
        query = "SELECT Leader_name FROM GOVERNMENT WHERE C_name = %s"
        mycursor.execute(query, (country,))
        oldLeader = mycursor.fetchone()

        query = "UPDATE GOVERNMENT SET Location_of_capital = %s, Leader_name = %s WHERE C_name = %s"
        mycursor.execute(query, (capital, leader, country))

        query = "UPDATE LEADER SET L_name = %s WHERE L_name = %s"
        mycursor.execute(query, (leader, oldLeader[0]))
        query = "UPDATE LEADER SET Leader_Political_party = %s WHERE L_name = %s"
        mycursor.execute(query, (politicalParty, leader))

    elif decision == "3":
        gdp = input(f"Enter the new GDP (in USD) of {country}: ")
        domExport = input(f"Enter the new dominant export of {country}: ")
        domImport = input(f"Enter the new dominant import of {country}: ")
        query = "UPDATE ECONOMY SET GDP = %s, Dominant_import = %s, Dominant_export = %s WHERE C_name = %s"
        mycursor.execute(query, (gdp, domImport, domExport, country))

    else:
        alliance = input(f"Enter the name of the new alliance that {country} is part of: ")
        years = input(f"Enter the number of years has {country} been part of this alliance: ")

        # check if alliance exists (if not function ends)
        query = "SELECT founding_date FROM ALLIANCE WHERE A_name = %s"
        mycursor.execute(query, (alliance,))
        result = mycursor.fetchone()
        if result is None:
            print("ERROR: Alliance does not exist")
            return
        
        query = "INSERT INTO ALLIANCE_MEMBER(A_name, C_name) VALUES (%s, %s)"
        mycursor.execute(query, (alliance, country))
        query = "INSERT INTO PART_OF(A_name, C_name, length_of_membership) VALUES (%s, %s, %s)"
        mycursor.execute(query, (alliance, country, years))

    mydb.commit() # commits all updates into database
    print(f"{country} has been successfully updated to the database!")
# =====================================

# Function 3: Look up country information
# =====================================
def CountryInfo():
    country = input("Please enter which country you would like to find information on: ")
    query = "SELECT Dominant_language, Number_of_citizens, C_location FROM COUNTRY WHERE C_Name = %s"
    mycursor.execute(query, (country,))
    queryResult = mycursor.fetchone()

    # prints error message and ends function if user's input is not found in database
    if queryResult == None:
        print("ERROR: Country could not be found in Database.")
        return
    
    totalInfo = [] # initialize array that stores all data for the country
    totalInfo.append(queryResult[0]) # adds Dominant_language into data array (stored in index 0)
    totalInfo.append(queryResult[1]) # adds Number_of_citizens into data array (stored in index 1)
    totalInfo.append(queryResult[2]) # adds C_location into data array (stored in index 2)
    
    query = "SELECT Location_of_capital, Founding_date, Leader_name FROM GOVERNMENT WHERE C_Name = %s"
    mycursor.execute(query, (country,))
    queryResult = mycursor.fetchone()

    totalInfo.append(queryResult[0]) # adds Location_of_capital (stored in index 3)
    totalInfo.append(queryResult[1]) # adds Founding_date (stored in index 4)
    totalInfo[4].strftime("%Y-%m-%d") # converts Founding_date into readable format (YYYY-MM-DD)
    totalInfo.append(queryResult[2]) # adds Leader_name (stored in index 5)

    query = "SELECT GDP, Dominant_import, Dominant_export FROM ECONOMY WHERE C_name = %s"
    mycursor.execute(query, (country,))
    queryResult = mycursor.fetchone()

    totalInfo.append(queryResult[0]) # adds GDP (stored in index 6)
    totalInfo.append(queryResult[1]) # adds Dominant_import (stored in index 7)
    totalInfo.append(queryResult[2]) # adds Dominant_export (stored in index 8)

    query = "SELECT Leader_Political_party FROM LEADER WHERE L_name = %s"
    mycursor.execute(query, ((totalInfo[5]),))
    queryResult = mycursor.fetchone()
    totalInfo.append(queryResult[0]) # adds current leader's political party (stored in index 9)
    
    query = "SELECT A_name FROM ALLIANCE_MEMBER WHERE C_name = %s"
    mycursor.execute(query, (country,))
    queryResult = mycursor.fetchall()
    alliances = [row[0].replace(",", "") for row in queryResult] # removes commas in each string
    print("===================================")
    print(f"Country: {country}")
    print(f"Dominant Language: {totalInfo[0]}")
    print(f"Total Population: {totalInfo[1]}")
    print(f"Location: {totalInfo[2]}\n")
    print(f"Location of Capital: {totalInfo[3]}")
    print(f"Founding date of Government: {totalInfo[4]}")
    print(f"Current Leader: {totalInfo[5]}")
    print(f"{totalInfo[5]}'s Political Party: {totalInfo[9]}\n")
    print(f"GDP(Measured in USD): {totalInfo[6]}")
    print(f"Dominant Import: {totalInfo[7]}")
    print(f"Dominant Export: {totalInfo[8]}\n")

    print(f"{country} is part of the following alliances:")
    for row in alliances:
        print(row)
    print("===================================")
# =====================================

# Main Program
# =====================================
checker = "y"
mycursor = mydb.cursor()
print("Welcome to my Globe Database!")

while (checker == "y") or (checker == "Y"):
    print("===================================")
    print("Available Functions:")
    print("1. Add a new Country")
    print("2. Update information on a Country")
    print("3. Look up information on a Country")
    print("===================================")
    decision = input("Please choose a function (1, 2, or 3): ")

    if decision == "1":
        print("")
        addCountry()
        print("")
    
    elif decision == "2":
        print("")
        updateCountry()
        print("")

    elif decision == "3":
        print("")
        CountryInfo()
        print("")
    
    else:
        print("")
        print("ERROR: Invalid Input. Please enter 1, 2, or 3\n")
        continue
    
    checker = input("Would you like to continue the program?(y/n): ")

# =====================================