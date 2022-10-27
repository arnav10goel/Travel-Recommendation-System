recommend(A, P, T):- A<18, P == 'family', T = 'family-friendly'.
recommend(A, P, T):- A<18, P == 'friends', T = 'adventurous_safe'.
recommend(A, P, T):- A>18, P == 'family', T = 'romantic'.
recommend(A, P, T):- A>18, P == 'friends', T = 'adventurous_risky'.
recommend(A, P, T):- A>18, P == 'solo', T = 'enlightening'.

show(Ty, S, M, L):- Ty == 'family-friendly', S == 'winter', M == 'relax', L = 'Wayanad, Kozhikode'.
show(Ty, S, M, L):- Ty == 'family-friendly', S == 'winter', M == 'fun', L = 'Gulmarg, Himachal'.
show(Ty, S, M, L):- Ty == 'family-friendly', S == 'summer', M == 'relax', L = 'Nainital, Shimla'.
show(Ty, S, M, L):- Ty == 'family-friendly', S == 'summer', M == 'fun', L = 'Andaman & Nicobar Islands'.
show(Ty, S, M, L):- Ty == 'adventurous_safe', S == 'winter', M == 'relax', L = 'Who goes for relaxing with school friends? But still book a resort in Jodhpur/Jaisalmer if you feel so.'.
show(Ty, S, M, L):- Ty == 'adventurous_safe', S == 'winter', M == 'fun', L = 'Gulmarg, Himachal'.
show(Ty, S, M, L):- Ty == 'adventurous_safe', S == 'summer', M == 'relax', L = 'Who goes for relaxing with school friends? But still book a resort in Lonavala if you feel so.'.
show(Ty, S, M, L):- Ty == 'adventurous_safe', S == 'summer', M == 'fun', L = 'North-East'.
show(Ty, S, M, L):- Ty == 'romantic', S == 'winter', M == 'relax', L = 'Star-gazing in Himachal'.
show(Ty, S, M, L):- Ty == 'romantic', S == 'winter', M == 'fun', L = 'Skiing and Bonfire in Gulmarg '.
show(Ty, S, M, L):- Ty == 'romantic', S == 'summer', M == 'relax', L = 'Beaches in Goa'.
show(Ty, S, M, L):- Ty == 'romantic', S == 'summer', M == 'fun', L = 'River-cruise in Kerala'.
show(Ty, S, M, L):- Ty == 'adventurous_risky', S == 'winter', M == 'relax', L = 'Kaziranga National Park, Jim-Corbett, Ranthambore National Park'.
show(Ty, S, M, L):- Ty == 'adventurous_risky', S == 'winter', M == 'fun', L = 'Desert tours in Jaisalmer/Jodhpur/Udaipur'.
show(Ty, S, M, L):- Ty == 'adventurous_risky', S == 'summer', M == 'relax', L = 'Trekking/Camping in North-East or Aravalis.'.
show(Ty, S, M, L):- Ty == 'adventurous_risky', S == 'summer', M == 'fun', L = 'River Rafting in Rishikesh or Ladakh, Trekking in Ladakh'.
show(Ty, S, M, L):- Ty == 'enlightening', S == 'winter', M == 'relax', L = 'Coorg, Kaziranga National Park'.
show(Ty, S, M, L):- Ty == 'enlightening', S == 'winter', M == 'fun', L = 'Western Ghats, Eastern Ghats'.
show(Ty, S, M, L):- Ty == 'enlightening', S == 'summer', M == 'relax', L = 'Jog Falls, Wular Lake, Pangong Lake'.
show(Ty, S, M, L):- Ty == 'enlightening', S == 'summer', M == 'fun', L = 'Trek to Kailash Mansarovar, Char-Dham Yatra, Katra-Jammu Treks'.


start:-
write('Welcome to our Travel Recommendation Program where we suggest you places to visit in our beautiful country - India.'),nl,
write('Enter your Name: '),
read(Name),nl,
write('Hello '),
write(Name),nl,
write('What is your age? '),nl,
read(Age),nl,
write('Will you be travelling with:'),nl,
write('1.family'),nl,
write('2.friends'),nl,
write('3.solo'),nl,
read(Partner),nl,
recommend(Age, Partner, Type),nl,

(
    Type == 'family-friendly'->
    write('Which season will you be travelling?'),nl,
    write('1.winter'),nl,
    write('2.summer'),nl,
    read(Season),nl,
    write('Do you want to relax or have fun?'),nl,
    write('1.relax'),nl,
    write('2.fun'),nl,
    read(Mood),nl,
    show(Type, Season, Mood, Location),nl,
    write('We recommend you to visit'),nl,
    write(Location)
    ;
    (
        Type == 'adventurous_safe'->
        write('Which season will you be travelling?'),nl,
        write('1.winter'),nl,
        write('2.summer'),nl,
        read(Season),nl,
        write('Do you want to relax or have fun?'),nl,
        write('1.relax'),nl,
        write('2.fun'),nl,
        read(Mood),nl,
        show(Type, Season, Mood, Location),nl,
        write('We recommend you to visit'),nl,
        write(Location)
        ;
        (
            Type == 'romantic'->
            write('Which season will you be travelling?'),nl,
            write('1.winter'),nl,
            write('2.summer'),nl,
            read(Season),nl,
            write('Do you want to relax or have fun?'),nl,
            write('1.relax'),nl,
            write('2.fun'),nl,
            read(Mood),nl,
            show(Type, Season, Mood, Location),nl,
            write('We recommend you to visit'),nl,
            write(Location)
            ;
            (
                Type == 'adventurous_risky'->
                write('Which season will you be travelling?'),nl,
                write('1.winter'),nl,
                write('2.summer'),nl,
                read(Season),nl,
                write('Do you want to relax or have fun?'),nl,
                write('1.relax'),nl,
                write('2.fun'),nl,
                read(Mood),nl,
                show(Type, Season, Mood, Location),nl,
                write('We recommend you to visit'),nl,
                write(Location)
                ;
                write('Which season will you be travelling?'),nl,
                write('1.winter'),nl,
                write('2.summer'),nl,
                read(Season),nl,
                write('Do you want to relax or have fun?'),nl,
                write('1.relax'),nl,
                write('2.fun'),nl,
                read(Mood),nl,
                show(Type, Season, Mood, Location),nl,
                write('We recommend you to visit'),nl,
                write(Location)
            )
        )
    )
).