--Cho biết danh sách các môn học, gồm các thông tin sau: Mã môn học, Tên môn học, Số tiết. 
SELECT *
From mon

--Liệt kê danh sách sinh viên, gồm các thông tin sau: Mã sinh viên, Họ sinh viên, Tên sinh viên, Học bổng.
--Danh sách sẽ được sắp xếp theo thứ tự Mã sinh viên tăng dần.
SELECT MaSV,HoSV,TenSV,Hocbong
FROM sinhvien
ORDER BY MaSV ASC

--Danh sách các sinh viên, gồm các thông tin sau: Mã sinh viên, Tên sinh viên, Phái, Ngày sinh. 
--Danh sách sẽ được sắp xếp theo thứ tự của tên. 
SELECT MaSV,TenSV,Phai,Ngaysinh
FROM sinhvien
ORDER BY TenSV ASC

--Danh sách thông tin các sinh viên gồm: Họ tên sinh viên, Ngày sinh, Học bổng. 
--Thông tin sẽ được sắp xếp theo thứ tự Ngày sinh tăng dần và Học bổng giảm dần.
SELECT HoSV,TenSV,Ngaysinh,Hocbong
FROM sinhvien
ORDER BY Ngaysinh ASC, Hocbong DESC

--Danh sách các môn học có tên bắt đầu bằng chữ T, gồm các thông tin: Mã môn, Tên môn, Số tiết. 
SELECT MaMH,TenMH,SoTiet
From mon
WHERE TenMH LIKE 'T%'

--Liệt kê danh sách những sinh viên có chữ cái cuối cùng trong tên là i,
-- gồm các thông tin: Họ tên sinh viên, Ngày sinh, Phái 
SELECT HoSV,TenSV,NgaySinh,Phai
FROM sinhvien
WHERE TenSV LIKE '%i'

--Danh sách những khoa có ký tự thứ hai của tên khoa có chứa chữ N, gồm các thông tin: Mã khoa, Tên khoa
SELECT MaKH,TenKH
FROM khoa
WHERE TenKH LIKE '_N%'

--Liệt kê những sinh viên mà họ có chứa chữ Thị. 
SELECT *
FROM sinhvien
WHERE HoSV LIKE '%Thị%'

--Cho biết danh sách các sinh viên của khoa Anh Văn, gồm các thông tin sau: Mã sinh viên, Họ tên sinh viên, Ngày sinh, Mã khoa. 
SELECT sinhvien.MaSV,sinhvien.HoSV,sinhvien.TenSV,sinhvien.Ngaysinh,sinhvien.MaKH 
FROM sinhvien,khoa
WHERE sinhvien.MaKH=khoa.MaKH AND TenKH='Anh Văn'

--Liệt kê danh sách sinh viên của khoa Vật Lý, gồm các thông tin sau: Mã sinh viên, Họ tên sinh viên, Ngày sinh.
-- Danh sách sẽ được sắp xếp theo thứ tự Ngày sinh giảm dần.
SELECT sinhvien.MaSV,sinhvien.HoSV,sinhvien.TenSV,sinhvien.Ngaysinh
FROM sinhvien,khoa
WHERE sinhvien.MaKH=khoa.MaKH AND khoa.TenKH='Vật Lý'

--Cho biết danh sách các sinh viên có học bổng lớn hơn 500,000, gồm các thông tin: Mã sinh viên, Họ tên sinh viên, Mã khoa, Học bổng.
--Danh sách sẽ được sắp xếp theo thứ tự Mã khoa giảm dần. 
SELECT MaSV,HoSV,TenSV,MaKH,Hocbong
FROM sinhvien
WHERE Hocbong>500000
ORDER BY MaKH DESC

--Liệt kê danh sách sinh viên sinh vào ngày 20/12/1987, gồm các thông tin: Họ tên sinh viên, Mã khoa, Học bổng. 
SELECT HoSV,TenSV,MaKH,Hocbong
FROM sinhvien
WHERE Ngaysinh='1987-12-20'

--Cho biết các sinh viên sinh sau ngày 20/12/1977, gồm các thông tin: Họ tên sinh viên, Ngày sinh, Nơi sinh, Học bổng.
-- Danh sách sẽ được sắp xếp theo thứ tự ngày sinh giảm dần. 
SELECT HoSV,TenSV,Ngaysinh,NoiSinh,Hocbong
FROM sinhvien
WHERE Ngaysinh>'1977-12-20'
ORDER BY Ngaysinh DESC

--Liệt kê các sinh viên có học bổng lớn hơn 100,000 và sinh ở Tp HCM,
-- gồm các thông tin: Họ tên sinh viên, Mã khoa, Nơi sinh, Học bổng. 
SELECT HoSV,TenSV,MaKH,NoiSinh,Hocbong
FROM sinhvien
WHERE Hocbong>100000 AND NoiSinh='TP. HCM'

