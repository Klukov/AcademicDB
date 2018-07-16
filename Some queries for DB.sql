SELECT     [Praca Dyplomowa].tytu³, [Kierunek Studiów].[nazwa kierunku], Wydzia³y.[nazwa wydzialu], [typ studiów].[poziom studiów], 
                      [typ studiów].[dzienne czy zaoczne] AS [rodzaj studiów]
FROM         [Kierunek Studiów] INNER JOIN
                      [Praca Dyplomowa] ON [Kierunek Studiów].[id kierunku] = [Praca Dyplomowa].[id kierunek] INNER JOIN
                      S³ownik ON [Praca Dyplomowa].[id pracy dyplomowej] = S³ownik.[id pracy dyplomowej] INNER JOIN
                      [s³owo kluczowe] ON S³ownik.[id s³owa kluczowego] = [s³owo kluczowe].[id s³owa] INNER JOIN
                      Wydzia³y ON [Kierunek Studiów].[id wydzia³u] = Wydzia³y.[id wydzia³u] INNER JOIN
                      [typ studiów] ON [Kierunek Studiów].[id typ studiów] = [typ studiów].[id typu studiów]
WHERE     ([s³owo kluczowe].[s³owo kluczowe] LIKE 'arduino')
ORDER BY [Praca Dyplomowa].tytu³


---------------------------------------------------------------------------------------------------------------


SELECT     [Praca Dyplomowa].tytu³, [Kierunek Studiów].[nazwa kierunku], [typ studiów].[poziom studiów]
FROM         [Kierunek Studiów] INNER JOIN
                      [Praca Dyplomowa] ON [Kierunek Studiów].[id kierunku] = [Praca Dyplomowa].[id kierunek] INNER JOIN
                      [Pracownik Naukowy] ON [Praca Dyplomowa].[id promotor] = [Pracownik Naukowy].[Id pracownika] INNER JOIN
                      [typ studiów] ON [Kierunek Studiów].[id typ studiów] = [typ studiów].[id typu studiów]
WHERE     ([Pracownik Naukowy].[Id pracownika] = 4)


---------------------------------------------------------------------------------------------------------------


SELECT     [Praca Dyplomowa].tytu³, [Kierunek Studiów].[nazwa kierunku], [typ studiów].[poziom studiów], Wydzia³y.[nazwa wydzialu]
FROM         [Kierunek Studiów] INNER JOIN
                      [Praca Dyplomowa] ON [Kierunek Studiów].[id kierunku] = [Praca Dyplomowa].[id kierunek] INNER JOIN
                      [typ studiów] ON [Kierunek Studiów].[id typ studiów] = [typ studiów].[id typu studiów] INNER JOIN
                      Wydzia³y ON [Kierunek Studiów].[id wydzia³u] = Wydzia³y.[id wydzia³u] INNER JOIN
                      Obrona ON [Praca Dyplomowa].[id pracy dyplomowej] = Obrona.[id pracy dyplomowej] INNER JOIN
                      Student ON Obrona.[id studenta] = Student.[numer indeksu]
WHERE     (Student.[numer indeksu] = 100000001)
ORDER BY [Praca Dyplomowa].tytu³


------------------------------------------------------------------------------------------------------------------


SELECT     [Praca Dyplomowa].tytu³ AS [Tytu³ pracy], [typ studiów].[poziom studiów] AS [Typ Studiów], Student.imiê AS [Imiê autora], Student.nazwisko AS [Nazwisko autora], 
                      [stopien naukowy].stopieñ AS [Tytu³ promotora], [Pracownik Naukowy].Imiê AS [Imiê promotora], [Pracownik Naukowy].Nazwisko AS [Nazwisko promotora], 
                      Obrona.[termin obrony] AS Obroniono
FROM         [Kierunek Studiów] INNER JOIN
                      [Praca Dyplomowa] ON [Kierunek Studiów].[id kierunku] = [Praca Dyplomowa].[id kierunek] INNER JOIN
                      Obrona ON [Praca Dyplomowa].[id pracy dyplomowej] = Obrona.[id pracy dyplomowej] INNER JOIN
                      [Pracownik Naukowy] ON [Praca Dyplomowa].[id promotor] = [Pracownik Naukowy].[Id pracownika] INNER JOIN
                      [stopien naukowy] ON [Pracownik Naukowy].[id stopieñ naukowy] = [stopien naukowy].[id stopnia] INNER JOIN
                      Student ON Obrona.[id studenta] = Student.[numer indeksu] INNER JOIN
                      [typ studiów] ON [Kierunek Studiów].[id typ studiów] = [typ studiów].[id typu studiów]
WHERE     ([Kierunek Studiów].[nazwa kierunku] = 'Energetyka') OR
                      (Obrona.[termin obrony] >= CONVERT(DATETIME, '2016-01-01 00:00:00', 102)) AND (Obrona.[termin obrony] < CONVERT(DATETIME, '2017-01-01 00:00:00', 102))






