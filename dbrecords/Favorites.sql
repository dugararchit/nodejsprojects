-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 21, 2020 at 03:52 PM
-- Server version: 5.7.31-0ubuntu0.18.04.1
-- PHP Version: 7.2.24-0ubuntu0.18.04.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zee5-axinom`
--

-- --------------------------------------------------------

--
-- Table structure for table `Favorites`
--

CREATE TABLE `Favorites` (
  `Id` varchar(255) NOT NULL,
  `UserId` varchar(255) DEFAULT NULL,
  `AssetId` varchar(255) DEFAULT NULL,
  `AssetType` varchar(255) DEFAULT NULL,
  `Duration` varchar(255) DEFAULT NULL,
  `Date` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Favorites`
--

INSERT INTO `Favorites` (`Id`, `UserId`, `AssetId`, `AssetType`, `Duration`, `Date`) VALUES
('001BA345-CCFE-4086-8D56-B0693412CF0A', 'A38EAF4F-8E06-40F2-8E53-00084721EEC5', '0-1-tvshow_1924109170-season_802209351-episode_1665423747', '1', '0', '2018-12-13T02:43:40Z'),
('0039A2DE-78CA-4AB2-9987-EBFF9E9E4AAB', '13562A29-6CD3-4E04-B10B-00018B64B64A', '0-1-phulpakhru-phulpakhruseason1-episode_1055626721', '1', '1265', '2018-05-24T12:36:09Z'),
('00D12F46-A060-40B2-BDC5-C13EED808C08', '75F81D04-66E2-4D55-8F5A-00058C01CC26', '0-0-8179', '0', '6965', '2019-06-25T02:01:15Z'),
('02D2F515-6957-411F-82BA-BA55E8E2406C', 'C87341BC-3EE7-4465-845E-00067B046A39', '0-1-thevoiceindiakidssea-thevoiceindiakidssea-episode_1902716891', '1', '3613', '2018-02-27T10:34:54Z'),
('03340DA3-F4A4-4798-AF10-A55C35A7A174', '66417612-E447-4502-B0FA-0008F68F4905', '0-1-tvshow_1603815665-season_1507499674-episode_84032608', '1', '1288', '2018-09-07T13:42:27Z'),
('0377085D-0439-4C26-9351-8877DAD5CCDD', 'DEE66757-42F2-40D7-A389-00080A5E5352', '0-1-141487', '1', '2809', '2018-09-30T18:30:00Z'),
('0389508F-397A-4ED4-9AC6-B28F3DF30345', '7A7FC4D4-3978-40AD-8439-000408D3EB2B', '0-1-254148', '1', '1246', '2019-08-13T06:51:20Z'),
('071EB640-81C7-4B8E-9B48-2ED8E8E7DCC9', '269CC1BB-22FA-4AEF-B80F-000337065214', '0-1-142099', '1', '1188', '2018-10-04T00:52:01Z'),
('0949BDA0-0C5D-4AAB-B613-12D0C37B1174', '75F81D04-66E2-4D55-8F5A-00058C01CC26', '0-0-movie_216980339', '0', '8260', '2019-06-25T02:00:54Z'),
('0CF29452-F868-41ED-8CBE-A16592868898', '880931C3-D393-4669-B717-000883BDC8DE', '0-1-154289', '1', '1320', '2018-05-11T11:41:06Z'),
('0E3BB6A7-26ED-4002-991A-CC53749E954F', '592F168A-18C2-4561-B104-0009404C90FA', '0-1-159011', '1', '2430', '2018-12-16T07:35:46Z'),
('124E9111-198C-4963-B495-C92AB17DBBD7', '40CA99CC-6EE9-4CF4-9E2D-0009BC4C1240', '0-1-tvshow_984782182-season_1914050019-episode_22434393', '1', '1290', '2018-07-17T03:22:55Z'),
('12D153DA-244F-4F4F-8C26-F93379748D8C', 'F91DD76C-A20B-4747-B1F7-00081184FADC', '0-1-kundalibhagya-kundalibhagyaseason1-episode_1531621014', '1', '1265', '2018-09-11T12:13:50Z'),
('12D3E7F0-B18C-4D98-8524-D00A916B7104', '13562A29-6CD3-4E04-B10B-00018B64B64A', '0-1-phulpakhru-phulpakhruseason1-episode_1001861919', '1', '1281', '2018-05-24T12:36:11Z'),
('13B18B0F-F947-4E7F-B3A9-493CDB62A93D', 'A341C8D8-FE3B-445A-8E33-0001BC3CBC1D', '0-1-214921', '1', '3844', '2019-09-24T11:53:29Z'),
('1597B5B9-F756-4F23-960E-690BF322F315', '9A158EF7-E0A8-4545-A04E-000325057182', '0-1-145829', '1', '0', '2019-05-10T10:26:08Z'),
('16FF2440-DC65-492D-BDF0-9078818E91AB', 'EAD72D81-916E-44F3-B993-000350DA7513', '0-0-movie_1059657261', '0', '1605', '2018-10-05T12:45:48Z'),
('19279475-C7A4-48B7-BAF4-0E30CAD4A97D', '726A75E7-9170-4010-B05B-000342E5C464', '0-1-239142', '1', '1243', '2019-07-10T12:27:12Z'),
('19918117-7A63-4E25-AFEF-C0E1DB515A1E', '592F168A-18C2-4561-B104-0009404C90FA', '0-1-253988', '1', '1179', '2019-08-13T05:52:38Z'),
('199B4BEB-EF8E-452D-A70C-D768829C69B6', '6FB9B3D4-F88B-499E-9268-00074F2D85C8', '0-1-162998', '1', '1223', '2018-12-28T08:09:20Z'),
('1DA66AD6-9FC5-441F-9BB4-1FFBAFCA7BED', '6CCC9269-33BC-401C-B12D-0000C9B8F858', '0-1-125872', '1', '2820', '2018-05-27T06:09:30Z'),
('1E0F1B96-A0E9-42F4-8B3A-03ACC0DA4DAE', '686FF38F-3896-4190-B011-00085D71BB01', '0-1-171140', '1', '4095', '2019-01-28T03:01:54Z'),
('1EE00B1E-607B-433E-B2C9-FB88E48C3929', '6776645C-A58C-4E07-A278-00038A74B018', '0-1-jamairaja-jamairajaseason1-episode_1286324488', '1', '200', '2018-10-14T16:49:59Z'),
('2472C6A9-E35A-43B4-832D-3308F7D64C56', '43C6EF88-2DA9-4EA3-A09A-0004D9297A58', '0-1-197235', '1', '1233', '2019-04-10T23:03:38Z'),
('2482177F-F8AB-460A-B62A-344A72EED65B', '21CCE834-AD6B-4ABB-9BC2-00064C1282D7', '0-0-2461', '0', '8400', '2018-10-08T03:44:54Z'),
('250575D7-9604-45B5-B58E-69314E604872', '690E5317-7008-4057-9236-000163E79BA1', '0-1-aisideewangidekhinah-aisideewangidekhinah-episode_2041327116', '1', '1254', '2018-10-30T05:00:41Z'),
('267EE9E4-8248-4D1F-9401-6ABCCF320863', 'CD73A427-53DE-4658-9D2B-0002E9D7DF2C', '0-1-manual_3defnof4perg', '1', '2479', '2020-01-06T03:21:25Z'),
('27213ACD-49EE-464F-89D9-3B9D1AA5517C', '6CF305EB-C9A4-40EA-BED8-00006BDC3183', '0-0-2529', '0', '9312', '2018-10-08T02:37:31Z'),
('28D8C5D1-00AB-47A9-B455-6F1342988681', '40CA99CC-6EE9-4CF4-9E2D-0009BC4C1240', '0-1-tvshow_984782182-season_1914050019-episode_2021379158', '1', '1193', '2018-07-17T03:22:51Z'),
('2A6AFB47-F03B-4D6C-9225-14B24605A463', '8E85C89C-DDEA-460B-8030-000659AA674D', '0-1-84994', '1', '1500', '2018-08-10T00:19:20Z'),
('2B1531DA-D752-4146-A89E-EDC6A6DA9E3D', 'CD73A427-53DE-4658-9D2B-0002E9D7DF2C', '0-1-manual_2pkdljh96bjg', '1', '2575', '2020-01-06T05:28:26Z'),
('2B6344FF-A96A-4122-8F98-9411D823392E', '50E551AA-4833-48CB-B7BA-0008443773E6', '0-0-16663', '0', '8884', '2019-09-22T09:38:08Z'),
('2FE7DF74-EE8E-4F7A-B37D-39C0BA1CD74B', 'C87341BC-3EE7-4465-845E-00067B046A39', '0-1-thevoiceindiakidssea-thevoiceindiakidssea-episode_1172840567', '1', '3238', '2018-02-27T10:35:14Z'),
('335B9941-9DB6-4C03-AAB6-8BCDCE210011', '880931C3-D393-4669-B717-000883BDC8DE', '0-1-154283', '1', '1320', '2018-05-11T11:41:25Z'),
('3504962A-2239-48B9-819C-55F6C2EDA67E', '2EAA0966-FD21-4385-87D3-00018E02C096', '0-1-lagirazhalajee-lagirazhalajeeseason-episode_101348033', '1', '1800', '2018-08-13T04:20:40Z'),
('353B5BE2-4689-46F7-B8FB-64C59154287A', 'F18433C7-4339-4E0D-BE89-00050B7744B9', '0-1-142054', '1', '1166', '2018-10-02T18:30:00Z'),
('35B40A9C-0BDA-4E30-9A26-9D8E00788039', '3F11D2DE-2353-4DE6-923B-00051A67005D', '0-0-maisammaips', '0', '8880', '2018-10-29T08:42:48Z'),
('36FFA9E9-62C1-4C08-8E28-1C29CF664D50', '2D2784D1-7018-457B-B792-00037991BF82', '0-1-olimayamanaethirkala-olimayamanaethirkala-episode_2123335952', '1', '300', '2018-10-28T00:44:51Z'),
('38D1D4BE-2232-4D78-BA40-2654CAE6A3EB', '508550B1-61D9-4D35-AF1C-00045F11BB86', '0-0-movie_1161657390', '0', '196', '2018-02-20T23:13:18Z'),
('390238AC-BB1F-4348-A77F-3752AFD7B3ED', 'C2FCA69D-DEDA-4161-8B55-00010587DAA5', '0-0-2385', '0', '0', '2018-03-03T05:07:52Z'),
('3AED9A80-35DD-4B7A-8F61-9881859C7446', '6CCC9269-33BC-401C-B12D-0000C9B8F858', '0-0-movie_536724205', '0', '5147', '2018-05-19T02:29:34Z'),
('3CA96A6B-E905-407C-B7E0-9D4D850E8985', '6FB9B3D4-F88B-499E-9268-00074F2D85C8', '0-1-162866', '1', '1012', '2018-12-28T08:09:11Z'),
('401348E3-2ED5-4F4A-B077-136CCA128FAD', '9059AC5F-1CA1-4040-B39B-0001201EFF91', '0-1-mazhyanavryachibayko-mazhyanavryachibayko-episode_1058814095', '1', '1219', '2018-08-15T13:53:12Z'),
('43825E3E-E61F-4893-A3FC-1A8C8B4F74AC', 'A4DF840D-8322-48D2-8DEF-00027A6D7290', '0-1-11575', '1', '1320', '2019-03-07T12:31:01Z'),
('438DE280-B602-48C7-B4A2-29E4905967DC', '8EAF7A3C-CB93-4CC7-A346-0000BA538AD8', '0-1-361483', '1', '1893', '2020-05-16T03:51:14Z'),
('44D170AC-A139-4AF4-9E1D-9026AE93A170', '968C7E2C-4E7A-4B38-A3F6-0003E6C96413', '0-0-7366', '0', '7926', '2019-09-13T14:45:49Z'),
('44E6FB5F-EAA2-41A2-A472-7EE14E1A4D8F', 'C5DACF83-B04E-4583-8133-000034FAFD12', '0-1-manual_5figt92s0l70', '1', '1144', '2019-12-27T07:21:05Z'),
('44FD5A36-39F8-44FC-8710-8A5F80543F84', '60FC7B76-3BFE-410E-A02E-0001D7B7BEB2', '0-1-157659', '1', '1266', '2018-12-11T09:01:17Z'),
('4551E2D0-47B8-4C63-8B4E-E4B53CDB70D0', 'F0FDC3FB-8862-4C1A-99EC-0006EF6F53D2', '0-0-eddelumanjunatha', '0', '7840', '2018-04-02T22:48:26Z'),
('45DE0443-94FF-4A4B-A16C-778CEFF4ECC8', '8E5934A2-8BA8-4F01-A47F-000639CF399E', '0-1-ishqsubhanallah-season1_829433854-episode_1638811074', '1', '0', '2018-10-11T10:40:15Z'),
('489C5F27-DE69-4C0A-A262-508E064FBA62', 'F87EEFA1-63B0-4346-BD33-00012628AD2D', '0-0-movie_1733869198', '0', '1955', '2018-07-09T11:21:43Z'),
('498EC839-A935-4E85-B25A-37E876AE09DC', '2A32A7E9-4990-489C-8AAB-000994A23CF1', '0-1-166958', '1', '1056', '2019-01-14T03:30:14Z'),
('4B0FBD17-481F-40CE-91EA-53ED92F22BC5', '1ECFF4B5-9A90-4F07-97DC-000597AF0BAD', '0-0-onetwothree', '0', '7881', '2020-04-16T05:28:35Z'),
('4B3EACCA-293E-423E-BDBF-1F00B8BD0957', 'C2FCA69D-DEDA-4161-8B55-00010587DAA5', '0-0-movie_1827683550', '0', '0', '2018-03-17T16:22:52Z'),
('4C447FF4-81FE-48F7-85C2-9EE1E4D4B26B', 'EE5A6B89-06CF-4B9A-8C5D-00081B4F3FF2', '0-0-35166', '0', '9147', '2019-03-21T10:38:01Z'),
('4C4BF08A-334C-4973-ACF1-2F9204ADDDF5', 'C87341BC-3EE7-4465-845E-00067B046A39', '0-1-thevoiceindiakidssea-thevoiceindiakidssea-episode_2095348873', '1', '2793', '2018-02-27T10:35:03Z'),
('4F2E1D7F-B6E3-4150-9DE2-9932A5F8E89A', '345AAA82-0C30-45A1-8801-000239695534', '0-0-7158', '0', '4507', '2019-01-23T11:41:18Z'),
('50ECFB00-EF2C-46EE-B6D2-08714D99084B', 'D61AFCFC-8BE9-4673-AB83-0005592C82BB', '0-1-saatbhaichampa-saatbhaichampaseason-episode_1478973905', '1', '1529', '2018-04-07T05:03:54Z'),
('52E9D143-3BAA-4E7A-8194-138166AEF11A', '99B1186E-92C1-40F1-8BDB-0002BBCC86BE', '0-0-2418', '0', '7897', '2019-02-25T11:07:42Z'),
('5413E15B-445F-4B5A-BB84-81550F450A0D', 'BD9955AD-251E-44D5-AD9B-000376B57C78', '0-0-32840', '0', '0', '2019-04-23T07:04:18Z'),
('5654F741-1C26-48EB-A222-E6B4FA77209E', '3C94687E-B2AF-4D69-85FA-000088E79623', '0-1-86444', '1', '2760', '2018-08-30T14:08:17Z'),
('57C1B2FB-CF2B-49C1-8F5B-858F62EFBF24', 'A48272E3-60A7-4BBF-91F8-00005444323F', '0-0-boom', '0', '6566', '2019-02-08T14:30:32Z'),
('59261AEA-D8AC-4104-AEF3-5EB1B95320BF', 'A38EAF4F-8E06-40F2-8E53-00084721EEC5', '0-0-movie_216980339', '0', '0', '2019-01-02T11:08:29Z'),
('5A34BB8A-B68F-4798-A3A2-A9BEC283D95A', '43277C33-8BEB-438B-A1A5-00084D6AF71C', '0-1-146328', '1', '1246', '2018-10-23T17:22:13Z'),
('5BAE5069-0E5B-4EA5-9A50-ACE11EF156B8', 'B1BB374A-2A39-4D85-9EDE-00096A02FC1C', '0-0-2464', '0', '5520', '2018-09-12T05:54:25Z'),
('5C23B6FF-B979-423D-898B-CEBF43A4E920', '416AB63F-CFF2-4764-86EB-00003CF9EA68', '0-1-142947', '1', '0', '2018-10-06T19:11:30Z'),
('6001073A-E462-45DB-AE83-C9913F924CB7', '13562A29-6CD3-4E04-B10B-00018B64B64A', '0-1-phulpakhru-phulpakhruseason1-episode_1867137655', '1', '1277', '2018-05-24T12:36:13Z'),
('6132AB7B-AFEF-44FB-B86C-DC77D5EDF870', '1312E6DE-58A9-4982-88A2-00035F4B4BFA', '0-0-103999', '0', '10853', '2019-12-22T05:15:11Z'),
('6178AF99-88D5-4CAC-B111-827232075E1D', '6D7E81AC-0169-4587-BE2E-0003C54B11F2', '0-1-166758', '1', '1242', '2019-01-14T10:44:49Z'),
('6251CFB8-E630-492F-A159-EED2D721A16C', 'A38EAF4F-8E06-40F2-8E53-00084721EEC5', '0-1-158725', '1', '0', '2018-12-14T05:41:39Z'),
('63A79B71-BF4C-45C1-B04A-95FEDF4DFB6E', '5ED81E8B-A8D5-47F6-9658-00082513FB36', '0-1-144308', '1', '0', '2018-10-13T10:20:26Z'),
('6462D4C9-A7AB-4A15-9409-DCD29CF63358', '01F45F63-F0EE-4C37-AA07-0005218F6349', '0-1-177079', '1', '0', '2019-02-18T10:16:57Z'),
('64999EC8-62E9-47A7-9B79-7585091CCC62', 'A38EAF4F-8E06-40F2-8E53-00084721EEC5', '0-1-158982', '1', '0', '2018-12-14T16:49:34Z'),
('66C28FE2-2E78-42D1-BEF1-F3337603856B', '50E551AA-4833-48CB-B7BA-0008443773E6', '0-0-thanikatturaja', '0', '9180', '2019-07-14T06:21:51Z'),
('6B918130-72C9-4EF3-9D0E-2556164E746A', '4ACB71AC-54EB-4538-9F0C-00069C912694', '0-1-tvshow_984782182-season_1914050019-episode_209216670', '1', '0', '2018-08-31T17:37:54Z'),
('6C89B7A5-A9A5-4D20-B6E4-120028CB5EAA', '0E75D616-92C6-48A6-A8FA-0006A6E42590', '0-1-oruorlaorurajakumari-oruorlaorurajakumari-episode_1834647517', '1', '0', '2018-06-21T17:04:18Z'),
('6D40BB06-E34D-4DD1-B65D-F6003104D418', 'F455D81D-A5DB-4A63-A7EF-0001730C7EB8', '0-1-manual_2vgptldckj1g', '1', '1227', '2019-11-14T09:28:05Z'),
('6D558665-073B-4452-86AB-E373E090117D', '880931C3-D393-4669-B717-000883BDC8DE', '0-1-154292', '1', '1380', '2018-05-11T11:40:57Z'),
('6E6A0BA6-4E9A-4E17-B4A7-2FD13A8A2187', '082154B3-4F4C-48C5-BE1B-0001204D0B5E', '0-0-movie_1094384494', '0', '6698', '2018-08-23T02:44:59Z'),
('6EEF1D8B-CD5A-4BBF-B8AD-93EDF609191E', 'B347A14D-722A-4F91-8564-0000532152A8', '0-0-partner', '0', '8202', '2019-10-07T21:11:20Z'),
('70C80859-2EFC-437D-AF46-539301004F1D', 'A48272E3-60A7-4BBF-91F8-00005444323F', '0-0-18863', '0', '8427', '2019-02-10T08:35:03Z'),
('7227722C-20D7-44BB-B698-5ACAB220817A', '8A0B029A-D8DE-4608-8464-0004E0E1764A', '0-0-movie_772355790', '0', '8504', '2018-06-19T19:49:05Z'),
('7288E571-AD8B-4265-BCFC-8F69481880E0', 'C4E3AEAC-1331-49B0-BEC1-0006030B8CE6', '0-1-fearfiles2017-fearfiles2017season1-episode_2083496802', '1', '2542', '2018-09-10T06:04:28Z'),
('7A820B48-B083-40B4-8C06-2587FB3D871D', '8A0B029A-D8DE-4608-8464-0004E0E1764A', '0-1-saregamap_1253935745-saregamap_1132196232-episode_1770230134', '1', '0', '2018-05-25T00:06:13Z'),
('7D4E76FB-80B1-4C03-8DB1-3CB466BE9225', '881D08D9-01F2-4AD7-9241-0003FE9CCB90', '0-1-86415', '1', '2760', '2018-06-29T20:59:25Z'),
('7DCF21C3-F3D2-45F9-A14D-A65231A1183A', 'BFEC219A-5A57-462D-8BB8-00091E4F401B', '0-1-154129', '1', '1800', '2018-12-23T22:10:02Z'),
('7ED1F740-B12D-4D73-83FD-DB87D311991E', 'B485E25B-C8B3-41AD-BAFC-00022D082603', '0-1-jodihakki-jodihakkiseason1-episode_450854529', '1', '1187', '2018-07-11T10:34:50Z'),
('7F88E594-7CCA-4D4D-9860-9D302769611F', 'C056A30A-C5BD-4F0C-A3B6-0003BF44B2D3', '0-1-148740', '1', '1173', '2018-11-02T09:40:08Z'),
('800BB9D0-C1AA-4CC8-A801-477BA86E264C', 'C28DB280-F90A-4039-BD07-0000A85AD4B3', '0-1-147459', '1', '11069', '2018-11-28T11:09:08Z'),
('8270B7D0-6106-42F1-A89B-CF0B2E6ACAF7', 'CD73A427-53DE-4658-9D2B-0002E9D7DF2C', '0-1-manual_2m9ecve79ah0', '1', '2447', '2020-01-06T05:28:57Z'),
('82F50860-3254-4B26-95DA-7D3CE6E546D9', 'CE2DC96B-52DF-45A4-A088-00048CA1A4D3', '0-0-19909', '0', '9941', '2019-01-20T01:32:49Z'),
('8407B7C7-FAFB-4463-B32A-68C583837331', '168D17C4-1AE0-4029-9679-000516300737', '0-1-158236', '1', '1310', '2018-12-11T18:30:00Z'),
('85ABF142-A6AF-4039-BE17-E37B9C0E4CC9', '2BBC0AAA-C0A9-43E1-8134-0004727750A8', '0-1-manual_5bvmu60gr8u0', '1', '1233', '2020-07-16T08:57:18Z'),
('86450DDE-B4A6-429B-84B0-FD664155D656', '561E52A3-4EB8-41C9-B23E-0008592EA766', '0-0-51732', '0', '9010', '2020-02-02T07:31:12Z'),
('871B4D74-1FCF-4945-91C4-26F59C86AB9C', '7ABB4412-587E-462B-809C-0007C77B52E6', '0-1-manual_155frr4493cg', '1', '1255', '2019-10-29T01:48:25Z'),
('881B7976-A9B1-41D2-9E5B-EBC9BE00B86E', 'E316ECCC-A4EE-4C8C-A4FD-0001F2170E91', '0-0-22261', '0', '8932', '2019-03-05T04:08:53Z'),
('885A24DA-1784-44F6-9130-4637520768F2', 'D6037F2E-4541-4952-85B5-000456B134DA', '0-1-250506', '1', '1222', '2019-08-04T18:30:00Z'),
('8906F657-CB2F-449C-875B-69CDDA3768FD', 'A93AFCD3-7EF3-4841-AE25-00062ECE28CD', '0-0-81395', '0', '8399', '2019-09-18T07:11:12Z'),
('8998CDAF-A3D5-42EB-B85A-1E4631FA5DF6', 'EE5A6B89-06CF-4B9A-8C5D-00081B4F3FF2', '0-0-27132', '0', '6829', '2019-02-24T03:52:13Z'),
('89F00731-E041-40CF-B399-E6676CE50C0F', 'D58B9D55-C3BF-4D01-8787-000685A20E3E', '0-1-79929', '1', '0', '2019-09-27T10:43:49Z'),
('8A211C0B-7B3A-4FE3-83BC-70CCAFCC70AB', 'E58F2D32-5577-4C64-A762-0009A957B2F1', '0-1-11315', '1', '1320', '2018-03-08T09:21:00Z'),
('8BAEA1D6-1F04-4FE5-B063-69D1C695D3A7', '7FE2557E-1F76-4D3D-BF1C-0000CAF3D9EC', '0-0-partner', '0', '8202', '2018-11-26T01:12:08Z'),
('8C4668F1-2931-4F2C-8AE6-CDDF3A9971BE', '1410ED6F-5BE5-4808-A656-0008EE3F0687', '0-1-254532', '1', '1291', '2019-08-13T09:30:15Z'),
('8CF04B5A-1E37-40AF-A990-78FAA4C30DBA', '6FB9B3D4-F88B-499E-9268-00074F2D85C8', '0-1-163014', '1', '1189', '2018-12-28T08:09:22Z'),
('8D2C6F1C-55C7-4A34-87D3-3DA5197A390B', '80150258-4B1D-43F6-B52E-00083A3BEFD3', '0-1-swarajyarakshaksambh-swarajyarakshaksambh-episode_639971263', '1', '1190', '2018-07-16T07:43:43Z'),
('8D68E376-EDE3-468D-B1DD-8A0EF96305DA', '3BF0DC93-8132-4B25-B90B-0008882288DA', '0-0-34667', '0', '5592', '2019-07-06T01:01:13Z'),
('8DBFB460-0892-4FD7-9339-19C409ECF3FC', '93E04A2C-F12B-4132-A319-0005BBC263FB', '0-0-141837', '0', '6959', '2020-04-01T00:31:31Z'),
('8FB0481F-1596-43BC-A2F9-FBD3AAFA68F1', '89C87DD8-283C-45D2-A224-0000013F9C6C', '0-1-35074', '1', '1800', '2018-01-12T11:00:34Z'),
('8FB0481F-1596-43BC-A2F9-FBD3AAFA68F1-test', '89C87DD8-283C-45D2-A224-0000013F9C6C-test', '0-1-35074-test', '1', '1800', '2020-09-21 15:21:59'),
('90016F31-775F-4B17-9BFB-0857322E8D8F', '66417612-E447-4502-B0FA-0008F68F4905', '0-1-tvshow_1603815665-season_1507499674-episode_284103238', '1', '1490', '2018-09-07T13:47:09Z'),
('9349A171-9CAD-409A-A832-B5779F45925D', '93E04A2C-F12B-4132-A319-0005BBC263FB', '0-0-18554', '0', '5704', '2020-04-01T00:31:15Z'),
('93678CEE-186F-4F08-A8CA-8985C9B2E90B', '65F21905-1DD9-4F3C-875A-0008A41A3EEB', '0-1-lifesahihai2-lifesahihaiseason2-episode_856758406', '1', '1285', '2018-02-22T17:15:07Z'),
('9450D392-A273-4887-8F62-D035C0BF6499', '14BB98BB-27BC-4C3D-AE85-000207E83E86', '0-1-tvshow_312127630-season_1530343440-episode_1883773887', '1', '1258', '2018-09-02T12:46:05Z'),
('96E27CA6-EF97-43B4-9533-44BE1AE5936C', 'A12467A2-F101-412D-94AE-0002D2D2C4F6', '0-1-highfever…dancekanay-season1_1147986774-episode_108547495', '1', '3093', '2018-06-19T06:21:33Z'),
('98A35824-CB6C-4AE6-AE23-0E13079A0F49', '99B1186E-92C1-40F1-8BDB-0002BBCC86BE', '0-0-19151', '0', '7963', '2019-02-28T11:25:48Z'),
('9AD2E93F-D16B-4371-8192-D1617D15FFE5', '6FB9B3D4-F88B-499E-9268-00074F2D85C8', '0-1-162791', '1', '1182', '2018-12-28T08:09:41Z'),
('9B635791-B73B-4B24-863E-9F3C609E3283', 'CDDCC124-E44F-499B-8247-0008A1211EF0', '0-1-287593', '1', '2607', '2020-01-03T04:00:40Z'),
('9C56CEAC-449F-47B4-8B87-AB5849F30A70', '43277C33-8BEB-438B-A1A5-00084D6AF71C', '0-1-173837', '1', '1227', '2019-02-06T09:20:39Z'),
('9DD4B7B2-141C-4565-84BA-32DB826C48FF', '87498ECB-85C3-4F04-ADA6-0003A8FCB903', '0-1-111581', '1', '21', '2018-09-07T06:57:14Z'),
('9F26A477-B71E-4438-B125-11A20842085A', '7875150E-BDE2-4BAA-B954-0004276601ED', '0-1-254139', '1', '1238', '2019-09-06T05:02:58Z'),
('A091ADF3-F743-40F6-91BF-FD8DE669F466', '9C106F60-3947-48FF-B161-0000D6AAE30B', '0-1-173324', '1', '1219', '2019-02-05T02:43:46Z'),
('A0963298-1DA9-44F0-B5FB-F350CABBA2F8', '09CB4EC7-8931-4B8F-B09F-0008735172D2', '0-1-jodhaakba_2026576345-jodhaakbarse_7167660-episode_99785441', '1', '2453', '2018-10-30T10:18:22Z'),
('A33B9DFB-E77D-4597-B7D0-F77FC485A940', '76965BA7-9A54-4CB8-9501-000022879E51', '0-1-244155', '1', '1341', '2019-07-24T23:56:04Z'),
('A3957E01-5F88-4EEB-BD86-A327FFDA92EA', '686FF38F-3896-4190-B011-00085D71BB01', '0-1-kaleerein-kaleereinseason1-episode_871995326', '1', '1290', '2018-07-11T10:55:55Z'),
('A5E0E827-A157-4B6F-B024-F0B6BCCFD430', '40CA99CC-6EE9-4CF4-9E2D-0009BC4C1240', '0-1-tvshow_984782182-season_1914050019-episode_1866711843', '1', '1479', '2018-07-17T03:22:49Z'),
('A63869C7-19C2-4297-BFC8-2856E7D63377', '273AA5EE-0275-4EE3-9FF8-0006B1A7A5F2', '0-1-157794', '1', '1186', '2018-12-11T22:03:30Z'),
('A6A84BEB-FF92-407F-86DE-6D00FFB3D590', '726A75E7-9170-4010-B05B-000342E5C464', '0-1-238681', '1', '1228', '2019-07-09T19:41:47Z'),
('A8C19447-7D77-4A2B-9513-6A74CDD0FA40', '1C3A04D6-C520-4ADD-8EA5-000994A727AC', '0-1-seemarekha-seemarekhaseason1-episode_64010904', '1', '1245', '2018-07-24T00:26:38Z'),
('A9600227-98BC-4046-9DF9-983C2FEA61D9', '43277C33-8BEB-438B-A1A5-00084D6AF71C', '0-1-176794', '1', '1225', '2019-02-15T05:13:22Z'),
('AA29F0DC-6925-4A80-A2D8-D95BA456EEC7', '2BD4537A-BA46-4AF1-8322-00015E138323', '0-0-paglakahinka', '0', '8377', '2018-10-29T18:09:24Z'),
('AE8E77D5-E775-4A3A-BA01-DA2ADBD8A570', '4ACB71AC-54EB-4538-9F0C-00069C912694', '0-0-movie_1279925543', '0', '0', '2018-08-17T17:07:49Z'),
('B0489BCB-F4B3-459A-B0B6-40328504E5C9', 'A45B7B37-D4E1-467F-908D-00077EDFDB28', '0-1-171485', '1', '2608', '2019-02-11T16:23:27Z'),
('B065509C-AB71-464B-9229-51DDD31133EB', '93E04A2C-F12B-4132-A319-0005BBC263FB', '0-0-70921', '0', '6265', '2020-04-01T00:30:25Z'),
('B1B279D5-E80A-43FE-A88F-DA3AFB50C9EC', '690E5317-7008-4057-9236-000163E79BA1', '0-1-kundalibhagya-kundalibhagyaseason1-episode_895112565', '1', '1247', '2018-10-16T08:50:52Z'),
('B2C8366D-F85F-474A-ACA2-4CC8857F7F25', '6FB9B3D4-F88B-499E-9268-00074F2D85C8', '0-1-162720', '1', '1269', '2018-12-28T08:09:56Z'),
('B348654A-FCF3-4F5C-8A72-661EF669BF55', '880931C3-D393-4669-B717-000883BDC8DE', '0-1-154294', '1', '1800', '2018-05-11T11:40:47Z'),
('B3DA73C9-B0B4-44F7-8368-C53C57FC91C8', '54AC3643-9543-4C64-B085-0000530A5EC3', '0-0-movie_1186466992', '0', '9405', '2018-10-13T06:58:45Z'),
('B6DED028-F79C-4CE3-947E-B2C9E3D653ED', '224711AA-322A-429B-8581-000477D26287', '0-0-2481', '0', '7096', '2018-07-27T16:24:27Z'),
('B9DF9142-D52D-4A91-A764-3F699538F62E', '880931C3-D393-4669-B717-000883BDC8DE', '0-1-154288', '1', '1320', '2018-05-11T11:41:08Z'),
('BBF4A5BE-49B8-461D-8EF0-BDAAB91DA228', '8E5934A2-8BA8-4F01-A47F-000639CF399E', '0-1-kumkumbhagya-kumkumbhagyaseason1-episode_37446680', '1', '0', '2018-10-10T13:34:49Z'),
('BC2BEDA1-5C67-4DBB-894B-0BD792B14973', '2F0B393F-CFB7-47CA-9A3D-00032A35AF6A', '0-1-264204', '1', '1680', '2019-09-11T03:52:30Z'),
('BD31C2FA-27BB-4399-AA0F-28FCA7512012', 'A38EAF4F-8E06-40F2-8E53-00084721EEC5', '0-1-156437', '1', '0', '2018-12-09T06:46:42Z'),
('BD604C7A-9DFD-4038-A5AA-AF24202B1AC5', 'F7BA0406-7207-4711-9035-000077078ACA', '0-0-6728', '0', '8079', '2018-08-02T18:30:00Z'),
('BDE184DD-49CA-412D-8B2A-0981DFD3BEAD', 'E2F1C2EC-637D-4BB0-AC81-00009A44A284', '0-1-144307', '1', '1223', '2018-10-12T13:17:32Z'),
('BEB7E5A8-4142-4A7C-BD7A-AF61201E444F', '05FC5158-2B92-4023-BCB7-00047C5B3AE7', '0-1-202524', '1', '1320', '2018-05-16T05:32:54Z'),
('BF1A013B-F2C5-419B-B276-2C349D079EAB', '880931C3-D393-4669-B717-000883BDC8DE', '0-1-154293', '1', '1800', '2018-05-11T11:40:51Z'),
('C2A0C433-6745-4826-8314-5DFC105079FC', '880931C3-D393-4669-B717-000883BDC8DE', '0-1-154290', '1', '1320', '2018-05-11T11:41:05Z'),
('C2BB8692-AF7A-4E01-8F02-220C6D394E0F', '89F490FB-4017-4A21-A582-00049951D3B5', '0-1-chalahawayeudya2018-season4_469363898-episode_644176239', '1', '0', '2018-05-15T21:37:04Z'),
('C3F00F39-592A-435E-87E7-4C2E9299D4D2', '9A158EF7-E0A8-4545-A04E-000325057182', '0-0-2701', '0', '9480', '2019-05-10T05:31:13Z'),
('C4CB6B08-A74A-4C84-A82E-AE8CDC0E5F85', '880931C3-D393-4669-B717-000883BDC8DE', '0-1-154287', '1', '1320', '2018-05-11T11:41:14Z'),
('C4DBBD99-9895-4173-A719-C86D722E9D8A', 'B4E9BFD9-C4C6-4E5B-940B-0005DA537AA6', '0-1-337730', '1', '1877', '2020-03-16T01:08:49Z'),
('C523DE3F-3FD1-470C-B2B0-AD07E804E1B0', '2BBC0AAA-C0A9-43E1-8134-0004727750A8', '0-1-manual_uld8csq08f80', '1', '908', '2020-07-16T08:57:15Z'),
('C83F8508-CBE9-4ED3-93D1-6EE467A9FBC2', '6FB9B3D4-F88B-499E-9268-00074F2D85C8', '0-1-163025', '1', '1168', '2018-12-28T08:09:26Z'),
('C993CD84-B197-461D-9F05-4846D46C8FF3', '144F8D91-04E2-4D2C-9876-0005E1A01C63', '0-1-136611', '1', '2597', '2019-04-17T09:02:10Z'),
('C99A818A-9A4E-43E1-98A9-47D1C611B787', '6FB9B3D4-F88B-499E-9268-00074F2D85C8', '0-1-163010', '1', '1170', '2018-12-28T08:09:06Z'),
('C9E8D34E-38EB-4020-9AB9-352000738A32', '497D50F5-0FD2-4295-8E2D-00098DA24D12', '0-1-157382', '1', '1147', '2018-12-10T01:52:48Z'),
('CD3B2FEC-8BB4-46AF-85FF-FDBE72BBD1D9', '9C106F60-3947-48FF-B161-0000D6AAE30B', '0-1-173387', '1', '1264', '2019-02-05T02:43:25Z'),
('CDAE37F2-AEA0-4F25-AF53-74B0249B751E', '175DC196-EAD8-42E7-8892-0004422C2BB8', '0-1-phulpakhru-phulpakhruseason1-episode_566695545', '1', '5249', '2018-08-15T13:03:48Z'),
('CE82A5C1-C0AF-44E4-8B92-DBE27D918427', '62D480C9-CDC2-4F96-8F2D-0005E37475F7', '0-1-phulpakhru-phulpakhruseason1-episode_1556232233', '1', '1273', '2018-06-11T14:01:17Z'),
('CFB1A00F-C962-469E-8949-2EE35BD29496', '6FB9B3D4-F88B-499E-9268-00074F2D85C8', '0-1-162879', '1', '1226', '2018-12-28T08:09:16Z'),
('D0E68770-D384-4E0E-A881-9FE63735FD30', 'E0F602D0-FC37-4463-BD24-00066056AFEE', '0-0-movie_772355790', '0', '8504', '2019-03-15T10:33:36Z'),
('D2291AEC-7406-4217-9DB3-2D1455D53ABF', '580AEE91-4DD6-4C4C-B607-000768829A39', '0-1-107379', '1', '1260', '2018-07-05T21:14:37Z'),
('D2426CBB-DEDD-4F1A-A448-5BBC07090330', 'F1E73633-2BDF-4B19-B35F-0007AFEDF783', '0-0-movie_2049436616', '0', '360', '2018-10-25T16:19:22Z'),
('D2A1FB0A-0F1E-48DE-9A1F-EE62A57A3276', '40CA99CC-6EE9-4CF4-9E2D-0009BC4C1240', '0-1-tvshow_984782182-season_1914050019-episode_1966073550', '1', '0', '2018-07-17T03:23:05Z'),
('D4233F3D-2DA5-4A30-8706-2AF2A6133DDC', '6FB9B3D4-F88B-499E-9268-00074F2D85C8', '0-1-162604', '1', '1185', '2018-12-28T08:09:48Z'),
('D50E497D-60A8-4AC6-82DB-3891AC37F4C5', '506584C8-6D41-4437-8F36-000295A65D99', '0-1-tvshow_1581154209-season_1773786191-episode_658792011', '1', '1233', '2018-10-01T10:06:02Z'),
('D638D22F-5A81-41B2-A6AD-D83B31FC50BC', '39F0D26D-D38D-44B7-9EC7-0003A6F553F6', '0-0-movie_971267363', '0', '35', '2018-10-13T01:51:24Z'),
('D6F9EA22-B50B-404D-8455-DA52D574BAF8', '93E04A2C-F12B-4132-A319-0005BBC263FB', '0-0-84939', '0', '7616', '2020-04-01T00:30:18Z'),
('D960C1D7-50E9-40C5-9F89-B5F7DB8706EA', '93E04A2C-F12B-4132-A319-0005BBC263FB', '0-0-90827', '0', '9022', '2020-04-01T00:30:06Z'),
('D9D4F1F1-766B-4E26-A041-7F9061C20C75', 'C30CD6A2-5578-485A-B3FA-0002B72DFFAD', '0-1-242312', '1', '1235', '2019-07-19T06:30:20Z'),
('DB04B469-67C5-4A1D-9E3F-9991C1D9DA37', '880931C3-D393-4669-B717-000883BDC8DE', '0-1-154295', '1', '1800', '2018-05-11T11:40:43Z'),
('DD4235E0-9FCE-446A-B5D0-FD251445A282', '956C9DED-9577-490E-98F8-0003565F239D', '0-1-jodhaakbar-jodhaakbarseason1-episode_1524264728', '1', '2524', '2018-10-15T23:18:05Z'),
('DE423947-4334-4465-B9BB-9AEBD66DFACC', 'B07037D4-0315-47E2-8FF2-0005D11CAAB2', '0-1-danceindiadance2017-danceindiadance2017s-episode_539729977', '1', '9041', '2018-03-03T07:41:57Z'),
('DE6EC812-F48F-4FC2-A5D8-76D3CBD39DF2', '0BEDA084-68FF-4F81-883C-000456A6326F', '0-0-27132', '0', '6829', '2019-03-01T08:12:30Z'),
('DEC1CEB5-A9A4-4393-AE44-F914DD38EC87', '18B733E8-2FD2-48FE-8366-0001B21B62D5', '0-0-taporiwanted', '0', '7764', '2018-09-18T00:57:02Z'),
('DF23AE19-D148-435D-ACA5-742A56A8C2FB', '880931C3-D393-4669-B717-000883BDC8DE', '0-1-154286', '1', '1320', '2018-05-11T11:41:16Z'),
('DF324B92-0DC1-4C0B-B35F-C59FDA9075CE', '6FB9B3D4-F88B-499E-9268-00074F2D85C8', '0-1-162712', '1', '1202', '2018-12-28T08:10:02Z'),
('E0D61263-5192-4EC4-8528-1945961AB39A', 'A48272E3-60A7-4BBF-91F8-00005444323F', '0-0-6728', '0', '8079', '2019-02-10T08:39:25Z'),
('E1BEEFA5-9B32-4411-A654-C467545B987D', '940877F1-4E97-4C32-92E0-0002FF9C7337', '0-1-161246', '1', '2210', '2019-02-23T05:49:00Z'),
('E2E914BF-43F8-4278-BDF0-BD3C6D37D3F6', '4BA86872-BCA5-42AD-BE42-0008FB6149F7', '0-1-tvshow_1243770026-season_1034245393-episode_725755326', '1', '89', '2018-08-10T12:03:11Z'),
('E3310F17-107B-4CE0-AFCD-60AC7598BAAB', '40CA99CC-6EE9-4CF4-9E2D-0009BC4C1240', '0-1-tvshow_984782182-season_1914050019-episode_1467572952', '1', '1229', '2018-07-17T03:22:54Z'),
('E3990186-CE20-48B9-8D8E-E0910311055D', '8DAFAA39-E405-4136-A31A-00025EF56514', '0-1-194765', '1', '10297', '2019-10-31T14:51:49Z'),
('E4E1C8F9-ABE7-4191-8409-9B8F29BF855A', 'C056A30A-C5BD-4F0C-A3B6-0003BF44B2D3', '0-1-148738', '1', '1113', '2018-11-02T12:23:18Z'),
('E68435E3-E5F8-4102-BF95-1142906CA958', '9C106F60-3947-48FF-B161-0000D6AAE30B', '0-1-173626', '1', '1231', '2019-02-05T02:43:06Z'),
('E7364F08-0087-445F-99E0-842EE4ECC248', 'C9B826AD-60B4-4F47-B478-0007CD905CCD', '0-1-178854', '1', '1200', '2019-02-22T04:22:02Z'),
('E7DE5598-D73B-45A7-BCBF-965D6CC60208', 'ED6E9ACF-2ED1-4263-B261-000426354E98', '0-0-2464', '0', '5520', '2019-03-24T00:52:17Z'),
('E8D69FC0-AF92-45B5-8A66-F9B018FE4D1B', 'D7183B5D-DD4E-4C13-BA63-0000096F9CA8', '0-1-191884', '1', '2535', '2019-03-27T12:00:48Z'),
('EDC83592-1E51-4E30-A4BE-C69A2BC38D3E', '321DE5E5-5D25-4BC1-89D9-00012D57089B', '0-1-bhabijigharparhain-bhabijigharparhainse-episode_873502227', '1', '1260', '2018-08-02T20:16:32Z'),
('EDF3B594-D5DB-4FD3-8DAD-93AFA06D2806', '880931C3-D393-4669-B717-000883BDC8DE', '0-1-154285', '1', '1320', '2018-05-11T11:41:22Z'),
('F1D16A97-4FEB-419F-8C90-A8165EB39ECD', '880931C3-D393-4669-B717-000883BDC8DE', '0-1-154291', '1', '1380', '2018-05-11T11:40:59Z'),
('F1F91156-2F39-461C-8F0C-E71D86B0C866', 'A410AEBA-098E-4D94-BD9D-0006BB140071', '0-1-229565', '1', '45', '2019-07-03T00:15:31Z'),
('F29D0084-D25A-4330-B71A-1331B7EAC9C8', 'C9B826AD-60B4-4F47-B478-0007CD905CCD', '0-1-207155', '1', '2506', '2019-05-07T01:52:06Z'),
('F521009E-6E01-4FE3-B99F-1C89E29C49B1', '956C9DED-9577-490E-98F8-0003565F239D', '0-1-kundalibhagya-kundalibhagyaseason1-episode_103346511', '1', '1256', '2018-09-14T02:50:17Z'),
('F5622311-68CC-4629-9BB6-E4248F33D574', 'E8A6F4EF-870D-495A-8D3B-0008A9E916FA', '0-1-164598', '1', '1228', '2020-05-09T20:16:07Z'),
('F5D9DFA2-87CC-4173-90B9-BD89388236E2', '880931C3-D393-4669-B717-000883BDC8DE', '0-1-154284', '1', '1320', '2018-05-11T11:41:23Z'),
('F7B5C1D6-9CE7-4274-8B7F-DABD945CFAB1', 'D7183B5D-DD4E-4C13-BA63-0000096F9CA8', '0-1-194874', '1', '9989', '2019-04-06T06:01:18Z'),
('F7BD79C3-0BC7-4C2E-A77B-C849201C1A5B', '40CA99CC-6EE9-4CF4-9E2D-0009BC4C1240', '0-1-tvshow_984782182-season_1914050019-episode_1891970208', '1', '1600', '2018-07-17T03:22:46Z'),
('F843CF27-C5FA-4727-8181-97CE5731F554', '899BA4EB-4487-40A3-B481-00095A90FA66', '0-1-kumkumbhagya-kumkumbhagyaseason1-episode_1799413093', '1', '1298', '2018-08-07T10:22:12Z'),
('F8F61319-FA35-4D7C-BE99-F05138568F36', '93E04A2C-F12B-4132-A319-0005BBC263FB', '0-0-30553', '0', '8329', '2020-04-01T00:30:56Z'),
('FA7AEF91-A642-402E-B77B-3F5EED13179A', 'EBD07812-DF23-487B-8BA3-0000017ECD48', '0-1-247361', '1', '1212', '2019-07-30T12:06:14Z'),
('FA838415-B242-4371-A400-30BE47814EB4', '40CA99CC-6EE9-4CF4-9E2D-0009BC4C1240', '0-1-tvshow_984782182-season_1914050019-episode_611889494', '1', '1384', '2018-07-17T03:22:44Z'),
('FAFDBFC3-9659-450F-881B-20E09C9E035A', 'EAD72D81-916E-44F3-B993-000350DA7513', '0-0-movie_801822575', '0', '120', '2018-10-05T12:50:44Z'),
('FB355F69-8776-4B85-9B22-AA760E3F55B5', '6FB9B3D4-F88B-499E-9268-00074F2D85C8', '0-1-163209', '1', '1242', '2018-12-28T08:09:34Z'),
('FC04934E-E0C1-4D03-A56A-DC84D1491F3F', '57487CD3-8F66-42F5-9AD6-0006CA7B1DEA', '0-0-7812', '0', '63', '2019-10-16T14:37:51Z');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Favorites`
--
ALTER TABLE `Favorites`
  ADD PRIMARY KEY (`Id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
