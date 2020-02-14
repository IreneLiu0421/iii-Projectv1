-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 
-- 伺服器版本： 10.4.11-MariaDB
-- PHP 版本： 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `project`
--

-- --------------------------------------------------------

--
-- 資料表結構 `admin`
--

CREATE TABLE `admin` (
  `id` int(100) NOT NULL COMMENT '流水號',
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '資料庫權限帳號',
  `pwd` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '資料庫密碼',
  `created_at` datetime NOT NULL DEFAULT current_timestamp() COMMENT '創建時間',
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() COMMENT '更新時間'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `admin`
--

INSERT INTO `admin` (`id`, `username`, `pwd`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin', '2020-01-13 20:24:53', '2020-01-13 20:24:53');

-- --------------------------------------------------------

--
-- 資料表結構 `member`
--

CREATE TABLE `member` (
  `ID` varchar(3) CHARACTER SET utf8 NOT NULL,
  `Account` varchar(13) CHARACTER SET utf8 DEFAULT NULL,
  `Email` varchar(48) CHARACTER SET utf8 DEFAULT NULL,
  `Pwd` varchar(11) CHARACTER SET utf8 DEFAULT NULL,
  `AccountActivated` int(1) DEFAULT NULL,
  `Name` varchar(17) CHARACTER SET utf8 DEFAULT NULL,
  `Gender` int(1) DEFAULT NULL,
  `Birthday` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `PhoneNumber` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Address` varchar(35) CHARACTER SET utf8 DEFAULT NULL,
  `Blocked` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `Grade` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `Grade_Start` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Grade_Due` varchar(10) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `member`
--

INSERT INTO `member` (`ID`, `Account`, `Email`, `Pwd`, `AccountActivated`, `Name`, `Gender`, `Birthday`, `PhoneNumber`, `Address`, `Blocked`, `Grade`, `Grade_Start`, `Grade_Due`) VALUES
('001', 'Brady0507', 'nibh@Nam.com', 'Merk87nc552', 1, 'Brady Stanley', 1, '1994/12/28', '0901208666', '5724 Nulla. Ave', 'No', 'Yes', NULL, NULL),
('002', 'Nicholas1111', 'feugiat@Etiam.co.uk', 'Kmvu22sy942', 1, 'Nicholas Ferguson', 1, '1983/9/10', '0927600224', '434-5163 Porttitor Road', 'No', 'No', NULL, NULL),
('003', 'Eden5468', 'lacus.Nulla.tincidunt@tempuslorem.net', 'Siff46wg012', 1, 'Eden Irwin', 0, '2007/11/17', '0967188791', '7810 Sapien St.', 'Yes', 'Yes', NULL, NULL),
('004', 'Colton780', 'id.nunc@ideratEtiam.edu', 'Qcbf41nk269', 1, 'Colton Nicholson', 1, '2010/9/7', '0945386979', 'P.O. Box 138, 8133 A Avenue', 'No', 'No', NULL, NULL),
('005', 'Isabelle65437', 'pharetra@nasceturridiculusmus.co.uk', 'Vxyu89bk898', 1, 'Isabelle Jacobson', 1, '1963/10/22', '0999424728', 'Ap #935-8367 Cum St.', 'No', 'Yes', NULL, NULL),
('006', 'Kathleen89043', 'mauris@vitaeodio.org', 'Zbjb94qi123', 1, 'Kathleen Buck', 0, '1975/8/26', '0904214323', '7909 Malesuada Road', 'No', 'No', NULL, NULL),
('007', 'Boris56803', 'lobortis.Class.aptent@ac.co.uk', 'Ylkn38zj663', 1, 'Boris Diaz', 0, '1997/12/4', '0912900648', 'Ap #890-9940 Suspendisse Avenue', 'No', 'Yes', NULL, NULL),
('008', 'Xantha33', 'purus@Inmipede.org', 'Zsdx21ia304', 1, 'Xantha Bean', 1, '1975/8/7', '0902092983', '495-5505 Molestie Rd.', 'No', 'Yes', NULL, NULL),
('009', 'Ulla4455', 'ridiculus@turpis.net', 'Oazn40fi106', 1, 'Ulla Hodges', 1, '1991/6/29', '0981849035', 'Ap #581-819 Non, Ave', 'No', 'Yes', NULL, NULL),
('010', 'Sierra21', 'nisi.dictum.augue@commodotincidunt.net', 'Zdpz75wm568', 1, 'Sierra Palmer', 1, '1967/6/12', '0922039611', '998-344 In, Avenue', 'No', 'No', NULL, NULL),
('011', 'Michelle', 'Nulla@Fusce.edu', 'Sfix59aw163', 1, 'Michelle Ramirez', 0, '1963/9/29', '0975903708', '212-5577 Consectetuer Av.', 'No', 'Yes', NULL, NULL),
('012', 'Ralph45', 'Aenean@convallisantelectus.org', 'Tehs22hs346', 1, 'Ralph Lott', 1, '1967/12/6', '0932312010', '845 Ultrices St.', 'Yes', 'Yes', NULL, NULL),
('013', 'Devin00', 'urna.Ut@a.ca', 'Kmvy50vd594', 1, 'Devin Bradshaw', 1, '1977/9/23', '0980756070', 'Ap #183-415 Sit Av.', 'Yes', 'Yes', NULL, NULL),
('014', 'Kyla', 'sit.amet@loremDonecelementum.ca', 'Aiku19jx355', 1, 'Kyla Joyner', 1, '1992/9/1', '0953951377', 'Ap #602-5784 Dictum St.', 'No', 'Yes', NULL, NULL),
('015', 'Sierra', 'semper.pretium@ligulaNullamenim.org', 'Uqbq97qw565', 1, 'Sierra Ramsey', 0, '1998/9/21', '0922038504', '289-841 Eu Rd.', 'No', 'Yes', NULL, NULL),
('016', 'Julian567', 'Donec@primisinfaucibus.ca', 'Lddu96at852', 1, 'Julian Flores', 1, '1968/1/19', '0929003579', '8123 Augue Ave', 'Yes', 'Yes', NULL, NULL),
('017', 'Russell777', 'nascetur.ridiculus@libero.com', 'Ecdr81la038', 1, 'Russell Kennedy', 1, '1990/2/25', '0960315189', 'Ap #899-9709 Nibh. Street', 'Yes', 'Yes', NULL, NULL),
('018', 'Aiko99', 'augue.ac.ipsum@Donecfeugiatmetus.ca', 'Yooy27lu251', 1, 'Aiko Ramos', 0, '1986/10/25', '0920200069', 'P.O. Box 463, 9738 Et Rd.', 'No', 'No', NULL, NULL),
('019', 'Vielka', 'sodales@sedconsequat.org', 'Tqjx65jn278', 1, 'Vielka Beach', 0, '2008/7/19', '0930637539', '306-5098 Laoreet Road', 'Yes', 'No', NULL, NULL),
('020', 'Karleigh', 'molestie.pharetra@nec.ca', 'Nvis14jt525', 1, 'Karleigh Houston', 1, '1970/12/7', '0989893535', '3692 Nunc St.', 'No', 'No', NULL, NULL),
('021', 'Keely7986', 'sem@Aliquam.co.uk', 'Xlbj22jg504', 1, 'Keely Ross', 0, '1974/2/2', '0930557368', '9673 Malesuada St.', 'Yes', 'No', NULL, NULL),
('022', 'Aurora', 'augue@atpede.co.uk', 'Ylfo25bf967', 1, 'Aurora Figueroa', 1, '2008/2/14', '0946141594', '802-9209 Tempor, Av.', 'No', 'Yes', NULL, NULL),
('023', 'Leigh0894', 'Ut.tincidunt.orci@rhoncusNullamvelit.com', 'Oedy51za116', 1, 'Leigh Stout', 0, '1968/1/23', '0906057370', 'P.O. Box 541, 6412 Velit Av.', 'Yes', 'No', NULL, NULL),
('024', 'Basil', 'elit.elit@massalobortis.ca', 'Depl66he355', 1, 'Basil Galloway', 1, '1996/6/28', '0945421975', 'Ap #662-8812 Amet Ave', 'Yes', 'Yes', NULL, NULL),
('025', 'Lee157', 'eget.tincidunt@hendreritconsectetuercursus.co.uk', 'Ubof68ab592', 1, 'Lee Cherry', 1, '1983/9/13', '0906246615', 'Ap #870-4061 Purus Ave', 'Yes', 'Yes', NULL, NULL),
('026', 'Honorato', 'interdum.Nunc@Maurisblandit.ca', 'Nrnm93bm349', 1, 'Honorato Wiley', 0, '1976/3/31', '0957932366', '791-2253 Aliquet, Av.', 'No', 'No', NULL, NULL),
('027', 'Chancellor88', 'magna@condimentumDonec.edu', 'Vtmy82vv869', 1, 'Chancellor Campos', 1, '1973/8/2', '0983288305', 'Ap #839-6517 Placerat Street', 'No', 'No', NULL, NULL),
('028', 'Hu', 'vitae.sodales@magnaseddui.ca', 'Xwze03mb806', 1, 'Hu Mccarthy', 1, '1975/8/4', '0902561546', 'P.O. Box 940, 7217 Curabitur Street', 'No', 'Yes', NULL, NULL),
('029', 'Amy', 'arcu@orciPhasellus.com', 'Rzvv64zj740', 1, 'Amy Rogers', 0, '1984/2/15', '0975911053', '4677 Mi Street', 'Yes', 'No', NULL, NULL),
('030', 'Gil7115', 'velit.justo.nec@Nullam.edu', 'Wysg39gz851', 1, 'Gil Compton', 0, '1961/9/17', '0900284832', '331-7673 Sit St.', 'Yes', 'No', NULL, NULL),
('031', 'Herman', 'sed@pretiumneque.ca', 'Esca09yx024', 1, 'Herman Anthony', 1, '1980/8/1', '0947710239', 'Ap #856-9889 Aliquet, St.', 'Yes', 'No', NULL, NULL),
('032', 'Harrison', 'molestie@malesuadaaugue.org', 'Obar10my656', 1, 'Harrison Dale', 0, '1974/12/16', '0907540660', 'Ap #390-4764 Accumsan Road', 'Yes', 'No', NULL, NULL),
('033', 'Summer0876', 'Morbi.non.sapien@ultrices.co.uk', 'Timg04jh504', 1, 'Summer Estrada', 1, '1963/9/14', '0958242249', '6196 Ut, St.', 'No', 'No', NULL, NULL),
('034', 'Tatiana', 'Etiam.ligula@pharetrasedhendrerit.edu', 'Kncv61sg354', 1, 'Tatiana Chambers', 1, '1963/9/10', '0959626921', 'P.O. Box 584, 2411 Lectus St.', 'No', 'Yes', NULL, NULL),
('035', 'Candice0887', 'ac.facilisis@Aliquamtinciduntnunc.com', 'Aero53gg771', 1, 'Candice Burke', 0, '1974/7/19', '943988182', 'P.O. Box 140, 8387 Velit. Av.', 'No', 'No', NULL, NULL);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Account` (`Account`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
