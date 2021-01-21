-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 21, 2021 lúc 08:02 PM
-- Phiên bản máy phục vụ: 10.4.14-MariaDB
-- Phiên bản PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `quanlythuvien`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `account`
--

CREATE TABLE `account` (
  `id` int(11) NOT NULL,
  `username` text COLLATE utf8_unicode_ci NOT NULL,
  `password` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `account`
--

INSERT INTO `account` (`id`, `username`, `password`) VALUES
(2, 'admin', '123456');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dsbook`
--

CREATE TABLE `dsbook` (
  `id` int(11) NOT NULL,
  `namebook` varchar(150) DEFAULT NULL,
  `tacgia` varchar(500) DEFAULT NULL,
  `theloai` varchar(150) DEFAULT NULL,
  `soluong` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `dsbook`
--

INSERT INTO `dsbook` (`id`, `namebook`, `tacgia`, `theloai`, `soluong`) VALUES
(461, 'tấm cám', 'dân gian Việt Nam', '', '5'),
(462, 'cây tre trăm đốt', 'dân gian Việt Nam', '', '4');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dsdocgia`
--

CREATE TABLE `dsdocgia` (
  `masv` int(11) NOT NULL,
  `hoten` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `ngaysinh` date DEFAULT NULL,
  `gioitinh` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `noisinh` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `dsdocgia`
--

INSERT INTO `dsdocgia` (`masv`, `hoten`, `ngaysinh`, `gioitinh`, `noisinh`) VALUES
(2147483647, 'Trường', '2021-01-21', 'Nam', 'Bình Định');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `theloai`
--

CREATE TABLE `theloai` (
  `ID` int(11) NOT NULL,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `soluong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `theloai`
--

INSERT INTO `theloai` (`ID`, `name`, `soluong`) VALUES
(1, 'Truyện ngụ ngôn', 0),
(2, 'Truyện Tình Cảm', 0),
(3, 'Tiểu thuyết', 0),
(4, 'Truyện cổ tích', 5),
(5, 'Truyện ma', 3),
(6, 'Truyện dân gian', 3),
(16, 'Truyện hài hước', 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `dsbook`
--
ALTER TABLE `dsbook`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `dsdocgia`
--
ALTER TABLE `dsdocgia`
  ADD PRIMARY KEY (`masv`);

--
-- Chỉ mục cho bảng `theloai`
--
ALTER TABLE `theloai`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `account`
--
ALTER TABLE `account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `dsbook`
--
ALTER TABLE `dsbook`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=464;

--
-- AUTO_INCREMENT cho bảng `theloai`
--
ALTER TABLE `theloai`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
