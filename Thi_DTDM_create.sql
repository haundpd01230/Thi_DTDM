-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2016-03-10 00:49:04.193




-- tables
-- Table: TNhanVien
CREATE TABLE TNhanVien (
    MaNV Char(10)  NOT NULL,
    Ten_NV Char(20)  NOT NULL,
    Ngaysinh date  NOT NULL,
    Gioitinh char(5)  NOT NULL,
    Email char(20)  NOT NULL,
    MucLuong money  NOT NULL,
    MaPhong Char(10)  NOT NULL,
    TPhongBan_MaPhong Char(10)  NOT NULL,
    CONSTRAINT TNhanVien_pk PRIMARY KEY  (MaNV)
)
;





-- Table: TPhongBan
CREATE TABLE TPhongBan (
    MaPhong Char(10)  NOT NULL,
    TenPhong Char(20)  NOT NULL,
    CONSTRAINT TPhongBan_pk PRIMARY KEY  (MaPhong)
)
;









-- foreign keys
-- Reference:  TNhanVien_TPhongBan (table: TNhanVien)

ALTER TABLE TNhanVien ADD CONSTRAINT TNhanVien_TPhongBan 
    FOREIGN KEY (TPhongBan_MaPhong)
    REFERENCES TPhongBan (MaPhong)
;





-- End of file.