--15.	Danh sách các sinh viên của khoa Anh văn và khoa Triết, gồm các thông tin: Mã sinh viên, Mã khoa, Phái. 
SELECT sinhvien.MaSV, sinhvien.MaKH,sinhvien.Phai
FROM sinhvien,khoa
WHERE sinhvien.MaKH=khoa.MaKH AND (khoa.TenKH='Anh Văn' OR khoa.TenKH='Triết')

--Cho biết những sinh viên có ngày sinh từ ngày 01/01/1986 đến ngày 05/06/1992,
-- gồm các thông tin: Mã sinh viên, Ngày sinh, Nơi sinh, Học bổng. 
SELECT MaSV,Ngaysinh,NoiSinh,Hocbong
FROM sinhvien
WHERE Ngaysinh BETWEEN '1986-01-01' AND '1992-06-05'

--Danh sách những sinh viên có học bổng từ 200,000 đến 800,000
-- gồm các thông tin: Mã sinh viên, Ngày sinh, Phái, Mã khoa. 
SELECT MaSV,Ngaysinh,Phai,MaKH
FROM sinhvien
WHERE Hocbong BETWEEN 200000 AND 800000

--Cho biết những môn học có số tiết lớn hơn 40 và nhỏ hơn 60, gồm các thông tin: Mã môn học, Tên môn học, Số tiết.
SELECT MaMH,TenMH,SoTiet
FROM mon
WHERE Sotiet>40 AND Sotiet<60

--Liệt kê những sinh viên nam của khoa Anh văn, gồm các thông tin: Mã sinh viên, Họ tên sinh viên, Phái. 
SELECT sinhvien.MaSV,sinhvien.HoSV,sinhvien.TenSV,sinhvien.Phai
FROM sinhvien,khoa
WHERE sinhvien.MaKH=khoa.MaKH AND sinhvien.Phai=0 AND khoa.TenKH='Anh văn' 

--Danh sách sinh viên có nơi sinh ở Hà Nội và ngày sinh sau ngày 01/01/1990, 
--gồm các thông tin: Họ sinh viên, Tên sinh viên, Nơi sinh, Ngày sinh. 
SELECT HoSV,TenSV,NoiSinh,Ngaysinh
FROM sinhvien
WHERE NoiSinh='Hà Nội' AND Ngaysinh >'1990-01-01'

--Liệt kê những sinh viên nữ, tên có chứa chữ N. 
SELECT *
FROM sinhvien
WHERE Phai=1 AND TenSV LIKE '%N%'

--Danh sách các nam sinh viên khoa Tin Học có ngày sinh sau ngày 30/05/1986. 
SELECT sinhvien.*
FROM sinhvien,khoa
WHERE sinhvien.MaKH=khoa.MaKH AND sinhvien.Phai=0 AND khoa.TenKH='Tin Học' AND sinhvien.Ngaysinh>'1986-05-30'

--Liệt kê danh sách sinh viên gồm các thông tin sau: Họ và tên sinh viên, Giới tính, Ngày sinh.
-- Trong đó Giới tính hiển thị ở dạng Nam/Nữ tuỳ theo giá trị của field Phai là True hay False. 
SELECT sinhvien.HoSV, sinhvien.TenSV, sinhvien.Ngaysinh,
CASE WHEN phai = '0' THEN 'Nam' ELSE 'Nữ' END AS 'Giới tính'
FROM sinhvien



--Cho biết danh sách sinh viên gồm các thông tin sau: Mã sinh viên, Tuổi, Nơi sinh, Mã khoa.
-- Trong đó Tuổi sẽ được tính bằng cách lấy năm hiện hành trừ cho năm sinh 
SELECT sinhvien.MaSV, sinhvien.NoiSinh, sinhvien.MaKH,
YEAR (CURDATE()) - YEAR(sinhvien.Ngaysinh) AS 'Tuổi'
FROM sinhvien 

--	Cho biết những sinh viên có tuổi lớn hơn 20, thông tin gồm: Họ tên sinh viên, Tuổi, Học bổng 
SELECT sinhvien.MaSV, sinhvien.NoiSinh,
YEAR (CURDATE()) - YEAR(sinhvien.Ngaysinh) AS 'Tuổi', sinhvien.Hocbong
FROM sinhvien 
WHERE (YEAR (CURDATE()) - YEAR(sinhvien.Ngaysinh)) > 20


--Danh sách những sinh viên có tuổi từ 20 đến 30, thông tin gồm: Họ tên sinh viên,  Tuổi, Tên khoa
SELECT sinhvien.MaSV, sinhvien.NoiSinh,
YEAR (CURDATE()) - YEAR(sinhvien.Ngaysinh) AS 'Tuổi', khoa.TenKH
FROM sinhvien, khoa
WHERE sinhvien.MaKH = khoa.MaKH 
AND (YEAR (CURDATE()) - YEAR(sinhvien.Ngaysinh)) BETWEEN 20 AND 30