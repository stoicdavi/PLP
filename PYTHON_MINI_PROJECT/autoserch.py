import json
import difflib
#Function to load data from json file
def load_data():
    with open("data.json", "r") as file:
        data = json.load(file)
        return data
#Function to search the meaning of word
def search_word(word, data):
    word = word.lower()#convert word to lower case
    if word in data:
        return data[word]
    elif word.title() in data:
        return data[word.title()]#if user entered "texas" this will check for "Texas" as well
    elif word.upper() in data:
        return data[word]
    elif len(difflib.get_close_matches(word, data.keys())) > [0]:
        close_match = difflib.get_close_matches(word, data.keys())[0]
        response = input(f"Did you mean {close_match} instead? Enter Y if yes, or N if no: ")
        if response == "Y":
            return data[close_match]
        elif response == "N":
            return "The word doesn't exist. Please double check it."
        else:
            return "We didn't understand your entry."
    else: 
        return "The word doesn't exist. Please double check it."
#Function to display the meaning of word
def display_meaning(meaning):
    if type(meaning) == list:
        for item in meaning:
            print(item)
    else:
        print(meaning)
#Main function
def main():
    data = load_data()
    word = input("Enter word: ")
    meaning = search_word(word, data)
    display_meaning(meaning)
#Main function call
if __name__ == "__main__":
    main()