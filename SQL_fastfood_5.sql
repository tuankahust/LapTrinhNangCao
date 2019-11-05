-- Table structure for table Ban
CREATE TABLE Ban(
  id_ban int NOT NULL IDENTITY(1,1) PRIMARY KEY,
  tenban varchar(200) NOT NULL,
  trangthai int NOT NULL
);
-- Dumping data for table Ban
INSERT INTO Ban (tenban, trangthai) VALUES
('ban1', 1),
('ban2', 1),
('ban3', 1),
('ban4', 1);
-- Table structure for table nhanvien
CREATE TABLE nhanvien(
  id_nhanvien int NOT NULL IDENTITY(1,1) PRIMARY KEY,
  fullname nvarchar(200) NOT NULL,
  username_nv varchar(200) NOT NULL UNIQUE ,
  password_nv varchar(200) NOT NULL,
  chucdanh int NOT NULL
);
-- Dumping data for table nhanvien
INSERT INTO nhanvien (fullname, username_nv, password_nv, chucdanh) VALUES
(N'Phạm Trung Hiếu', 'pth', 'admin', 1),
(N'Trần Thế Quyền', 'ttq', 'nv1', 0),
(N'Đào Phương Bắc', 'dpb', 'nv2', 0),
(N'Khổng Anh Tuấn', 'kat', 'nv3', 0),
(N'Bùi Văn Hòa', 'bvh', 'nv4', 0);
-- Table structure for table sanpham
CREATE TABLE sanpham (
  id_sp int NOT NULL IDENTITY(1,1) PRIMARY KEY,
  tensanpham nvarchar(200) NOT NULL,
  giathanh int NOT NULL,
  trangthai int NOT NULL
);
-- Dumping data for table sanpham
INSERT INTO sanpham (tensanpham, giathanh, trangthai) VALUES
(N'pizza gà', 130, 1),
(N'pizaa rau', 80, 1),
(N'Burger gà', 90, 1),
(N'Burgeer trứng', 70, 1),
(N'Mỳ xào rau', 50, 1),
(N'Mỳ xào bò ', 90, 1),
(N'Cocacola', 15, 1),
(N'Pepsi ', 15, 1),
(N'sữa milo', 10, 1);
-- Table structure for table Bill
CREATE TABLE Bill (
  id_bill int NOT NULL IDENTITY(1,1) PRIMARY KEY,
  FK_id_table int FOREIGN KEY REFERENCES Ban (id_ban),
  FK_id_nhanvien int FOREIGN KEY REFERENCES nhanvien (id_nhanvien)
);
-- Table structure for table custom_order
CREATE TABLE custom_order (
  id_oder int NOT NULL IDENTITY(1,1) PRIMARY KEY,
  fk_id_ban int FOREIGN KEY REFERENCES Ban(id_ban),
  fk_id_sp int FOREIGN KEY REFERENCES sanpham(id_sp),
  soluong int NOT NULL,
  ngay date NOT NULL
);
-- Table structure for table thongke
CREATE TABLE thongke (
  id_thongke int NOT NULL IDENTITY(1,1) PRIMARY KEY,
  fk_id_sp int FOREIGN KEY REFERENCES sanpham(id_sp),
  soluong int NOT NULL,
  ngay date NOT NULL,
);
