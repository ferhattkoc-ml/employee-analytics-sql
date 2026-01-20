

-- ============================================
-- SQL Employee Analytics Project
-- Author: Ferhat Koç
-- Description:
-- This script contains analytical SQL queries
-- on a normalized employee database.
-- ============================================

-- 1. Employee count and average salary by department

SELECT 
    d.departman_adi,
    COUNT(*) AS toplam_sayisi,
    ROUND(AVG(ct.maas), 2) AS ortalama_maas
FROM calisan_table ct
JOIN departman d ON ct.dep_id = d.dep_id
GROUP BY d.departman_adi
ORDER BY toplam_sayisi DESC;




-- 2. Average salary by city

SELECT  
    s.sehir_adi,
    ROUND(AVG(ct.maas), 2) AS average_maas
FROM calisan_table ct
JOIN sehir s ON ct.sehir_id = s.sehir_id
GROUP BY s.sehir_adi;



-- 3. Top 10 highest paid employees

SELECT 
    c.ad,
    c.soyad,
    s.sehir_adi,
    d.departman_adi,
    ct.maas
FROM calisan_table ct
JOIN calisan c   ON ct.calisan_id = c.calisan_id
JOIN sehir s     ON ct.sehir_id   = s.sehir_id
JOIN departman d ON ct.dep_id     = d.dep_id
ORDER BY ct.maas DESC
LIMIT 10;



-- 4. Salary segmentation

SELECT
    CASE
        WHEN ct.maas >= 15000 THEN 'Yuksek'
        WHEN ct.maas < 5000   THEN 'Dusuk'
        ELSE 'Orta'
    END AS maas_segmenti,
    COUNT(*) AS calisan_sayisi
FROM calisan_table ct
GROUP BY maas_segmenti
ORDER BY calisan_sayisi DESC;


-- 5. Employee distribution by city and department

SELECT
    s.sehir_adi,
    d.departman_adi,
    COUNT(*) AS calisan_sayisi,
    ROUND(AVG(ct.maas), 2) AS ort_maas
FROM calisan_table ct
JOIN sehir s     ON ct.sehir_id = s.sehir_id
JOIN departman d ON ct.dep_id   = d.dep_id
GROUP BY s.sehir_adi, d.departman_adi
ORDER BY s.sehir_adi, ort_maas DESC;


-- 6. Average age by department

SELECT
    d.departman_adi,
    ROUND(AVG(TIMESTAMPDIFF(YEAR, ct.dogumtarihi, CURDATE())), 1) AS ort_yas
FROM calisan_table ct
JOIN departman d ON ct.dep_id = d.dep_id
GROUP BY d.departman_adi
ORDER BY ort_yas;




-- 7. Salary analysis by age group

SELECT
    ROUND(TIMESTAMPDIFF(YEAR, ct.dogumtarihi, CURDATE()), -1) AS yas_grubu,
    ROUND(AVG(ct.maas), 2) AS ort_maas,
    COUNT(*) AS calisan_sayisi
FROM calisan_table ct
GROUP BY yas_grubu
ORDER BY yas_grubu;





