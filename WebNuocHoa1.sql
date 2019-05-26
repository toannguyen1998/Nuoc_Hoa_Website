create database WebNuocHoa1
use WebNuocHoa1
create table KhachHang(
MaKH int  IDENTITY(1,1) PRIMARY KEY, 
HoTen nvarchar(100),
Taikhoan varchar(50),
MatKhau varchar(50),
Email varchar(100),
DiaChi nvarchar(100),
SDT varchar(11),
GT int,
NS date
)
 
create table LoaiSP(
MaLSP int  IDENTITY(1,1) PRIMARY KEY, 
TenLSP nvarchar(50)
)

create table NhanHieu(

MaNH int  IDENTITY(1,1) PRIMARY KEY, 
TenNH nvarchar(50)
)

create table SP(

MaSP int  IDENTITY(1,1) PRIMARY KEY, 
TenSP nvarchar(50),
Gia decimal(18,0),
Khoiluong int,
Anh nvarchar(50),
MoTa nvarchar(max),
SolgTon int,
MaLSP int REFERENCES LoaiSP(MaLSP), 
MaNH int REFERENCES NhanHieu(MaNH)
)

create table DonHang(
MaDH int  IDENTITY(1,1) PRIMARY KEY, 
DaThanhToan int, -- 1:ð? thanh toán, 0: chýa thanh toán
TinhtrangGH int,--1: ð? giao hàng, 0:chýa giao hàng
ngaydat date,
ngaygiao date,
MaKH int REFERENCES KhachHang(MaKH)
)

create table CTDH(
MaCTDH int  IDENTITY(1,1) PRIMARY KEY,
MaDH int REFERENCES DonHang(MaDH),
MaSP int REFERENCES SP(MaSP)
)
alter table CTDH
add  soluonng int, dongia decimal(18,0)

insert into NhanHieu(TenNH) values('Chanel')
insert into NhanHieu(TenNH) values('Gucci')
insert into NhanHieu(TenNH) values('Dior')
insert into NhanHieu(TenNH) values('Calvin Klein')
insert into NhanHieu(TenNH) values('Burberrry')



insert into LoaiSP(TenLSP) values(N'Nước hoa nam')
insert into LoaiSP(TenLSP) values(N'Nước hoa nữ')

insert into KhachHang values(N'Ðào Ng?c Ánh','anh11','ngoanh','anh12@gmail.com',N'Hà Nội','0988765245','1','04/05/1998')
insert into KhachHang values(N'Ngân Nguy?n','ngan23','nganha','congchua@gmail.com',N'Hà Nội','0988467298','1','05/02/1998')
insert into KhachHang values(N'Toàn Toàn','sieunhan','12345','sieunhan@gmail.com',N'Hải Phòng','0988325664','0','07/11/1998')
insert into KhachHang values(N'Chu Hà','chuoke','chuhu','chuchu@gmail.com',N'Cà Mau','0988764325','0','06/07/1998')
insert into KhachHang values(N'Ly Nguyễn','lykute','lyly','ly@gmail.com',N'Nam Ðịnh','0988765267','1','05/08/1998')
insert into KhachHang values(N'Phi Linh','123','456','anh1245@gmail.com',N'Hà Nội','0988765245','1','04/12/1998')
insert into KhachHang values(N'Hoài Nam','namanh11','namanh','namanh12@gmail.com',N'Hồ Chí Minh','0988765243','0','05/02/1998')
insert into KhachHang values(N'Phí Hoài Anh','hoaianh','ngoanh43','hoaianh12@gmail.com',N'Hà Nội','0988088096','1','11/05/1998')

insert into DonHang values('1','1','02/05/2019','03/05/2019','1')
insert into DonHang values('1','1','02/05/2019','06/05/2019','2')
insert into DonHang values('1','1','01/05/2019','04/05/2019','3')
insert into DonHang values('1','1','02/05/2019','03/05/2019','4')
insert into DonHang values('1','1','07/06/2019','09/06/2019','5')
insert into DonHang values('0','0','05/14/2019','05/17/2019','6')
insert into DonHang values('0','0','05/12/2019','05/15/2019','7')
insert into DonHang values('0','0','05/13/2019','05/15/2019','8')

