----------------------------------------------------ZAPYTANIA DO BAZY DANYCH -----------------------------------------------------------
USE fabryka_samochodow;
-- Polecenie 1
SELECT d.przeznaczenie, 
       COUNT(p.id_pracownika) AS liczba_pracownikow, 
       ROUND(AVG(p.wynagrodzenie), 2) AS srednie_wynagrodzenie
FROM dbo.pracownicy p, 
     dbo.dzialy d
WHERE p.id_dzialu = d.id_dzialu
GROUP BY d.przeznaczenie
ORDER BY d.przeznaczenie;

-- Polecenie 2
SELECT s.*
FROM dbo.silniki s
WHERE NOT EXISTS
(
    SELECT e.*
    FROM dbo.egzemplarze e
    WHERE e.id_silnika = s.id_silnika
);

-- Polecenie 3
SELECT p.id_pracownika, 
       p.imie, 
       p.nazwisko
FROM dbo.pracownicy p, 
     dbo.dzialy_samochody ds, 
     dbo.egzemplarze e
WHERE p.id_dzialu = ds.id_dzialu
      AND ds.id_samochodu = e.id_samochodu
      AND e.cena =
(
    SELECT TOP 1 e2.cena
    FROM dbo.egzemplarze e2
    ORDER BY e2.cena DESC
);

-- Polecenie 4
SELECT k.imie, 
       k.nazwisko, 
       k.pesel, 
       k.typ_klienta, 
       s.nazwa, 
       s.pojemnosc, 
       s.moc
FROM dbo.klienci k, 
     dbo.zamowienia z, 
     dbo.egzemplarze_zamowienia ez, 
     dbo.egzemplarze e, 
     dbo.silniki s
WHERE k.id_klienta = z.id_klienta
      AND ez.id_zamowienia = z.id_zamowienia
      AND ez.id_egzemplarza = e.id_egzemplarza
      AND e.id_egzemplarza != 118
      AND e.id_silnika = s.id_silnika
      AND s.pojemnosc IN
(
    SELECT s2.pojemnosc
    FROM dbo.silniki s2, 
         dbo.egzemplarze e2
    WHERE s2.id_silnika = e2.id_silnika
          AND e2.kolor =
    (
        SELECT e3.kolor
        FROM dbo.egzemplarze e3
        WHERE e3.id_egzemplarza = 118
    )
);

-- Polecenie 5
SELECT p.imie, 
       p.nazwisko, 
       p.id_dzialu, 
       p.wynagrodzenie
FROM dbo.pracownicy p
WHERE EXISTS
(
    SELECT p2.id_kierownika
    FROM dbo.pracownicy p2
    WHERE p.id_pracownika = p2.id_kierownika
          AND p.id_dzialu != 'Z01'
);

-- Polecenie 6
SELECT d.id_dzialu, 
       d.przeznaczenie, 
       d.hala
FROM dbo.dzialy d
WHERE NOT EXISTS
(
    SELECT *
    FROM dbo.samochody s
    WHERE NOT EXISTS
    (
        SELECT *
        FROM dbo.dzialy_samochody ds
        WHERE ds.id_dzialu = d.id_dzialu
              AND s.id_samochodu = ds.id_samochodu
    )
);

-- Polecenie 7
SELECT TOP 1 p.nazwisko, 
             p.wynagrodzenie, 
             p.id_dzialu, 
             s.nazwa, 
             p.wynagrodzenie - s.placa_max AS roznica
FROM dbo.pracownicy p, 
     dbo.stanowiska s
WHERE p.id_stanowiska = s.id_stanowiska
      AND s.placa_max < p.wynagrodzenie
ORDER BY roznica DESC;

-- Polecenie 8
SELECT k.dzien, 
       COUNT(k.dzien) AS liczba_zlozenia_zamowien
FROM
(
    SELECT *, 
           DATENAME(weekday, z.data_zamowienia) AS dzien
    FROM dbo.zamowienia z
) AS k
GROUP BY k.dzien;

-- Polecenie 9

SELECT *
FROM dbo.pracownicy p
WHERE p.wynagrodzenie >
(
    SELECT MAX(p2.wynagrodzenie)
    FROM dbo.pracownicy p2
    WHERE p2.id_dzialu = 'S51'
);

-- Polecenie 10
SELECT s.marka, 
       s.model
FROM dbo.samochody s
WHERE s.id_samochodu IN
(
    SELECT ds.id_samochodu
    FROM dbo.dzialy_samochody ds
    WHERE ds.id_dzialu = 'M12'
          AND ds.id_samochodu = s.id_samochodu
);

