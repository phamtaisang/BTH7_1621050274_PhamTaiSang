create database DB_DATN
go
use DB_DATN
go
create table tbl_khoahoc(
	Makh tinyint not null primary key,
	Tenkhoa nvarchar(10),
	Thoigian nvarchar(50),
	Ghichu nvarchar(50)
)

create table tbl_chuyennganh(
	Macn tinyint not null primary key,
	Tencn nvarchar(50),
	Ghichu nvarchar(150)
)

create table tbl_sinhvien(
	Masv char(10) not null primary key,
	Tensv nvarchar(50),
	Namsinh date,
	Gioitinh bit,
	Khoa tinyint,
	Chuyennganh tinyint,
	Email varchar(50),
	Dienthoai varchar(50),
	Diachi nvarchar(200),
	Ghichu nvarchar(150),
	FOREIGN KEY (khoa) REFERENCES tbl_khoahoc(Makh),
	FOREIGN KEY (Chuyennganh) REFERENCES tbl_chuyennganh(Macn)
)
create table tbl_giangvien(
	Magv char(6) not null primary key,
	Tengv nvarchar(50),
	Namsinh date,
	Gioitinh bit,
	Hocvi nvarchar(20) check( Hocvi in('Kỹ sư', 'Thạc sĩ', 'Tiến Sĩ')),
	Email varchar(50),
	Dienthoai varchar(50),
	Diachi nvarchar(200)
)

create table tbl_linhvuc(
	Malv tinyint not null primary key,
	Tenlv nvarchar(150),
	Ghichu nvarchar(150)
)

create table tbl_doan(
	Masv char(10) not null primary key,
	Tenda nvarchar(400),
	GVHD char(6),
	GVPB char(6),
	linhvuc tinyint,
	Diem decimal(3,1),
	Namtn smallint,
	FOREIGN KEY (GVHD) REFERENCES tbl_giangvien(Magv),
	FOREIGN KEY (GVPB) REFERENCES tbl_giangvien(Magv),
	FOREIGN KEY (linhvuc) REFERENCES tbl_linhvuc(Malv)
)
--insert data--

--tbl_khoahoc--
insert into tbl_khoahoc values (47,N'Khóa 47', N'2002-2007',N'Đào tạo niên chế')
insert into tbl_khoahoc values (48,N'Khóa 48', N'2003-2008',N'Đào tạo niên chế')
insert into tbl_khoahoc values (49,N'Khóa 49', N'2004-2009',N'Đào tạo niên chế')
insert into tbl_khoahoc values (50,N'Khóa 50', N'2005-2010',N'Đào tạo niên chế')
insert into tbl_khoahoc values (51,N'Khóa 51', N'2006-2011',N'Đào tạo niên chế')
insert into tbl_khoahoc values (52,N'Khóa 52', N'2007-2012',N'Đào tạo niên chế')
insert into tbl_khoahoc values (53,N'Khóa 53', N'2008-2013',N'Đào tạo niên chế')
insert into tbl_khoahoc values (54,N'Khóa 54', N'2009-2014',N'Đào tạo tín chỉ')
insert into tbl_khoahoc values (55,N'Khóa 55', N'2010-2015',N'Đào tạo tín chỉ')
insert into tbl_khoahoc values (56,N'Khóa 56', N'2011-2016',N'Đào tạo tín chỉ')
insert into tbl_khoahoc values (57,N'Khóa 57', N'2012-2017',N'Đào tạo tín chỉ')
insert into tbl_khoahoc values (58,N'Khóa 58', N'2013-2018',N'Đào tạo tín chỉ')

--tbl_chuyennganh--
insert into tbl_chuyennganh values (1,N'Tin học Mỏ','')
insert into tbl_chuyennganh values (2,N'Tin học Trắc địa','')
insert into tbl_chuyennganh values (3,N'Tin học Kinh tế','')
insert into tbl_chuyennganh values (4,N'Tin học Địa chất','')
insert into tbl_chuyennganh values (5,N'Mạng máy tính','')
insert into tbl_chuyennganh values (6,N'Công nghệ phần mềm','')
insert into tbl_chuyennganh values (7,N'Khoa học máy tính ứng dụng',N'Tuyển sinh từ K60')


