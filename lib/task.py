# Task(1)
message = "Shorouk"
print(message)

message = "Hamada"
print(message)


# Task(2)
name = "Mohamed"
print(f"Hello {name} How are you ?")


# Task(3)
name = "Mohamed"
print(name.lower())  
print(name.upper())  
print(name.title())  


# Task(4)
famous_person = "Shorouk"
message = f'{famous_person} is very famous."'
print(message)


# Task(5)
language = "     Shorouk     "
print(language.strip())  
print(language.lstrip())   
print(language.rstrip())  

file = "task.py"
new_file = file.removesuffix(".py") + ".txt"  
print(new_file)

web_link = "https://www.python.org"
clean_link = web_link.removeprefix("https://") 
print(clean_link)


# Task(6)
language_1 = "python"
language_2 = "cpp"
language_3 = "dart"

print(f"Programming Languages :-\n\t1-{language_1.capitalize()}\n\t2-{language_2.upper()}\n\t3-{language_3.capitalize()}")