-- Polecenie 11
WITH Podlegli(id_kierownika, 
              id_pracownika, 
              imie, 
              nazwisko, 
              HierarchiaZatrudnienia)
     AS (SELECT id_kierownika, 
                id_pracownika, 
                imie, 
                nazwisko, 
                0 AS HierarchiaZatrudnienia
         FROM dbo.pracownicy
         WHERE id_kierownika IS NULL
         UNION ALL
         SELECT p.id_kierownika, 
                p.id_pracownika, 
                p.imie, 
                p.nazwisko, 
                HierarchiaZatrudnienia + 1
         FROM dbo.pracownicy AS p
              INNER JOIN Podlegli AS p2 ON p.id_kierownika = p2.id_pracownika)
     SELECT id_kierownika, 
            id_pracownika, 
            imie, 
            nazwisko, 
            HierarchiaZatrudnienia = CASE
                                         WHEN p.HierarchiaZatrudnienia = 0
                                         THEN 'Dyrektor zak³adu'
                                         WHEN p.HierarchiaZatrudnienia = 1
                                         THEN 'Kierownik dzialu'
                                         WHEN p.HierarchiaZatrudnienia = 2
                                         THEN 'Kierownik poddzialu'
                                         WHEN p.HierarchiaZatrudnienia = 3
                                         THEN 'Pracownik fizyczny'
                                         ELSE 'Pracownik'
                                     END
     FROM Podlegli p
     ORDER BY id_kierownika;
GO
-- Polecenie 12
SELECT p.imie + ' ' + p.nazwisko AS pracownik, 
       s.nazwa, 
       s.placa_min, 
       s.placa_max AS pracownicy
FROM dbo.pracownicy p, 
     dbo.stanowiska s
WHERE p.id_stanowiska = s.id_stanowiska
      AND s.nazwa LIKE '%s%'
      AND s.nazwa LIKE '%j%';

-- Polecenie 13
SELECT AVG(p.cena) AS srednia_wartosc
FROM
(
    SELECT e.id_egzemplarza, 
           e.cena
    FROM dbo.egzemplarze e
    WHERE EXISTS
    (
        SELECT *
        FROM dbo.silniki s
        WHERE e.id_silnika = s.id_silnika
              AND s.rodzaj_paliwa = 'benzyna'
    )
) AS p;

-- Polecenie 14

SELECT t.id_pracownika, 
       t.nazwisko, 
       t.wynagrodzenie, 
       t.id_dzialu
FROM
(
    SELECT p.id_pracownika, 
           p.nazwisko, 
           p.wynagrodzenie, 
           p.id_dzialu, 
           RANK() OVER(PARTITION BY p.id_dzialu
           ORDER BY(p.wynagrodzenie + ISNULL(p.premie, 0)) DESC) AS kolejnosc_w_dziale
    FROM dbo.pracownicy p
) AS t
WHERE t.kolejnosc_w_dziale = 3;

-- 15. Polecenie 15

SELECT k.id_klienta, 
       k.imie, 
       k.nazwisko, 
       COUNT(*) AS liczba_zamowionych_egzemplarzy
FROM dbo.egzemplarze_zamowienia ez, 
     dbo.klienci k, 
     dbo.zamowienia z
WHERE ez.id_zamowienia = z.id_zamowienia
      AND z.id_klienta = k.id_klienta
GROUP BY k.id_klienta, 
         k.imie, 
         k.nazwisko, 
         ez.id_zamowienia
HAVING COUNT(*) > 1;

-- Polecenie 16
SELECT TOP 3 ez.id_zamowienia, 
             SUM(e.cena) - z.rabat AS koszt_zamowienia
FROM dbo.zamowienia z, 
     dbo.egzemplarze_zamowienia ez, 
     dbo.egzemplarze e
WHERE z.id_zamowienia = ez.id_zamowienia
      AND ez.id_egzemplarza = e.id_egzemplarza
GROUP BY ez.id_zamowienia, 
         ez.id_egzemplarza, 
         z.rabat
ORDER BY koszt_zamowienia DESC;

-- Polecenie 17
SELECT s.marka, 
       s.model, 
       e.typ_nadwozia, 
       e.cena
FROM dbo.samochody s, 
     dbo.egzemplarze e
WHERE e.id_samochodu = s.id_samochodu
      AND e.id_egzemplarza IN
(
    SELECT e2.id_egzemplarza
    FROM dbo.egzemplarze e2
    WHERE EXISTS
    (
        SELECT *
        FROM dbo.samochody s2
        WHERE e2.id_samochodu = s2.id_samochodu
              AND s2.cena_max = e2.cena
    )
);

-- Polecenie 18

SELECT p.id_pracownika, 
       p.imie, 
       p.nazwisko, 
       p.wynagrodzenie, 
       p.premie, 
       s.nazwa
FROM dbo.pracownicy p, 
     dbo.stanowiska s
WHERE p.id_stanowiska = s.id_stanowiska
      AND p.wynagrodzenie + p.premie <
(
    SELECT(
    (
        SELECT MAX(max_value.placa)
        FROM
        (
            SELECT p.wynagrodzenie + p.premie AS placa
            FROM dbo.pracownicy p
        ) AS max_value
    ) +
    (
        SELECT MIN(min_value.placa)
        FROM
        (
            SELECT p2.wynagrodzenie + p2.premie AS placa
            FROM dbo.pracownicy p2
        ) AS min_value
    )) / 2 AS mediana
)
ORDER BY p.wynagrodzenie DESC;

