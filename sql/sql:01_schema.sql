SELECT d.departman_adi,
       COUNT(*) AS toplam_sayisi
FROM calisan_table ct
JOIN departman d ON ct.dep_id = d.dep_id
GROUP BY d.departman_adi
ORDER BY toplam_sayisi DESC;



SELECT COUNT(*) FROM calisan_table;