-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2015-07-01 01:16:24.802




-- tables
-- Table: TNhanVien
CREATE TABLE TNhanVien (
    MaNV varchar(20)  NOT NULL,
    TenNV varchar(25)  NOT NULL,
    NgaySinh date  NOT NULL,
    GioiTinh varchar(10)  NOT NULL,
    Email varchar(25)  NOT NULL,
    MucLuong int  NOT NULL,
    MaPhong varchar(25)  NOT NULL,
    CONSTRAINT TNhanVien_pk PRIMARY KEY (MaNV)
);



-- Table: TPhongBan
CREATE TABLE TPhongBan (
    MaPhong varchar(25)  NOT NULL,
    TenPhong varchar(30)  NOT NULL,
    CONSTRAINT TPhongBan_pk PRIMARY KEY (MaPhong)
);







-- foreign keys
-- Reference:  TPhongBan_TNhanVien (table: TPhongBan)


ALTER TABLE TPhongBan ADD CONSTRAINT TPhongBan_TNhanVien 
    FOREIGN KEY (TenPhong)
    REFERENCES TNhanVien (MaNV)
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE 
;






-- End of file.