insert into CTDH values('1','1','2','3500000')
insert into CTDH values('1','3','1','1450000')
insert into CTDH values('2','2','1','2300000')
insert into CTDH values('3','4','1','2450000')
insert into CTDH values('4','5','2','2690000')
insert into CTDH values('5','1','1','3500000')
insert into CTDH values('6','2','1','2300000')
insert into CTDH values('7','1','1','3500000')
insert into CTDH values('8','4','1','2450000')




insert into SP(TenSP,Gia,Khoiluong,MoTa,SolgTon) values('Burberrry for her','2690000','15',N'Nước hoa cho nữ','5')
insert into SP(TenSP,Gia,Khoiluong,MoTa,SolgTon) values('Burberrry black','2690000','15',N'Nước hoa cho nam','5')
insert into SP(TenSP,Gia,Khoiluong,MoTa,SolgTon) values('Burberrry vàng','2690000','15',N'Nước hoa cho nam','5')
insert into SP(TenSP,Gia,Khoiluong,MoTa,SolgTon) values('Burberrry mis ','2690000','15',N'Nước hoa cho nam','5')
insert into SP(TenSP,Gia,Khoiluong,MoTa,SolgTon) values('Burberrry touch for women','2690000','15',N'Nước hoa cho nữ','5')
insert into SP(TenSP,Gia,Khoiluong,MoTa,SolgTon) values('Burberrry pink','2690000','15',N'Nước hoa cho nữ','5')
insert into SP(TenSP,Gia,Khoiluong,MoTa,SolgTon) values('Burberrry weekend','2690000','15',N'Nước hoa cho nữ','5')
insert into SP(TenSP,Gia,Khoiluong,MoTa,SolgTon) values('Burberrry brit','2690000','15',N'Nước hoa cho nữ','5')
insert into SP(TenSP,Gia,Khoiluong,MoTa,SolgTon) values('Burberrry touch for him','2690000','15',N'Nước hoa cho nữ','5')
insert into SP(TenSP,Gia,Khoiluong,MoTa,SolgTon) values('Burberrry sooc','2690000','15',N'Nước hoa cho nam','5')
insert into SP(TenSP,Gia,Khoiluong,MoTa,SolgTon) values('Chanel for you','3500000','15',N'Nước hoa cho nữ','5')
insert into SP(TenSP,Gia,Khoiluong,MoTa,SolgTon) values('Chanel pink','3500000','15',N'Nước hoa cho nữ','5')
insert into SP(TenSP,Gia,Khoiluong,MoTa,SolgTon) values('Chanel coco','3500000','15',N'Nước hoa cho nữ','5')
insert into SP(TenSP,Gia,Khoiluong,MoTa,SolgTon) values('Chanel bleu ','3500000','15',N'Nước hoa cho nữ','5')
insert into SP(TenSP,Gia,Khoiluong,MoTa,SolgTon) values('Chanel N19','3500000','15',N'Nước hoa cho nữ','5')
insert into SP(TenSP,Gia,Khoiluong,MoTa,SolgTon) values('Chanel cisal','3500000','15',N'Nước hoa cho nam','5')
insert into SP(TenSP,Gia,Khoiluong,MoTa,SolgTon) values('Chanel beluw','3500000','15',N'Nước hoa cho nam','5')
insert into SP(TenSP,Gia,Khoiluong,MoTa,SolgTon) values('Chanel with me','3500000','15',N'Nước hoa cho nam','5')
insert into SP(TenSP,Gia,Khoiluong,MoTa,SolgTon) values('Chanel selw','3500000','15',N'Nước hoa cho nam','5')
insert into SP(TenSP,Gia,Khoiluong,MoTa,SolgTon) values('Chanel bols','3500000','15',N'Nước hoa cho nam','5')
insert into SP(TenSP,Gia,Khoiluong,MoTa,SolgTon) values('CK one','2450000','15',N'Nước hoa cho nữ','5')
insert into SP(TenSP,Gia,Khoiluong,MoTa,SolgTon) values('CK be','2450000','15',N'Nước hoa cho nữ','5')
insert into SP(TenSP,Gia,Khoiluong,MoTa,SolgTon) values('CK for men','2450000','15',N'Nước hoa cho nam','5')
insert into SP(TenSP,Gia,Khoiluong,MoTa,SolgTon) values('CK euphoria','2450000','15',N'Nước hoa cho nam','5')
insert into SP(TenSP,Gia,Khoiluong,MoTa,SolgTon) values('CK sheer','2450000','15',N'Nước hoa cho nam','5')
insert into SP(TenSP,Gia,Khoiluong,MoTa,SolgTon) values('CK red','2450000','15',N'Nước hoa cho nữ','5')
insert into SP(TenSP,Gia,Khoiluong,MoTa,SolgTon) values('CK deep','2450000','15',N'Nước hoa cho nam','5')
insert into SP(TenSP,Gia,Khoiluong,MoTa,SolgTon) values('CK summer','2450000','15',N'Nước hoa cho nam','5')
insert into SP(TenSP,Gia,Khoiluong,MoTa,SolgTon) values('CK escape','2450000','15',N'Nước hoa cho nữ','5')
insert into SP(TenSP,Gia,Khoiluong,MoTa,SolgTon) values('CK tee','2450000','15',N'Nước hoa cho nữ','5')
insert into SP(TenSP,Gia,Khoiluong,MoTa,SolgTon) values('Dior sauvage','1450000','15',N'Nước hoa cho nữ','5')
insert into SP(TenSP,Gia,Khoiluong,MoTa,SolgTon) values('Dior joy','1450000','15',N'Nước hoa cho nam','5')
insert into SP(TenSP,Gia,Khoiluong,MoTa,SolgTon) values('Dior jadore','1450000','15',N'Nước hoa cho nữ','5')
insert into SP(TenSP,Gia,Khoiluong,MoTa,SolgTon) values('Dior hypnotic','1450000','15',N'Nước hoa cho nữ','5')
insert into SP(TenSP,Gia,Khoiluong,MoTa,SolgTon) values('Dior M','1450000','15',N'Nước hoa cho nữ','5')
insert into SP(TenSP,Gia,Khoiluong,MoTa,SolgTon) values('Dior black','1450000','15',N'Nước hoa cho nam','5')
insert into SP(TenSP,Gia,Khoiluong,MoTa,SolgTon) values('Dior sensi','1450000','15',N'Nước hoa cho nữ','5')
insert into SP(TenSP,Gia,Khoiluong,MoTa,SolgTon) values('Dior christian','1450000','15',N'Nước hoa cho nam','5')
insert into SP(TenSP,Gia,Khoiluong,MoTa,SolgTon) values('Dior homme','1450000','15',N'Nước hoa cho nam','5')
insert into SP(TenSP,Gia,Khoiluong,MoTa,SolgTon) values('Dior Addict','1450000','15',N'Nước hoa cho nam','5')
insert into SP(TenSP,Gia,Khoiluong,MoTa,SolgTon) values('Gucci guilty','2300000','15',N'Nước hoa cho nam','5')
insert into SP(TenSP,Gia,Khoiluong,MoTa,SolgTon) values('Gucci flora','2300000','15',N'Nước hoa cho nữ','5')
insert into SP(TenSP,Gia,Khoiluong,MoTa,SolgTon) values('Gucci guilty pink','2300000','15',N'Nước hoa cho nữ','5')
insert into SP(TenSP,Gia,Khoiluong,MoTa,SolgTon) values('Gucci by gucci','2300000','15',N'Nước hoa cho nam','5')
insert into SP(TenSP,Gia,Khoiluong,MoTa,SolgTon) values('Gucci flora ye','2300000','15',N'Nước hoa cho nữ','5')
insert into SP(TenSP,Gia,Khoiluong,MoTa,SolgTon) values('Gucci bamboo','2300000','15',N'Nước hoa cho nữ','5')
insert into SP(TenSP,Gia,Khoiluong,MoTa,SolgTon) values('Gucci floraflow','2300000','15',N'Nước hoa cho nam','5')
insert into SP(TenSP,Gia,Khoiluong,MoTa,SolgTon) values('Gucci pour homme','2300000','15',N'Nước hoa cho nữ','5')
insert into SP(TenSP,Gia,Khoiluong,MoTa,SolgTon) values('Gucci romantic','2300000','15',N'Nước hoa cho nam','5')
insert into SP(TenSP,Gia,Khoiluong,MoTa,SolgTon) values('Gucci intenciout','2300000','15',N'Nước hoa cho nam','5')



update SP set MaLSP='1' where MoTa=N'Nước hoa cho nam'
update SP set MaLSP='2' where MoTa=N'Nước hoa cho nữ'

update SP set MaNH='1' where TenSP like'Ch%'
update SP set MaNH='2' where TenSP like'G%'
update SP set MaNH='3' where TenSP like'D%'
update SP set MaNH='4' where TenSP like'C%'
update SP set MaNH='5' where TenSP like'B%'



