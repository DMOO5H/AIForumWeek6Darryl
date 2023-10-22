# Confirms if the triangle is a right angle triangle
is_right_triangle(A, B, C) :-
    valid_triangle(A, B, C), # Confirms if the sides of the triangle equals to 180°
    right_angle(A, B, C). # Confirms if one of the corners is in a 90° angle

valid_triangle(A, B, C) :-
    A + B + C =:= 180, # Confirms the geometric requirements of the right angle triangle
    A > 0, B > 0, C > 0. # Justifies that all numbers are larger than zero and not a negative integer

right_angle(A, B, C) :-
    (A =:= 90 ; B =:= 90 ; C =:= 90). # ; indicates OR