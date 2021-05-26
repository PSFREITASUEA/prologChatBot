init:-
	consult("answers.rules").

vocational:-
    write('Olá, sou o Vocational! Como posso ajudar a escolher seu futuro?'),nl,
    init,
    repeat,
	format('-- '),
	readln(Sentence),
	getAnswers(Sentence, Answer),
	validateAnswer(Answer).

validateAnswer(Answer):-
	format('> '), format(Answer), nl, fail.

getAnswers(Sentence,Answer):-
	answersrelatedtosentence(Sentence, Answer),!.