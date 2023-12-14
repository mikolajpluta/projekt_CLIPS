import clips
import tkinter as tk

 # Utwórz główne okno
root = tk.Tk()
root.title("Wybór Tak/Nie")
var = tk.StringVar()

def resolve_answer(question, choice):
    print("odpowiedz uzytkownika: ", choice)
    environment.assert_string(f"(fact (content \"{question}\")(answer \"{choice}\"))")
    environment.run()
    facts = environment.facts()
    for fact in facts:
        print(fact)

# Funkcja Pythona, która dodaje treść pytania do listy
def show_question(question, ans):

    for widget in root.winfo_children():
        widget.destroy()

    questionText = tk.Label(root, text=question)
    questionText.pack()

    print(question)
    print(ans)
    
    answers = ans.split(";")

    var.set("")
    for answer in answers:
        radio_button = tk.Radiobutton(root, text=answer, variable=var, value=answer, indicatoron=False)
        radio_button.pack()


    potwierdz_button = tk.Button(root, text="Potwierdź", command=lambda: resolve_answer(question, var.get()))

    potwierdz_button.pack() 


def show_solution(solution):
    for widget in root.winfo_children():
        widget.destroy()

    questionText = tk.Label(root, text=solution)
    questionText.pack()


# Inicjalizacja środowiska CLIPS w Pythonie
environment = clips.Environment()
#zaladuj plik z regulami
environment.load("conclude.clp")  # Załaduj plik reguł
environment.load("database.clp")  # Załaduj plik reguł

# Wstawienie fakt pytania
environment.assert_string("(question (content \"Do you love Money?\") (possible-answers \"YES;NO\")))")
# environment.assert_string("(question_number 0)")

# Przypisanie funkcji do środowiska
environment.define_function(show_question, name="show_question")
environment.define_function(show_solution, name="show_solution")
# environment.define_function(test, name="test")

# Uruchomienie wnioskowania
environment.run()
root.mainloop()


