select p1.id_customer, p2.nama ,p1.id_barang, p2.cabang_sales, p1.jumlah_barang, p1.unit, p1.harga
from penjualan as p1
join pelanggan as p2
on p1.id_customer = p2.id_customer;

select p1.id_barang, p2.nama_barang, sum(p1.jumlah_barang) as total_dus_terjual, p1.unit, p1.harga, sum(p1.jumlah_barang)*p1.harga AS total_penjualan_per_barang
from penjualan as p1
join barang as p2
on p1.id_barang = p2.kode_barang
group BY id_barang
ORDER BY total_penjualan_per_barang DESC;

select p1.id_barang, b1.nama_barang, p2.cabang_sales,COUNT(cabang_sales) as jumlah_penjualan_berdasarkan_kota
from penjualan as p1
join pelanggan as p2
on p1.id_customer = p2.id_customer
JOIN barang as b1
on p1.id_barang = b1.kode_barang
GROUP BY cabang_sales 
ORDER BY jumlah_penjualan_berdasarkan_kota DESC;