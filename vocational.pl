init:-
	consult("answers.rules").

vocational:-
    write('Olá, sou o Vocational! Como posso ajudar a escolher seu futuro?'),nl,
    init,
    repeat,
	format('-- '),
	readln(Sentence),
	answer(Sentence).

answer(Sentence):-
	(
		Sentence=[tchau|_] ->
		quit()
	;
		getAnswers(Sentence, Answer),
		validateAnswer(Answer)
	).

validateAnswer(Answer):-
	nl, format('> '), format(Answer), nl, fail.

getAnswers(Sentence,Answer):-
	answersrelatedtosentence(Sentence, Answer),!.

quit():-
	format('> Tchau, espero vê-lo em breve!'),nl.