; Шаверский Иван ИП-61
; Вариант №18 


 (SETQ list1 '(D F G H J K) )
 (SETQ list2 '(1 2 3 4 5 6 (4 5) 4) )
 (SETQ list3 '(ER RT TY 5 6 6 5) )

;--- 1 ---

(
	(
		lambda (l1 l2 l3)
		;(LIST (CAR l1) (CAR l2) (CAR l3)) Это код , но снизу написал так что б было более наглядно.
		(PRINT (LIST (CAR l1) (CAR l2) (CAR l3)) )
	)
	list1 list2 list3
) 

;--- 2 ---

(
	DEFUN NewList (l1 l2 l3)
	(LIST (FIFTH l1) (THIRD l2) (SECOND l3) ) 
	
)

(PRINT (NewList list1 list2 list3))

;--- 3 ---

(
	DEFUN SpecialTask (lst)
	(
	    IF ( AND (ATOM (FIRST lst)) (ATOM (CAR (LAST lst))) )
	        (LIST (FIRST lst) (CAR (LAST lst)) ) 
	        (NOT (ATOM (THIRD lst)))
	)
)

(PRINT (SpecialTask list1))