--tbl_sinhvien--
insert into tbl_sinhvien values ('1221000100',N'Đỗ Thị Thu Hiền','1985/7/16',1,48,6,'dothuhien@yahoo.com','0972836521',N'Yên Bái',N'')
insert into tbl_sinhvien values ('1221000109',N'Tạ Duy Hiền','1984/4/18',0,50,4,'Hien1987@gmail.com','01658797651',N'Thái Bình',N'')
insert into tbl_sinhvien values ('1221000110',N'Bùi Thị Thu','1984/11/9',1,47,1,'buithu@gmail.com','0977123123',N'Nam Định',N'')
insert into tbl_sinhvien values ('1221000122',N'Nguyễn Thị Huyền','1988/3/25',1,51,6,'thanhhuyen@yahoo.com','0912098077',N'Thái Bình',N'')
insert into tbl_sinhvien values ('1221000107',N'Tạ Đình Thi','1987/9/21',0,50,1,'Dinhthi@yahoo.com','01222345678',N'Ninh Bình',N'')
insert into tbl_sinhvien values ('1221000420',N'Nguyễn Đức Minh','1984/12/10',0,49,6,'nguyenminh@gmail.com','0983786234',N'Hải Dương',N'')
insert into tbl_sinhvien values ('1221000311',N'Đỗ Văn Hiếu','1985/1/09',0,47,1,'hieudv@gmail.com','0987665667',N'Hải Phòng',N'')
insert into tbl_sinhvien values ('1221000227',N'Văn Tường Thuật','1988/7/13',0,48,2,'vanthuat@gmail.com','01667781221',N'Quảng Ninh',N'')
insert into tbl_sinhvien values ('1221000111',N'Nguyễn Trung Tiến','1984/8/12',0,51,1,'trungtien@gmail.com','0977543212',N'Hưng Yên',N'')
insert into tbl_sinhvien values ('1221000113',N'Quách Trung Thành','1988/1/15',0,47,1,'Trungthanh84@gmail.com','01227786763',N'Bắc Ninh',N'')
insert into tbl_sinhvien values ('1221000410',N'Đỗ Tiến Thành','1986/12/12',0,50,1,'Tienthanh.qn@gmail.com','0987665789',N'Quảng Ninh',N'')
insert into tbl_sinhvien values ('1221000166',N'Nguyễn Văn Lợi','1988/3/13',0,50,1,'nguyenvanloi@yahoo.com','0977115654',N'Vĩnh Phúc',N'')
insert into tbl_sinhvien values ('1221000168',N'Nguyễn Thị Hoài','1984/4/5',1,51,1,'Nguyenhoai88@gmail.com','0978654755',N'Lào Cai',N'')
insert into tbl_sinhvien values ('1221000157',N'Nguyễn Vũ Thành','1983/9/29',0,47,3,'Vuthanh84@gmail.com','01658765664',N'Lạng Sơn',N'')
insert into tbl_sinhvien values ('1221000143',N'Phạm Trung Kiên','1989/8/29',0,48,6,'Trungkien@yahoo.com','0987767234',N'Quảng Ninh',N'')
insert into tbl_sinhvien values ('1221000185',N'Trần Văn Quảng','1990/10/19',0,52,4,'Quangtran89@yahoo.com','01652347861',N'Hòa Bình',N'')
insert into tbl_sinhvien values ('1221000119',N'Bùi Văn Kiên','1988/03/11',0,53,2,'Kien19101990@gmail.com','0981887770',N'Lào Cai',N'')
insert into tbl_sinhvien values ('1221000532',N'Nguyễn Bá Long','1986/01/30',0,51,3,'balong@gmail.com','01667889876',N'Thái Bình',N'')
insert into tbl_sinhvien values ('1221000169',N'Ngô Văn Long','1986/11/18',0,48,6,'Longngo86@gmail.com','0977135167',N'Hà Nội',N'')
insert into tbl_sinhvien values ('1221000125',N'Nguyễn Thị Lệ Quỳnh','1986/11/18',1,49,1,'Lequynh86@yahoo.com','0126987125',N'Hải Phòng',N'')
insert into tbl_sinhvien values ('1221000190',N'Nguyễn Văn Thể','1985/10/15',0,48,3,'nguyenthe@gmail.com','0977123776',N'Lai Châu',N'')
insert into tbl_sinhvien values ('1221000118',N'Lê Văn Định','1987/11/12',0,50,2,'Ledinh87@gmail.com','0912887325',N'Hòa Bình',N'')
insert into tbl_sinhvien values ('1221000174',N'Trần Hoài Nam','1988/10/9',0,51,6,'hoainam@yahoo.com','01268761238',N'Hà Nội',N'')
insert into tbl_sinhvien values ('1221000183',N'Cao Đình Khôi','1985/8/12',0,48,5,'Dinhkhoi85@gmail.com','0912987345',N'Hải Phòng',N'')
insert into tbl_sinhvien values ('1221000158',N'Đỗ Xuân Huấn','1987/10/17',0,49,3,'Xuanhuan87@yahoo.com','0985876234',N'Thái Nguyên',N'')

