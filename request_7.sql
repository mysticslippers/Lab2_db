/*
-------------------------------------------------------------
7. Вывести список студентов,
имеющих одинаковые фамилии, но не совпадающие ид.
-------------------------------------------------------------
 */

SELECT A."ИД" AS first_student_ID, B."ИД" AS second_student_ID,
                A."ФАМИЛИЯ" AS first_student_fullname, A."ИМЯ" AS first_student_name,
                B."ФАМИЛИЯ" AS second_student_fullname, B."ИМЯ" AS second_student_name
    FROM "Н_ЛЮДИ" AS A, "Н_ЛЮДИ" AS B WHERE (A."ФАМИЛИЯ" = B."ФАМИЛИЯ") AND (A."ИД" != B."ИД")
        GROUP BY first_student_ID, first_student_fullname, first_student_name, second_student_ID, second_student_fullname, second_student_name ORDER BY first_student_fullname