<?php
//引入判斷是否登入機制
// require_once('./checkSession.php');

//引用資料庫連線
require_once('./db.inc.php');

/**
 * 注意：
 * 
 * 因為要判斷更新時檔案有無上傳，
 * 所以要先對前面/其它的欄位先進行 SQL 語法字串連接，
 * 再針對圖片上傳的情況，給予對應的 SQL 字串和資料繫結設定。
 * 
 */

// echo "<pre>";
// print_r($_FILES);
// echo "</pre>";
// exit();

//先對其它欄位，進行 SQL 語法字串連接
$sql = "UPDATE `member` 
        SET         
        `Account` = ?,
        `AccountActivated` = ?,
        `Email` = ?,
        `Pwd` = ?,
        `Name` = ?,
        `Gender` = ?,       
        `Birthday` = ?,
        `PhoneNumber` = ?,
        `Address` = ?,
        `Blocked` = ?,
        `VIP` = ?,
        `VIP_Start` = ?,
        `VIP_Due` = ?";

//先對其它欄位進行資料繫結設定
$arrParam = [
    $_POST['Account'],
    $_POST['AccountActivated'],
    $_POST['Email'],
    $_POST['Pwd'],
    $_POST['Name'],
    $_POST['Gender'],
    $_POST['Birthday'],
    $_POST['PhoneNumber'],
    $_POST['Address'],
    $_POST['Blocked'],
    $_POST['VIP'],
    $_POST['VIP_Start'],
    $_POST['VIP_Due']
];

// echo "<pre>";
// print_r($sql);
// print_r($arrParam);
// echo "</pre>";
// exit();

//判斷檔案上傳是否正常，error = 0 為正常
if ($_FILES["Img"]["error"] === 0) {
    //為上傳檔案命名
    $strDatetime = date("YmdHis");

    //找出副檔名
    $extension = pathinfo($_FILES["Img"]["name"], PATHINFO_EXTENSION);

    //建立完整名稱
    $studentImg = $strDatetime . "." . $extension;

    //若上傳成功，則將上傳檔案從暫存資料夾，移動到指定的資料夾或路徑
    if (move_uploaded_file($_FILES["Img"]["tmp_name"], "./files/" . $studentImg)) {
        /**
         * 刪除先前的舊檔案: 
         * 一、先查詢出特定 id (editId) 資料欄位中的大頭貼檔案名稱
         * 二、刪除實體檔案
         * 三、更新成新上傳的檔案名稱
         *  */

        //先查詢出特定 id (editId) 資料欄位中的大頭貼檔案名稱
        $sqlGetImg = "SELECT `Img` FROM `member` WHERE `ID` = ? ";
        $stmtGetImg = $pdo->prepare($sqlGetImg);

        //加入繫結陣列
        $arrGetImgParam = [
            (int) $_POST['editId']
        ];

        //執行 SQL 語法
        $stmtGetImg->execute($arrGetImgParam);

        //若有找到 studentImg 的資料
        if ($stmtGetImg->rowCount() > 0) {
            //取得指定 id 的學生資料 (1筆)
            $arrImg = $stmtGetImg->fetchAll(PDO::FETCH_ASSOC);

            //若是 studentImg 裡面不為空值，代表過去有上傳過
            if ($arrImg[0]['Img'] !== NULL) {
                //刪除實體檔案
                @unlink("./files/" . $arrImg[0]['Img']);
            }

            /* * 因為前面 後面沒有加「,」，若是這裡會有更新 studentImg 就需要。*/
            $sql .= ",";

            //studentImg SQL 語句字串
            $sql .= "`Img` = ? ";

            //僅對 studentImg 進行資料繫結
            $arrParam[] = $studentImg;
        }
    }
}

//SQL 結尾
$sql .= " WHERE `ID` = ? ";
$arrParam[] = (int) $_POST['editId'];
// echo $sql . "<br>";
// echo "<pre>";
// print_r($arrParam);
// echo "</pre>";
// exit();
$stmt = $pdo->prepare($sql);
$stmt->execute($arrParam);

// echo "<pre>";
// print_r($arrParam);
// echo "</pre>";

if ($stmt->rowCount() > 0) {
    header("Refresh: 3; url=./member_adminv2.php");
    echo "更新成功";
} else {
    header("Refresh: 3; url=./member_adminv2.php");
    echo "沒有任何更新";
}