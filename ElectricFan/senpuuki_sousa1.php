//  オブジェクト指向プログラミングモデル　扇風機オブジェクトの操作１　senpuuki_sousa1.php
<?php
require_once( "senpuuki_class1.php" );
// 扇風機オブジェクトを継承し操る　senpuuki_sousa2.php

class senpuuki_class_2 extends senpuuki_class {
// ３段階化だった扇風機の風速調節を５段階化する
    function change_tsuyosa($tsuyosa){
        if ($tsuyosa >= 1 & $tsuyosa <= 5) {
            $this->dankai=(int)$tsuyosa;
        } else {
            $this->dankai=1;
            print("<br>指定した強さが違います。<br>");
        }
    }
// 扇風機の風速回答
    function anser_dankai(){
        print($this->namae . "の風速は、 " . $this->dankai . "です。<br/>");
        if ($this->kubionoff) {
            switch ($this->dankai){
              case 1 :
                print("　　　ブ～ン<br/>");
                break;
              case 2 :
                print("　　ブ～ン　ブ～ン<br/>");
                break;
              case 3 :
                print("ブ～ン　ブ～ン　ブ～ン<br/>");
                break;
              case 4:
                print("ブ～ン　ブ～ン　ブ～ン　ブ～ン<br/>");
                break;
              case 5 :
                print("ブ～ン　ブ～ン　ブ～ン　ブ～ン　ブ～ン<br/>");
                break;
              default:
                print("故障かな？<br/>");
                break;
            }
        } else {
            switch ($this->dankai){
              case 1 :
                print("　　　ブーン<br/>");
                break;
              case 2 :
                print("　　ブーン　ブーン<br/>");
                break;
              case 3 :
                print("　ブーン　ブーン　ブーン<br/>");
                break;
              case 4:
                print("ブーン　ブーン　ブーン　ブーン<br/>");
                break;
              case 5 :
                print("ブーン　ブーン　ブーン　ブーン　ブーン<br/>");
                break;
              default:
                print("故障かな？<br/>");
                break;
            }
        }
    }
}

print("<br/>扇風機オブジェクトを元に、風速５段階に改造した扇風機オブジェクト２を設定する。<br/><br/>");

// 扇風機 涼風を実体化
print("扇風機 涼風を実体化<br/><br/>");
$suzukaze = new senpuuki_class("涼風");

// 扇風機 パワーファンを実体化
print("改造型扇風機 パワーファンを実体化<br/><br/>");
$powerfan = new senpuuki_class_2("パワーファン");

// 涼風をスイッチオン
print("扇風機 涼風をスイッチオン<br/><br/>");
$suzukaze->push_sw("on");

// 涼風を動作チェック
print("扇風機 涼風の動作確認<br/><br/>");
$suzukaze->check_dousa();

// パワーファンをスイッチオン
print("扇風機 パワーファンをスイッチオン<br/><br/>");
$powerfan->push_sw("on");

// パワーファンを動作チェック
print("扇風機 パワーファンの動作確認<br/><br/>");
$powerfan->check_dousa();

// 涼風を首振りする
print("扇風機 涼風を首振りに切り替える<br/><br/>");
$suzukaze->change_kubionoff("on");

// 涼風を動作チェック
print("扇風機 涼風の動作確認<br/><br/>");
$suzukaze->check_dousa();

// 涼風の風速チェック
print("扇風機 涼風の風速表示<br/><br/>");
$suzukaze->anser_dankai();

// 涼風を風速５にする（エラー表示が出て、風速１になる）
print("扇風機 涼風を風速５にする（エラー表示が出て、風速１になる）<br/><br/>");
$suzukaze->change_tsuyosa(5);

// 涼風の風速チェック
print("扇風機 涼風の風速表示<br/><br/>");
$suzukaze->anser_dankai();

// パワーファンを風速５にする（パワーファンは、改造型の扇風機なのでエラーにならない。）
print("扇風機 パワーファンをを風速５にする（パワーファンは、改造型の扇風機なのでエラーにならない。）<br/><br/>");
$powerfan->change_tsuyosa(5);

// パワーファンを動作チェック
print("扇風機 パワーファンの動作確認<br/><br/>");
$powerfan->check_dousa();

// パワーファンの風速チェック
print("扇風機 パワーファンの風速表示<br/><br/>");
$powerfan->anser_dankai();

?>
