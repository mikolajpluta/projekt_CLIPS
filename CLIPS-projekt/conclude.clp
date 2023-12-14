(deftemplate question
  (slot content (type STRING))
  (slot possible-answers (type STRING))
)

(deftemplate solution
  (slot content (type STRING))
)

(deftemplate fact
  (slot content (type STRING))
  (slot answer (type STRING))
)

(defrule ask-question
  "Call Python function to display the content and possible answers of a question."
  ?q <- (question (content ?content) (possible-answers ?answers))
  =>
  (python-function show_question ?content ?answers)
  (retract ?q)
)

(defrule return_solution
  (solution (content ?content))
  =>
  (python-function show_solution ?content)
)