-- Polecenie 19
SELECT d.id_dzialu, 
       d.przeznaczenie, 
       d.hala, 
       s.model
FROM dbo.dzialy d, 
     dbo.dzialy_samochody ds, 
     dbo.samochody s
WHERE d.id_dzialu = ds.id_dzialu
      AND ds.id_samochodu = s.id_samochodu
      AND d.wielkosc IN
(
    SELECT TOP 1 AVG(d2.wielkosc)
    FROM dbo.dzialy d2
    GROUP BY d2.hala
    ORDER BY AVG(d2.wielkosc) ASC
);

-- Polecenie 20

SELECT DISTINCT 
       e.rodzaj_wyposazenia
FROM dbo.egzemplarze e
WHERE e.id_silnika IN
(
    SELECT s.id_silnika
    FROM dbo.silniki s
    WHERE s.pojemnosc = 1.5
);

-- Polecenie 21
WITH wartoscDoRabatu(id_klienta, 
                     wartosc_pojazdu_do_rabatu)
     AS (SELECT TOP 3 z.id_klienta, 
                      SUM(e.cena) / (SUM(z.rabat) / COUNT(ez.id_zamowienia)) AS wartosc_pojazdu_do_rabatu
         FROM dbo.klienci k, 
              dbo.zamowienia z, 
              dbo.egzemplarze_zamowienia ez, 
              dbo.egzemplarze e
         WHERE k.id_klienta = z.id_klienta
               AND z.id_zamowienia = ez.id_zamowienia
               AND ez.id_egzemplarza = e.id_egzemplarza
               AND z.rabat != 0
         GROUP BY z.id_klienta
         ORDER BY wartosc_pojazdu_do_rabatu)
     SELECT k.imie, 
            k.nazwisko, 
            k.id_klienta, 
            x.wartosc_pojazdu_do_rabatu
     FROM klienci k, 
          wartoscDoRabatu x
     WHERE x.id_klienta = k.id_klienta;

-- Polecenie 22

SELECT DISTINCT 
       ez.id_zamowienia, 
       z.id_klienta, 
       z.data_zamowienia, 
       z.rabat, 
       z.adres
FROM dbo.egzemplarze_zamowienia ez, 
     dbo.zamowienia z
WHERE ez.id_zamowienia = z.id_zamowienia
      AND ez.id_egzemplarza IN
(
    SELECT e.id_egzemplarza
    FROM dbo.egzemplarze e
    WHERE e.id_egzemplarza = ez.id_egzemplarza
          AND e.id_samochodu IN
    (
        SELECT ds.id_samochodu
        FROM dbo.dzialy_samochody ds
        WHERE ds.id_samochodu = e.id_samochodu
              AND ds.id_dzialu IN
        (
            SELECT d.id_dzialu
            FROM dbo.dzialy d, 
                 dbo.pracownicy p
            WHERE p.id_dzialu = d.id_dzialu
                  AND p.id_pracownika = 9
        )
    )
);

-- Polecenie 23
SELECT DISTINCT TOP 2 d2.id_dzialu, 
                      d2.przeznaczenie, 
(
    SELECT COUNT(*) AS liczba_pracownikow
    FROM dbo.pracownicy p, 
         dbo.dzialy d
    WHERE p.id_dzialu = d.id_dzialu
          AND d.id_dzialu = d2.id_dzialu
    GROUP BY d.id_dzialu
) AS liczba, 
                      SUM(p2.wynagrodzenie + p2.premie) AS suma_na_zarobki_pracownikow
FROM dbo.dzialy d2, 
     dbo.pracownicy p2
WHERE d2.id_dzialu = p2.id_dzialu
GROUP BY d2.id_dzialu, 
         d2.przeznaczenie
ORDER BY liczba DESC;

-- Polecenie 24

SELECT k.id_samochodu, 
       s.marka, 
       s.model, 
       k.id_dzialu, 
       k.sredni_czas
FROM
(
    SELECT ds2.id_samochodu, 
           ds2.id_dzialu, 
           ds2.sredni_czas, 
           RANK() OVER(PARTITION BY ds2.id_samochodu
           ORDER BY(ds2.sredni_czas) DESC) AS kolejnosc
    FROM dbo.dzialy_samochody ds2
) AS k, 
dbo.samochody s
WHERE k.kolejnosc = 1
      AND k.id_samochodu = s.id_samochodu;

-- Polecenie 25
SELECT *
FROM dbo.samochody s
WHERE EXISTS
(
    SELECT *
    FROM dbo.egzemplarze e
    WHERE EXISTS
    (
        SELECT *
        FROM dbo.silniki s2
        WHERE s2.rodzaj_paliwa = 'elektryczny'
              AND s.id_samochodu = e.id_samochodu
              AND s2.id_silnika = e.id_silnika
    )
);