-- create table tbl_giangvien(
insert into tbl_giangvien values ('080501',N'Đặng Quốc Trung','1980/7/16',0,'Thạc sĩ','dangquoctrung@humg.edu.vn','0982836521',N'Bộ môn Tin học Cơ bản')
insert into tbl_giangvien values ('080502',N'Trần Trung Chuyên','1975/10/7',0,'Kỹ sư','trantrungchuyen@humg.edu.vn','01667651298',N'Bộ môn Tin học Trắc địa')
insert into tbl_giangvien values ('080503',N'Nguyễn Tuấn Anh','1972/12/26',0,'Thạc sĩ','nguyentuananh@humg.edu.vn','0987112887',N'Bộ môn Tin học Trắc địa')
insert into tbl_giangvien values ('080504',N'Đặng Văn Nam','1985/12/7',0,'Thạc sĩ','dangvannam@humg.edu.vn','0986554231',N'Bộ môn Tin học Mỏ')
insert into tbl_giangvien values ('080505',N'Nguyễn Phương Bắc','1980/9/17',1,'Thạc sĩ','nguyenphuongbac@humg.edu.vn','01222345678',N'Bộ môn Tin học Mỏ')
insert into tbl_giangvien values ('080506',N'Nguyễn Thùy Dương','1977/8/19',1,'Thạc sĩ','nguyenthuyduong@humg.edu.vn','01258879876',N'Bộ môn Tin học Mỏ')
insert into tbl_giangvien values ('080507',N'Nông Thị Oanh','1974/10/8',1,'Thạc sĩ','nongthioanh@humg.edu.vn','0985234116',N'Bộ môn Công nghệ phần mềm')
insert into tbl_giangvien values ('080508',N'Lê Thị Nguyệt','1978/8/15',1,'Thạc sĩ','lethinguyet@humg.edu.vn','0988127776',N'Bộ môn Tin học Mỏ')
insert into tbl_giangvien values ('080509',N'Phạm Văn Đồng','1980/20/1',0,'Thạc sĩ','phamvandong@humg.edu.vn','01258791241',N'Bộ môn Tin học Kinh tế')
insert into tbl_giangvien values ('080510',N'Nguyễn Hữu Phương','1985/12/8',1,'Thạc sĩ','nguyenhuuphuong@humg.edu.vn','0976897234',N'Bộ môn Công nghệ phần mềm')

--create table tbl_linhvuc
insert into tbl_linhvuc values (1,N'Phần mềm ứng dụng trên Desktop',N'')
insert into tbl_linhvuc values (2,N'Phần mềm ứng dụng trên Di động',N'')
insert into tbl_linhvuc values (3,N'Phần mềm ứng dụng trên nền Web',N'')
insert into tbl_linhvuc values (4,N'An toàn – Bảo mật thông tin',N'')
insert into tbl_linhvuc values (5,N'Mạng máy tính',N'')
insert into tbl_linhvuc values (6,N'Khai thác phần mềm ứng dụng',N'')
insert into tbl_linhvuc values (7,N'Mã nguồn mở',N'')
insert into tbl_linhvuc values (8,N'Map-GIS',N'')
insert into tbl_linhvuc values (9,N'Tự động hóa',N'')

--create table tbl_doan
insert into tbl_doan values ('1221000100',N'Nghiên cứu ứng dụng phần mềm Topo và NovaTDN trong thiết kế mở vỉa mỏ đá trắng Mông Sơn, Yên Bình, Yên Bái và xây dựng module quản lý bản vẽ cho các dự án thiết kế mỏ bằng VBA trong AutoCAD','080502','080501',6,9.2,2008)
insert into tbl_doan values ('1221000109',N'Nghiên cứu xây dựng module quản lý lý lịch khoa học cán bộ Trường Đại học Mỏ-Địa chất trên nền mã nguồn mở Joomla','080501','080510',7,8.8,2010)
insert into tbl_doan values ('1221000110',N'Nghiên cứu xây dựng chương trình quản lý các dự án khai thác mỏ','080502','080508',1,7.9,2007)
insert into tbl_doan values ('1221000122',N'Xây dựng Module hỗ trợ tính toán, kiểm tra và thiết kế mới hệ thống cung cấp điện 6 kV trong công tác khai thác mỏ lộ thiên','080507','080505',1,9.4,2011)
insert into tbl_doan values ('1221000107',N'Xây dựng chương trình quản lý thiết bị cơ điện Công ty than Cọc Sáu','080506','080501',1,9.2,2010)
insert into tbl_doan values ('1221000420',N'Ứng dụng phần mềm Ventsim tính toán thiết kế mạng thông gió mỏ khu Lộ Trí của Công ty than Thống Nhất – TKV','080510','080502',6,8.7,2009)
insert into tbl_doan values ('1221000311',N'Xây dựng hệ thống quản lý vật tư cho Công ty than Thống Nhất – TKV','080503','080504',1,7.5,2007)
insert into tbl_doan values ('1221000227',N'Xây dựng chương trình quản lý hiện trạng khai thác các mỏ than bùn của tỉnh Hà Tây theo công nghệ GIS','080504','080508',8,8.5,2008)
insert into tbl_doan values ('1221000111',N'Xây dựng chương trình lập hộ chiếu khoan nổ mìn cho khu vực Đông Cao Sơn thuộc Công ty cổ phần than Cao Sơn','080502','080509',1,9.4,2011)
insert into tbl_doan values ('1221000113',N'Xây dựng mô hình 3D hệ thống đường ống công nghệ của nhà máy xử lý nước thải và chất thải rắn Vĩnh Niệm, Thành phố Hải Phòng','080501','080507',1,7.9,2007)
insert into tbl_doan values ('1221000410',N'Xây dựng chương trình quản lý thiết bị máy mỏ Công ty Cổ phần than Vàng Danh – TKV -','080510','080506',1,6.3,2010)
insert into tbl_doan values ('1221000166',N'Xây dựng chương trình quản lý vật tư cho Công ty than Vàng Danh','080507','080503',1,6.0,2010)
insert into tbl_doan values ('1221000168',N'Xây dựng chương trình quản lý kinh doanh nước sạch ứng dụng cho huyện Đông Triều - Quảng Ninh','080502','080508',1,8.2,2011)
insert into tbl_doan values ('1221000157',N'Nghiên cứu xây dựng Website thương mại điện tử Công ty Cảng và Kinh doanh than  ','080504','080505',3,9.0,2007)
insert into tbl_doan values ('1221000143',N'Nghiên cứu xây dựng hệ thống giám sát một số thông số của hệ thống công nghệ từ máy tính','080503','080507',9,7.0,2008)
insert into tbl_doan values ('1221000185',N'Nghiên cứu xây dựng module quản lý thư viện Trường Đại học Mỏ - Địa Chất trên nền mã nguồn mở Joomla','080501','080504',7,7.8,2012)
insert into tbl_doan values ('1221000119',N'Xây dựng CSDL phục vụ công tác quản lý hiện trạng sử dụng đất xã Gia Thịnh, huyện Gia Viễn, tỉnh Ninh Bình trong môi trường MapInfo.','080508','080502',8,8.5,2013)
insert into tbl_doan values ('1221000532',N'Xây dựng website bán hàng trực tuyến cho Công ty cổ phần Xây dựng, Thương mại và Kỹ thuật Hợp Nhất FUSICO','080504','080510',3,8.9,2011)
insert into tbl_doan values ('1221000169',N'Nghiên cứu phần mềm Topo-HSMo thành lập bản đồ hiện trạng, tính toán khối lượng đổ thải và quy hoạch, xây dựng mở rộng bãi thải Đông Cao Sơn - Công ty than Cao Sơn.','080502','080507',6,9.0,2008)
insert into tbl_doan values ('1221000125',N'Ứng dụng phần mềm Gemcom Surpac xây dựng mô hình vi khối và tính toán trữ lượng thân quặng mỏ Bauxit Nhân cơ.','080506','080502',6,8.3,2009)
insert into tbl_doan values ('1221000190',N'Xây dựng website hỗ trợ đào tạo tiếng anh trực tuyến thử nghiệm cho học viện anh ngữ EQUEST','080504','080507',3,8.4,2008)
insert into tbl_doan values ('1221000118',N'Xây dựng phần mềm tra cứu thông tin khoáng vật trên thiết bị di động','080507','080508',2,7.9,2010)
insert into tbl_doan values ('1221000174',N'Tìm hiểu Joomla và Virtuemart để xây dựng Website bán hàng máy tính cho công ty HT-Tech','080504','080501',7,8.6,2011)
insert into tbl_doan values ('1221000183',N'Xây dựng hệ thống Mail Exchange 2010 cho công ty FPT Telecom','080502','080507',5,9.1,2008)
insert into tbl_doan values ('1221000158',N'Xây dựng website tuyển dụng cho trung tâm hướng nghiệp và tư vấn việc làm, Trường ĐH Mỏ - Địa chất','080504','080508',3,8.8,2009)
