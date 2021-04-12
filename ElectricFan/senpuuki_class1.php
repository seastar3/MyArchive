// オブジェクト指向プログラミングモデル　扇風機クラス　senpuuki_class1.php
<?php
class senpuuki_class{
    var $namae;
    var $onoff;
    var $dankai;
    var $kubionoff;

// 扇風機クラスの実体（インスタンス）
    function senpuuki_class($meisyou){
            $this->namae = $meisyou;
            $this->onoff = False;
            $this->dankai = 0;
            $this->kubionoff = False;
    }

// 扇風機の電源オン
    function push_sw($sw){
        if ($sw="on") {
            $this->onoff = True;
            $this->dankai = 1;
        } else {
            $this->onoff = False;
        }
    }

// 扇風機の風速調節
    function change_tsuyosa($tsuyosa){
        if ($tsuyosa >= 1 & $tsuyosa <= 3) {
            $this->dankai=(int)$tsuyosa;
        } else {
            $this->dankai=1;
            print("<br>指定した強さが違います。<br>");
        }
    }

// 扇風機の首振り切り替え
    function change_kubionoff($kubisw){
        if ($kubisw="on") {
            $this->kubionoff = True;
        } else {
            $this->kubionoff = False;
        }
    }

// 扇風機の動作回答
    function check_dousa(){
        print("名称は、 " . $this->namae . "です。<br/>");
        print("電源は、 " . $this->onoff . "です。<br/>");
        print("風速は、 " . $this->dankai . "です。<br/>");
        print("首振は、 ");
        if ($this->kubionoff) {print("作動中");} else {print("停止中");}
        print("です。<br/>");
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
              default:
                print("故障かな？<br/>");
                break;
            }
        }
    }
}
?>
