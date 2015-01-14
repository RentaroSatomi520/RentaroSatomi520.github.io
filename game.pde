void setup(){
  size(400, 400);
  frameRate(60);
}

var charactorArray = ["あ", "か", "い", "う", "え", "お", "き", "く", "け", "こ", "さ", "し", "す", "せ", "そ", "た", "ち", "つ", "て", "と", "な", "に", "ぬ", "ね", "の", "は", "ひ", "ふ", "へ", "ほ", "ま", "み", "む", "め", "も", "や", "ゆ", "よ", "ら", "り", "る", "れ", "ろ", "わ", "ゐ", "ゑ", "を"];
var KatakanaArray = ["ア",	"イ",	"ウ",	"エ",	"オ", "カ",	"キ",	"ク",	"ケ",	"コ",	"サ",	"シ",	"ス",	"セ",	"ソ",	"タ",	"チ",	"ツ",	"テ",	"ト",	"ナ",	"ニ",	"ヌ",	"ネ",	"ノ","ハ",	"ヒ",	"フ",	"ヘ",	"ホ","マ",	"ミ",	"ム",	"メ",	"モ",	"ヤ",	"ユ",	"ヨ","ラ", "リ",	"ル",	"レ",	"ロ","ワ",	"ヰ", "ヱ",	"ヲ"];
var soundArray = ["A", "Ka", "I", "U", "E", "O", "Ki", "Ku", "Ke", "Ko", "Sa", "Shi", "Su", "Se", "So", "Ta", "Chi", "Tsu", "Te", "To", "Na", "Ni", "Nu", "Ne", "No", "Ha", "Hi", "Fu", "He", "Ho", "Ma", "Mi", "Mu", "Me", "Mo", "Ya", "Yu", "Yo", "Ra", "Ri", "Ru", "Re", "Ro", "Wa", "Wi", "We", "Wo"];
//for program1
var waitTime = 100, waitStart = 0;
var correctDis = 0, wrongDis = 0;
var startUp = 0;
var num123 = 0;
var drawScene = 1;

var textX = 2, textY = 2, textW = 400, textH = 400;
var textX1 = textX + 20, textY1 = textY + 20;
var textX2 = textX + 40, textY2 = textY + 40;
var textX3 = textX + 60, textY3 = textY + 60;
var textY4 = textY + 80;
var textX4 = textX + 80;
var textX5 = textX + 100;
var textX6 = textX + 120;
var textX7 = textX + 140;
var textX8 = textX + 160;
var textX9 = textX + 180;
var textX10 = textX + 200;
var textX11 = textX + 220;
var textX12 = textX + 240;
var textX13 = textX + 260;
var textX14 = textX + 280;
var textX15 = textX + 300;
var textX16 = textX + 320;
var textX17 = textX + 340;
var textX18 = textX + 360;
var t;
var keySelector = 0;
var charactorChecker;
var c = 0;
var correctNum = 0;
var score = 0;
var correct = 0;
var wrong = 0;
var currentScene = 0;
var startword = 0;
var keys = [];

//For Program2 
var t = 0, c = 0, s = floor(random(0, soundArray.length + 1));
var rectX = 180, rectY2 = 330, rectW = 75, rectH = 30;
var score = 0;
var correct = 0;
var wrong = 0;
var checkAct = 0, checkStopper = 0;
var wrongStopper = 0;

//for program3
var randomSelector = floor(random(0, charactorArray.length + 1));
var aSceneSelector = floor(random(0, 2));
var correctScene = 0;
var correctNum3 = 0;
var correctStopper = 0;
var score3 = 0;
var gameStart = 1;
var wrongScene = 1;
var numCorrect = 0;
var numWrong = 0;
var intNumber = 0;
var intHun = 100;
var rectNumber = intNumber * intHun;
var rectY = 250;
var rect1 = [];
var gameStopper = 0;
var rectNumber1 = rectNumber + 25;
var rectNumber2 = rectNumber + 125;
var rectNumber3 = rectNumber + 225;
var rectNumber4 = rectNumber + 325;
var y = 100;
var y1 = 200;
var y2 = 300;
var x = 250;
var x1 = 350; 
var x2 = 300;
var x3 = 200;

var p1p2p3 = 0;

var startScene = function(){
    background(255, 255, 255);
    fill(0, 0, 0);
    textSize(20);
    text("My Program", 150, 100, 400, 400);
    textSize(10);
    text("Type 'Start' to Start!", 120, 300, 400, 400);
};

var checkButton = function(){
    fill(255, 0, c);
    strokeWeight(3);
    rect(rectX, rectY2, rectW, rectH, 5);
    fill(0, 0, 0);
};

var aScene = function(){
    if(aSceneSelector === 0){
        background(255, 255, 255);
        fill(0, 0, 0);
        textSize(50);
        text(charactorArray[randomSelector], 200, 50, 100, 100);
        textSize(20);
        text("Score: "+score, 5, 0, 100, 100);
        text("Correct: "+numCorrect, 290, 0, 100, 100);
        text("Wrong: "+numWrong, 290, 25, 100, 100);
        textSize(25);
    if(randomSelector >= 0 && randomSelector <= 9){
        text(soundArray[0], y, x, 100, 100);
        text(soundArray[1], y1, x, 100, 100);
        text(soundArray[2], y2, x, 100, 100);
        text(soundArray[3], y, x2, 100, 100);
        text(soundArray[4], y1, x2, 100, 100);
        text(soundArray[5], y2, x2, 100, 100);
        text(soundArray[6], y, x1, 100, 100);
        text(soundArray[7], y1, x1, 100, 100);
        text(soundArray[8], y2, x1, 100, 100);
        text(soundArray[9], y1, x3, 100, 100);
    }
    if(randomSelector > 9 && randomSelector <= 19){
        text(soundArray[10], y, x, 100, 100);
        text(soundArray[11], y1, x, 100, 100);
        text(soundArray[12], y2, x, 100, 100);
        text(soundArray[13], y, x2, 100, 100);
        text(soundArray[14], y1, x2, 100, 100);
        text(soundArray[15], y2, x2, 100, 100);
        text(soundArray[16], y, x1, 100, 100);
        text(soundArray[17], y1, x1, 100, 100);
        text(soundArray[18], y2, x1, 100, 100);
        text(soundArray[19], y1, x3, 100, 100);
    }
    if(randomSelector > 19 && randomSelector <= 29){
        text(soundArray[20], y, x, 100, 100);
        text(soundArray[21], y1, x, 100, 100);
        text(soundArray[22], y2, x, 100, 100);
        text(soundArray[23], y, x2, 100, 100);
        text(soundArray[24], y1, x2, 100, 100);
        text(soundArray[25], y2, x2, 100, 100);
        text(soundArray[26], y, x1, 100, 100);
        text(soundArray[27], y1, x1, 100, 100);
        text(soundArray[28], y2, x1, 100, 100);
        text(soundArray[29], y1, x3, 100, 100);
    }
    if(randomSelector > 29 && randomSelector <= 39){
        text(soundArray[30], y, x, 100, 100);
        text(soundArray[31], y1, x, 100, 100);
        text(soundArray[32], y2, x, 100, 100);
        text(soundArray[33], y, x2, 100, 100);
        text(soundArray[34], y1, x2, 100, 100);
        text(soundArray[35], y2, x2, 100, 100);
        text(soundArray[36], y, x1, 100, 100);
        text(soundArray[37], y1, x1, 100, 100);
        text(soundArray[38], y2, x1, 100, 100);
        text(soundArray[39], y1, x3, 100, 100);
    }
    if(randomSelector > 39 && randomSelector <= 47){
        text(soundArray[40], y, x, 100, 100);
        text(soundArray[41], y1, x, 100, 100);
        text(soundArray[42], y2, x, 100, 100);
        text(soundArray[43], y, x2, 100, 100);
        text(soundArray[44], y1, x2, 100, 100);
        text(soundArray[45], y2, x2, 100, 100);
        text(soundArray[46], y, x1, 100, 100);
        text(soundArray[47], y1, x1, 100, 100);
    }
    }
    if(aSceneSelector === 1){
        background(255, 255, 255);
        fill(0, 0, 0);
        textSize(50);
        text(soundArray[randomSelector], 200, 50, 100, 100);
        textSize(20);
        text("Score: "+score, 5, 0, 100, 100);
        text("Correct: "+numCorrect, 290, 0, 100, 100);
        text("Wrong: "+numWrong, 290, 25, 100, 100);
        textSize(25);
        
        if(randomSelector >= 0 && randomSelector <= 9){
            text(charactorArray[0], y, x, 100, 100);
            text(charactorArray[1], y1, x, 100, 100);
            text(charactorArray[2], y2, x, 100, 100);
            text(charactorArray[3], y, x2, 100, 100);
            text(charactorArray[4], y1, x2, 100, 100);
            text(charactorArray[5], y2, x2, 100, 100);
            text(charactorArray[6], y, x1, 100, 100);
            text(charactorArray[7], y1, x1, 100, 100);
            text(charactorArray[8], y2, x1, 100, 100);
            text(charactorArray[9], y1, x3, 100, 100);
        }
        if(randomSelector > 9 && randomSelector <= 19){
            text(charactorArray[10], y, x, 100, 100);
            text(charactorArray[11], y1, x, 100, 100);
            text(charactorArray[12], y2, x, 100, 100);
            text(charactorArray[13], y, x2, 100, 100);
            text(charactorArray[14], y1, x2, 100, 100);
            text(charactorArray[15], y2, x2, 100, 100);
            text(charactorArray[16], y, x1, 100, 100);
            text(charactorArray[17], y1, x1, 100, 100);
            text(charactorArray[18], y2, x1, 100, 100);
            text(charactorArray[19], y1, x3, 100, 100);
        }
        if(randomSelector > 19 && randomSelector <= 29){
            text(charactorArray[20], y, x, 100, 100);
            text(charactorArray[21], y1, x, 100, 100);
            text(charactorArray[22], y2, x, 100, 100);
            text(charactorArray[23], y, x2, 100, 100);
            text(charactorArray[24], y1, x2, 100, 100);
            text(charactorArray[25], y2, x2, 100, 100);
            text(charactorArray[26], y, x1, 100, 100);
            text(charactorArray[27], y1, x1, 100, 100);
            text(charactorArray[28], y2, x1, 100, 100);
            text(charactorArray[29], y1, x3, 100, 100);
        }
        if(randomSelector > 29 && randomSelector <= 39){
            text(charactorArray[30], y, x, 100, 100);
            text(charactorArray[31], y1, x, 100, 100);
            text(charactorArray[32], y2, x, 100, 100);
            text(charactorArray[33], y, x2, 100, 100);
            text(charactorArray[34], y1, x2, 100, 100);
            text(charactorArray[35], y2, x2, 100, 100);
            text(charactorArray[36], y, x1, 100, 100);
            text(charactorArray[37], y1, x1, 100, 100);
            text(charactorArray[38], y2, x1, 100, 100);
            text(charactorArray[39], y1, x3, 100, 100);
        }
        if(randomSelector > 39 && randomSelector <= 47){
            text(charactorArray[40], y, x, 100, 100);
            text(charactorArray[41], y1, x, 100, 100);
            text(charactorArray[42], y2, x, 100, 100);
            text(charactorArray[43], y, x2, 100, 100);
            text(charactorArray[44], y1, x2, 100, 100);
            text(charactorArray[45], y2, x2, 100, 100);
            text(charactorArray[46], y, x1, 100, 100);
            text(charactorArray[47], y1, x1, 100, 100);
        }
    }
};
var correctDisplay = function(){
    background(255, 255, 0);
    textSize(20);
    text("Correct",200, 200, 100, 100);
    correctNum = 1;
};

var waiTime = 0;
//program1
var keyPressed = function(){
    loop();
    if(currentScene === 0){
        if(key.toString() === 's'){
            startword = 1;
        }
        if(startword === 1 && key.toString() === 't'){
            startword = 2;
        }
        if(startword === 2 && key.toString() === 'a'){
            startword = 3;
        }
        if(startword === 3 && key.toString() === 'r'){
            startword = 4;
        }
        if(startword === 4 && key.toString() === 't'){
            startword = 5;
        }
        if(startword === 5){
            p1p2p3 = 1;
        }
        if(num123 === 1 && key.toString() === '1'){
            currentScene = 1;
        }        
        if(num123 === 1 && key.toString() === '2'){
            currentScene = 2;
        }        
        if(num123 === 1 && key.toString() === '3'){
            currentScene = 3;
        }
    }
    if(currentScene === 1){
        if(key.toString() === '='){
                if(t === charactorChecker){
                    correctNum = 1;
                }
                if(t !== charactorChecker){
                    correctNum = 2;
                }
                startUp = 1;
        }
        if(key.toString() === 'a'){
            t = 0;
        }
        if(key.toString() === 'i'){
            t = 2;
        }
        if(key.toString() === 'u'){
            t = 3;
        }
        if(key.toString() === 'e'){
            t = 4;
        }
        if(key.toString() === 'o'){
            t = 5;
        }
        if(key.toString() === '='){
            keySelector = 10;
        }
        if(key.toString() === 'k'){
            keySelector = 1;
        }
        if(key.toString() === 's'){
            keySelector = 2;
        }
        if(key.toString() === 't'){
            keySelector = 3;
        }
        if(key.toString() === 'c'){
            t = 16;
        }
        if(key.toString() === 'n'){
            keySelector = 4;
        }
        if(key.toString() === 'h'){
            keySelector = 5;
        }
        if(key.toString() === 'f'){
            t = 27;
        }
        if(key.toString() === 'm'){
            keySelector = 6;
        }
        if(key.toString() === 'y'){
            keySelector = 7;
        }
        if(key.toString() === 'r'){
            keySelector = 8;
        }
        if(key.toString() === 'w'){
            keySelector = 9;
        }
        
        if(key.toString() === 'a' && keySelector === 1){
            t = 1;
        }
        if(key.toString() === 'i' && keySelector === 1){
            t = 6;
        }
        if(key.toString() === 'u' && keySelector === 1){
            t = 7;
        }
        if(key.toString() === 'e' && keySelector === 1){
            t = 8;
        }
        if(key.toString() === 'o' && keySelector === 1){
            t = 9;
        }
        if(key.toString() === 'a' && keySelector === 2){
            t = 10;
        }
        if(key.toString() === 'i' && keySelector === 2){
            t = 11;
        }
        if(key.toString() === 'u' && keySelector === 2){
            t = 12;
        }
        if(key.toString() === 'e' && keySelector === 2){
            t = 13;
        }
        if(key.toString() === 'o' && keySelector === 2){
            t = 14;
        }
        if(key.toString() === 'a' && keySelector === 3){
            t = 15;
        }
        if(key.toString() === 's' && keySelector === 3){
            t = 17;
        }
        if(key.toString() === 'e' && keySelector === 3){
            t = 18;
        }
        if(key.toString() === 'o' && keySelector === 3){
            t = 19;
        }
        if(key.toString() === 'a' && keySelector === 4){
            t = 20;
        }
        if(key.toString() === 'i' && keySelector === 4){
            t = 21;
        }
        if(key.toString() === 'u' && keySelector === 4){
            t = 22;
        }
        if(key.toString() === 'e' && keySelector === 4){
            t = 23;
        }
        if(key.toString() === 'o' && keySelector === 4){
            t = 24;
        }
        if(key.toString() === 'a' && keySelector === 5){
            t = 25;
        }
        if(key.toString() === 'i' && keySelector === 5){
            t = 26;
        }
        if(key.toString() === 'e' && keySelector === 5){
            t = 28;
        }
        if(key.toString() === 'o' && keySelector === 5){
            t = 29;
        }
        if(key.toString() === 'a' && keySelector === 6){
            t = 30;
        }
        if(key.toString() === 'i' && keySelector === 6){
            t = 31;
        }
        if(key.toString() === 'u' && keySelector === 6){
            t = 32;
        }
        if(key.toString() === 'e' && keySelector === 6){
            t = 33;
        }
        if(key.toString() === 'o' && keySelector === 6){
            t = 34;
        }
        if(key.toString() === 'a' && keySelector === 7){
            t = 35;
        }
        if(key.toString() === 'u' && keySelector === 7){
            t = 36;
        }
        if(key.toString() === 'o' && keySelector === 7){
            t = 37;
        }
        if(key.toString() === 'a' && keySelector === 8){
            t = 38;
        }
        if(key.toString() === 'i' && keySelector === 8){
            t = 39;
        }
        if(key.toString() === 'u' && keySelector === 8){
            t = 40;
        }
        if(key.toString() === 'e' && keySelector === 8){
            t = 41;
        }
        if(key.toString() === 'o' && keySelector === 8){
            t = 42;
        }
        if(key.toString() === 'a' && keySelector === 9){
            t = 43;
        }
        if(key.toString() === 'i' && keySelector === 9){
            t = 44;
        }
        if(key.toString() === 'e' && keySelector === 9){
            t = 45;
        }
        if(key.toString() === 'o' && keySelector === 9){
            t = 46;
        }
        if(key.toString() === 'a' && keySelector === 10){
            t = 0;
        }
        if(key.toString() === 'i' && keySelector === 10){
            t = 2;
        }
        if(key.toString() === 'u' && keySelector === 10){
            t = 3;
        }
        if(key.toString() === 'e' && keySelector === 10){
            t = 4;
        }
        if(key.toString() === 'o' && keySelector === 10){
            t = 5;
        }
    }
    if(currentScene === 2){
        if(key.toString() === 'a'){
            t = floor(random(0, 47));
        }
    }
};

var draw = function() {
    if(currentScene === 0){
        startScene();
        if(p1p2p3 === 1){
                        text("Press 1 to Start Program 1", 5, 200, 400, 400);
            text("Press 2 to Start Program 2", 140, 200, 400, 400);
            text("Press 3 to Start Program 3", 270, 200, 400, 400);    
        }
        num123 = 1;
    }
    
    if(currentScene === 1){
        background(255, 255, 255);
        fill(189, 34, 189);
        textSize(20);
        stroke(230, 55, 55);
        strokeWeight(3);
      if(startUp === 0){
        fill(c, 0, 0);
        text("Press '=' to check answer", 125, 325, 400, 300);
      }
        if(mouseX > textX && mouseX < textX + 18 && mouseY > textY && mouseY < textY + 18){
            if(mouseIsPressed){
                charactorChecker = 0;
            }
        }
        
        if(charactorChecker === 0){
            fill(255, 0, 43);
            rect(textX - 2, textY - 2, 20, 20);
        }
        
        if(mouseX > textX1 && mouseX < textX1 + 18 && mouseY > textY && mouseY < textY + 18){
            if(mouseIsPressed){
                charactorChecker = 1;
            }
        }
        
        if(charactorChecker === 1){
            fill(255, 0, 43);
            rect(textX1, textY, 20, 20);
        }
        if(mouseX > textX2 && mouseX < textX2 + 18 && mouseY > textY && mouseY < textY + 18){
            if(mouseIsPressed){
                charactorChecker = 2;
            }
        }
        
        if(charactorChecker === 2){
            fill(255, 0, 43);
            rect(textX2, textY, 20, 20);
        }
        if(mouseX > textX3 && mouseX < textX3 + 18 && mouseY > textY && mouseY < textY + 18){
            if(mouseIsPressed){
                charactorChecker = 3;
            }
        }
        
        if(charactorChecker === 3){
            fill(255, 0, 43);
            rect(textX3, textY, 20, 20);
        }
        if(mouseX > textX4 && mouseX < textX4 + 18 && mouseY > textY && mouseY < textY + 18){
            if(mouseIsPressed){
                charactorChecker = 4;
            }
        }
        
        if(charactorChecker === 4){
            fill(255, 0, 43);
            rect(textX4, textY, 20, 20);
        }
        
        if(mouseX > textX5 && mouseX < textX5 + 18 && mouseY > textY && mouseY < textY + 18){
            if(mouseIsPressed){
                charactorChecker = 5;
            }
        }
        
        if(charactorChecker === 5){
            fill(255, 0, 43);
            rect(textX5, textY, 20, 20);
        }
        
        if(mouseX > textX6 && mouseX < textX6 + 18 && mouseY > textY && mouseY < textY + 18){
            if(mouseIsPressed){
                charactorChecker = 6;
            }
        }
        
        if(charactorChecker === 6){
            fill(255, 0, 43);
            rect(textX6, textY, 20, 20);
        }
        if(mouseX > textX7 && mouseX < textX7 + 18 && mouseY > textY && mouseY < textY + 18){
            if(mouseIsPressed){
                charactorChecker = 7;
            }
        }
        
        if(charactorChecker === 7){
            fill(255, 0, 43);
            rect(textX7, textY, 20, 20);
        }
        if(mouseX > textX8 && mouseX < textX8 + 18 && mouseY > textY && mouseY < textY + 18){
            if(mouseIsPressed){
                charactorChecker = 8;
            }
        }
        
        if(charactorChecker === 8){
            fill(255, 0, 43);
            rect(textX8, textY, 20, 20);
        }
        if(mouseX > textX9 && mouseX < textX9 + 18 && mouseY > textY && mouseY < textY + 18){
            if(mouseIsPressed){
                charactorChecker = 9;
            }
        }
        
        if(charactorChecker === 9){
            fill(255, 0, 43);
            rect(textX9, textY, 20, 20);
        }
        if(mouseX > textX10 && mouseX < textX10 + 18 && mouseY > textY && mouseY < textY + 18){
            if(mouseIsPressed){
                charactorChecker = 10;
            }
        }
        
        if(charactorChecker === 10){
            fill(255, 0, 43);
            rect(textX10, textY, 20, 20);
        }
        
        if(mouseX > textX11 && mouseX < textX11 + 18 && mouseY > textY && mouseY < textY + 18){
            if(mouseIsPressed){
                charactorChecker = 11;
            }
        }
        
        if(charactorChecker === 11){
            fill(255, 0, 43);
            rect(textX11, textY, 20, 20);
        }
        if(mouseX > textX12 && mouseX < textX12 + 18 && mouseY > textY && mouseY < textY + 18){
            if(mouseIsPressed){
                charactorChecker = 12;
            }
        }
        
        if(charactorChecker === 12){
            fill(255, 0, 43);
            rect(textX12, textY, 20, 20);
        }
        if(mouseX > textX13 && mouseX < textX13 + 18 && mouseY > textY && mouseY < textY + 18){
            if(mouseIsPressed){
                charactorChecker = 13;
            }
        }
        
        if(charactorChecker === 13){
            fill(255, 0, 43);
            rect(textX13, textY, 20, 20);
        }
        if(mouseX > textX14 && mouseX < textX14 + 18 && mouseY > textY && mouseY < textY + 18){
            if(mouseIsPressed){
                charactorChecker = 14;
            }
        }
        
        if(charactorChecker === 14){
            fill(255, 0, 43);
            rect(textX14, textY, 20, 20);
        }
        
        if(mouseX > textX15 && mouseX < textX15 + 18 && mouseY > textY && mouseY < textY + 18){
            if(mouseIsPressed){
                charactorChecker = 15;
            }
        }
        
        if(charactorChecker === 15){
            fill(255, 0, 43);
            rect(textX15, textY, 20, 20);
        }
        
        if(mouseX > textX16 && mouseX < textX16 + 18 && mouseY > textY && mouseY < textY + 18){
            if(mouseIsPressed){
                charactorChecker = 16;
            }
        }
        
        if(charactorChecker === 16){
            fill(255, 0, 43);
            rect(textX16, textY, 20, 20);
        }
        if(mouseX > textX17 && mouseX < textX17 + 18 && mouseY > textY && mouseY < textY + 18){
            if(mouseIsPressed){
                charactorChecker = 17;
            }
        }
        
        if(charactorChecker === 17){
            fill(255, 0, 43);
            rect(textX17, textY, 20, 20);
        }
        if(mouseX > textX18 && mouseX < textX18 + 18 && mouseY > textY && mouseY < textY + 18){
            if(mouseIsPressed){
                charactorChecker = 18;
            }
        }
        
        if(charactorChecker === 18){
            fill(255, 0, 43);
            rect(textX18, textY, 20, 20);
        }
        if(mouseX > textX && mouseX < textX + 18 && mouseY > textY1 && mouseY < textY1 + 18){
            if(mouseIsPressed){
                charactorChecker = 19;
            }
        }
        
        if(charactorChecker === 19){
            fill(255, 0, 43);
            rect(textX, textY1, 20, 20);
        }
        if(mouseX > textX1 && mouseX < textX1 + 18 && mouseY > textY1 && mouseY < textY1 + 18){
            if(mouseIsPressed){
                charactorChecker = 20;
            }
        }
        
        if(charactorChecker === 20){
            fill(255, 0, 43);
            rect(textX1, textY1, 20, 20);
        }
        if(mouseX > textX2 && mouseX < textX2 + 18 && mouseY > textY1 && mouseY < textY1 + 18){
            if(mouseIsPressed){
                charactorChecker = 21;
            }
        }
        
        if(charactorChecker === 21){
            fill(255, 0, 43);
            rect(textX2, textY1, 20, 20);
        }
        
        if(mouseX > textX3 && mouseX < textX3 + 18 && mouseY > textY1 && mouseY < textY1 + 18){
            if(mouseIsPressed){
                charactorChecker = 22;
            }
        }
        
        if(charactorChecker === 22){
            fill(255, 0, 43);
            rect(textX3, textY1, 20, 20);
        }
        if(mouseX > textX4 && mouseX < textX4 + 18 && mouseY > textY1 && mouseY < textY1 + 18){
            if(mouseIsPressed){
                charactorChecker = 23;
            }
        }
        
        if(charactorChecker === 23){
            fill(255, 0, 43);
            rect(textX4, textY1, 20, 20);
        }
        
        if(mouseX > textX5 && mouseX < textX5 + 18 && mouseY > textY1 && mouseY < textY1 + 18){
            if(mouseIsPressed){
                charactorChecker = 24;
            }
        }
        
        if(charactorChecker === 24){
            fill(255, 0, 43);
            rect(textX5, textY1, 20, 20);
        }
        
        if(mouseX > textX6 && mouseX < textX6 + 18 && mouseY > textY1 && mouseY < textY1 + 18){
            if(mouseIsPressed){
                charactorChecker = 25;
            }
        }
        
        if(charactorChecker === 25){
            fill(255, 0, 43);
            rect(textX6, textY1, 20, 20);
        }
        if(mouseX > textX7 && mouseX < textX7 + 18 && mouseY > textY1 && mouseY < textY1 + 18){
            if(mouseIsPressed){
                charactorChecker = 26;
            }
        }
        
        if(charactorChecker === 26){
            fill(255, 0, 43);
            rect(textX7, textY1, 20, 20);
        }
        if(mouseX > textX8 && mouseX < textX8 + 18 && mouseY > textY1 && mouseY < textY1 + 18){
            if(mouseIsPressed){
                charactorChecker = 27;
            }
        }
        
        if(charactorChecker === 27){
            fill(255, 0, 43);
            rect(textX8, textY1, 20, 20);
        }
        if(mouseX > textX9 && mouseX < textX9 + 18 && mouseY > textY1 && mouseY < textY1 + 18){
            if(mouseIsPressed){
                charactorChecker = 28;
            }
        }
        
        if(charactorChecker === 28){
            fill(255, 0, 43);
            rect(textX9, textY1, 20, 20);
        }
        if(mouseX > textX10 && mouseX < textX10 + 18 && mouseY > textY1 && mouseY < textY1 + 18){
            if(mouseIsPressed){
                charactorChecker = 29;
            }
        }
        
        if(charactorChecker === 29){
            fill(255, 0, 43);
            rect(textX10, textY1, 20, 20);
        }
        
        if(mouseX > textX11 && mouseX < textX11 + 18 && mouseY > textY1 && mouseY < textY1 + 18){
            if(mouseIsPressed){
                charactorChecker = 30;
            }
        }
        
        if(charactorChecker === 30){
            fill(255, 0, 43);
            rect(textX11, textY1, 20, 20);
        }
        if(mouseX > textX12 && mouseX < textX12 + 18 && mouseY > textY1 && mouseY < textY1 + 18){
            if(mouseIsPressed){
                charactorChecker = 31;
            }
        }
        
        if(charactorChecker === 31){
            fill(255, 0, 43);
            rect(textX12, textY1, 20, 20);
        }
        if(mouseX > textX13 && mouseX < textX13 + 18 && mouseY > textY1 && mouseY < textY1 + 18){
            if(mouseIsPressed){
                charactorChecker = 32;
            }
        }
        
        if(charactorChecker === 32){
            fill(255, 0, 43);
            rect(textX13, textY1, 20, 20);
        }
        if(mouseX > textX14 && mouseX < textX14 + 18 && mouseY > textY1 && mouseY < textY1 + 18){
            if(mouseIsPressed){
                charactorChecker = 33;
            }
        }
        
        if(charactorChecker === 33){
            fill(255, 0, 43);
            rect(textX14, textY1, 20, 20);
        }
        
        if(mouseX > textX15 && mouseX < textX15 + 18 && mouseY > textY1 && mouseY < textY1 + 18){
            if(mouseIsPressed){
                charactorChecker = 34;
            }
        }
        
        if(charactorChecker === 34){
            fill(255, 0, 43);
            rect(textX15, textY1, 20, 20);
        }
        
        if(mouseX > textX16 && mouseX < textX16 + 18 && mouseY > textY1 && mouseY < textY1 + 18){
            if(mouseIsPressed){
                charactorChecker = 35;
            }
        }
        
        if(charactorChecker === 35){
            fill(255, 0, 43);
            rect(textX16, textY1, 20, 20);
        }
        if(mouseX > textX17 && mouseX < textX17 + 18 && mouseY > textY1 && mouseY < textY1 + 18){
            if(mouseIsPressed){
                charactorChecker = 36;
            }
        }
        
        if(charactorChecker === 36){
            fill(255, 0, 43);
            rect(textX17, textY1, 20, 20);
        }
        if(mouseX > textX18 && mouseX < textX18 + 18 && mouseY > textY1 && mouseY < textY1 + 18){
            if(mouseIsPressed){
                charactorChecker = 37;
            }
        }
        
        if(charactorChecker === 37){
            fill(255, 0, 43);
            rect(textX18, textY1, 20, 20);
        }
        if(mouseX > textX && mouseX < textX + 18 && mouseY > textY2 && mouseY < textY2 + 18){
            if(mouseIsPressed){
                charactorChecker = 38;
            }
        }
        
        if(charactorChecker === 38){
            fill(255, 0, 43);
            rect(textX, textY2, 20, 20);
        }
        
            if(mouseX > textX1 && mouseX < textX1 + 18 && mouseY > textY2 && mouseY < textY2 + 18){
            if(mouseIsPressed){
                charactorChecker = 39;
            }
        }
        
        if(charactorChecker === 39){
            fill(255, 0, 43);
            rect(textX1, textY2, 20, 20);
        }
        
            if(mouseX > textX2 && mouseX < textX2 + 18 && mouseY > textY2 && mouseY < textY2 + 18){
            if(mouseIsPressed){
                charactorChecker = 40;
            }
        }
        
        if(charactorChecker === 40){
            fill(255, 0, 43);
            rect(textX2, textY2, 20, 20);
        }
        
            if(mouseX > textX3 && mouseX < textX3 + 18 && mouseY > textY2 && mouseY < textY2 + 18){
            if(mouseIsPressed){
                charactorChecker = 41;
            }
        }
        
        if(charactorChecker === 41){
            fill(255, 0, 43);
            rect(textX3, textY2, 20, 20);
        }
        
            if(mouseX > textX4 && mouseX < textX4 + 18 && mouseY > textY2 && mouseY < textY2 + 18){
            if(mouseIsPressed){
                charactorChecker = 42;
            }
        }
        
        if(charactorChecker === 42){
            fill(255, 0, 43);
            rect(textX4, textY2, 20, 20);
        }
        
            if(mouseX > textX5 && mouseX < textX5 + 18 && mouseY > textY2 && mouseY < textY2 + 18){
            if(mouseIsPressed){
                charactorChecker = 43;
            }
        }
        
        if(charactorChecker === 43){
            fill(255, 0, 43);
            rect(textX5, textY2, 20, 20);
        }
        
            if(mouseX > textX6 && mouseX < textX6 + 18 && mouseY > textY2 && mouseY < textY2 + 18){
            if(mouseIsPressed){
                charactorChecker = 44;
            }
        }
        
        if(charactorChecker === 44){
            fill(255, 0, 43);
            rect(textX6, textY2, 20, 20);
        }
        
            if(mouseX > textX7 && mouseX < textX7 + 18 && mouseY > textY2 && mouseY < textY2 + 18){
            if(mouseIsPressed){
                charactorChecker = 45;
            }
        }
        
        if(charactorChecker === 45){
            fill(255, 0, 43);
            rect(textX7, textY2, 20, 20);
        }
        
            if(mouseX > textX8 && mouseX < textX8 + 18 && mouseY > textY2 && mouseY < textY2 + 18){
            if(mouseIsPressed){
                charactorChecker = 46;
            }
        }
        
        if(charactorChecker === 46){
            fill(255, 0, 43);
            rect(textX8, textY2, 20, 20);
        }
        
        if(mouseX > textX && mouseX < textX + 18 && mouseY > textY && mouseY < textY + 18){
            if(mouseIsPressed){
                charactorChecker = 0;
            }
        }
        
        if(charactorChecker === 47){
            fill(255, 0, 43);
            rect(textX9 - 2, textY2 - 2, 20, 20);
        }
        
        if(mouseX > textX9 && mouseX < textX9 + 18 && mouseY > textY2 && mouseY < textY2 + 18){
            if(mouseIsPressed){
                charactorChecker = 47;
            }
        }
        if(charactorChecker === 48){
            fill(255, 0, 43);
            rect(textX10 - 2, textY2 - 2, 20, 20);
        }
        
        if(mouseX > textX10 && mouseX < textX10 + 18 && mouseY > textY2 && mouseY < textY2 + 18){
            if(mouseIsPressed){
                charactorChecker = 48;
            }
        }
        
                if(charactorChecker === 49){
            fill(255, 0, 43);
            rect(textX11 - 2, textY2 - 2, 20, 20);
        }
        
        if(mouseX > textX11 && mouseX < textX11 + 18 && mouseY > textY2 && mouseY < textY2 + 18){
            if(mouseIsPressed){
                charactorChecker = 49;
            }
        }
        if(charactorChecker === 50){
            fill(255, 0, 43);
            rect(textX12 - 2, textY2 - 2, 20, 20);
        }
        
        if(mouseX > textX12 && mouseX < textX12 + 18 && mouseY > textY2 && mouseY < textY2 + 18){
            if(mouseIsPressed){
                charactorChecker = 50;
            }
        }
        
        if(charactorChecker === 51){
            fill(255, 0, 43);
            rect(textX13 - 2, textY2 - 2, 20, 20);
        }
        
        if(mouseX > textX13 && mouseX < textX13 + 18 && mouseY > textY2 && mouseY < textY2 + 18){
            if(mouseIsPressed){
                charactorChecker = 51;
            }
        }
        if(charactorChecker === 52){
            fill(255, 0, 43);
            rect(textX14 - 2, textY2 - 2, 20, 20);
        }
        
        if(mouseX > textX14 && mouseX < textX14 + 18 && mouseY > textY2 && mouseY < textY2 + 18){
            if(mouseIsPressed){
                charactorChecker = 52;
            }
        }
        
        if(charactorChecker === 53){
            fill(255, 0, 43);
            rect(textX15 - 2, textY2 - 2, 20, 20);
        }
        
        if(mouseX > textX15 && mouseX < textX15 + 18 && mouseY > textY2 && mouseY < textY2 + 18){
            if(mouseIsPressed){
                charactorChecker = 53;
            }
        }
        if(charactorChecker === 54){
            fill(255, 0, 43);
            rect(textX16 - 2, textY2 - 2, 20, 20);
        }
        
        if(mouseX > textX16 && mouseX < textX16 + 18 && mouseY > textY2 && mouseY < textY2 + 18){
            if(mouseIsPressed){
                charactorChecker = 54;
            }
        }
        
        if(charactorChecker === 55){
            fill(255, 0, 43);
            rect(textX17 - 2, textY2 - 2, 20, 20);
        }
        
        if(mouseX > textX17 && mouseX < textX17 + 18 && mouseY > textY2 && mouseY < textY2 + 18){
            if(mouseIsPressed){
                charactorChecker = 55;
            }
        }
        if(charactorChecker === 56){
            fill(255, 0, 43);
            rect(textX18 - 2, textY2 - 2, 20, 20);
        }
        
        if(mouseX > textX18 && mouseX < textX18 + 18 && mouseY > textY2 && mouseY < textY2 + 18){
            if(mouseIsPressed){
                charactorChecker = 56;
            }
        }
        
        if(charactorChecker === 57){
            fill(255, 0, 43);
            rect(textX - 2, textY3 - 2, 20, 20);
        }
        
        if(mouseX > textX && mouseX < textX + 18 && mouseY > textY3 && mouseY < textY3 + 18){
            if(mouseIsPressed){
                charactorChecker = 57;
            }
        }
        if(charactorChecker === 58){
            fill(255, 0, 43);
            rect(textX1 - 2, textY3 - 2, 20, 20);
        }
        
        if(mouseX > textX1 && mouseX < textX1 + 18 && mouseY > textY3 && mouseY < textY3 + 18){
            if(mouseIsPressed){
                charactorChecker = 58;
            }
        }
        
        if(charactorChecker === 59){
            fill(255, 0, 43);
            rect(textX2 - 2, textY3 - 2, 20, 20);
        }
        
        if(mouseX > textX2 && mouseX < textX2 + 18 && mouseY > textY3 && mouseY < textY3 + 18){
            if(mouseIsPressed){
                charactorChecker = 59;
            }
        }
        if(charactorChecker === 60){
            fill(255, 0, 43);
            rect(textX3 - 2, textY3 - 2, 20, 20);
        }
        
        if(mouseX > textX3 && mouseX < textX3 + 18 && mouseY > textY3 && mouseY < textY3 + 18){
            if(mouseIsPressed){
                charactorChecker = 60;
            }
        }
        
        if(charactorChecker === 61){
            fill(255, 0, 43);
            rect(textX4 - 2, textY3 - 2, 20, 20);
        }
        
        if(mouseX > textX4 && mouseX < textX4 + 18 && mouseY > textY3 && mouseY < textY3 + 18){
            if(mouseIsPressed){
                charactorChecker = 61;
            }
        }
        if(charactorChecker === 62){
            fill(255, 0, 43);
            rect(textX5 - 2, textY3 - 2, 20, 20);
        }
        
        if(mouseX > textX5 && mouseX < textX5 + 18 && mouseY > textY3 && mouseY < textY3 + 18){
            if(mouseIsPressed){
                charactorChecker = 62;
            }
        }
        
        if(charactorChecker === 63){
            fill(255, 0, 43);
            rect(textX6 - 2, textY3 - 2, 20, 20);
        }
        
        if(mouseX > textX6 && mouseX < textX6 + 18 && mouseY > textY3 && mouseY < textY3 + 18){
            if(mouseIsPressed){
                charactorChecker = 63;
            }
        }
        
        if(charactorChecker === 64){
            fill(255, 0, 43);
            rect(textX7 - 2, textY3 - 2, 20, 20);
        }
        
        if(mouseX > textX7 && mouseX < textX7 + 18 && mouseY > textY3 && mouseY < textY3 + 18){
            if(mouseIsPressed){
                charactorChecker = 64;
            }
        }
        
        if(charactorChecker === 65){
            fill(255, 0, 43);
            rect(textX8 - 2, textY3 - 2, 20, 20);
        }
        
        if(mouseX > textX8 && mouseX < textX8 + 18 && mouseY > textY3 && mouseY < textY3 + 18){
            if(mouseIsPressed){
                charactorChecker = 65;
            }
        }
        if(charactorChecker === 66){
            fill(255, 0, 43);
            rect(textX9 - 2, textY3 - 2, 20, 20);
        }
        
        if(mouseX > textX9 && mouseX < textX9 + 18 && mouseY > textY3 && mouseY < textY3 + 18){
            if(mouseIsPressed){
                charactorChecker = 66;
            }
        }
        
        if(charactorChecker === 67){
            fill(255, 0, 43);
            rect(textX10 - 2, textY3 - 2, 20, 20);
        }
        
        if(mouseX > textX10 && mouseX < textX10 + 18 && mouseY > textY3 && mouseY < textY3 + 18){
            if(mouseIsPressed){
                charactorChecker = 67;
            }
        }
        if(charactorChecker === 68){
            fill(255, 0, 43);
            rect(textX11 - 2, textY3 - 2, 20, 20);
        }
        
        if(mouseX > textX11 && mouseX < textX11 + 18 && mouseY > textY3 && mouseY < textY3 + 18){
            if(mouseIsPressed){
                charactorChecker = 68;
            }
        }
        if(charactorChecker === 69){
            fill(255, 0, 43);
            rect(textX11 - 2, textY3 - 2, 20, 20);
        }
        
        if(mouseX > textX11 && mouseX < textX11 + 18 && mouseY > textY3 && mouseY < textY3 + 18){
            if(mouseIsPressed){
                charactorChecker = 69;
            }
        }
        if(charactorChecker === 70){
            fill(255, 0, 43);
            rect(textX12 - 2, textY3 - 2, 20, 20);
        }
        
        if(mouseX > textX12 && mouseX < textX12 + 18 && mouseY > textY3 && mouseY < textY3 + 18){
            if(mouseIsPressed){
                charactorChecker = 71;
            }
        }
        
        if(charactorChecker === 72){
            fill(255, 0, 43);
            rect(textX13 - 2, textY3 - 2, 20, 20);
        }
        
        if(mouseX > textX13 && mouseX < textX13 + 18 && mouseY > textY3 && mouseY < textY3 + 18){
            if(mouseIsPressed){
                charactorChecker = 72;
            }
        }
        if(charactorChecker === 73){
            fill(255, 0, 43);
            rect(textX14 - 2, textY3 - 2, 20, 20);
        }
        
        if(mouseX > textX15 && mouseX < textX15 + 18 && mouseY > textY3 && mouseY < textY3 + 18){
            if(mouseIsPressed){
                charactorChecker = 73;
            }
        }
        
        if(charactorChecker === 74){
            fill(255, 0, 43);
            rect(textX16 - 2, textY3 - 2, 20, 20);
        }
        
        if(mouseX > textX16 && mouseX < textX16 + 18 && mouseY > textY3 && mouseY < textY3 + 18){
            if(mouseIsPressed){
                charactorChecker = 74;
            }
        }
        if(charactorChecker === 75){
            fill(255, 0, 43);
            rect(textX17 - 2, textY3 - 2, 20, 20);
        }
        
        if(mouseX > textX17 && mouseX < textX17 + 18 && mouseY > textY3 && mouseY < textY3 + 18){
            if(mouseIsPressed){
                charactorChecker = 75;
            }
        }
        
        if(charactorChecker === 76){
            fill(255, 0, 43);
            rect(textX18 - 2, textY3 - 2, 20, 20);
        }
        
        if(mouseX > textX18 && mouseX < textX18 + 18 && mouseY > textY3 && mouseY < textY3 + 18){
            if(mouseIsPressed){
                charactorChecker = 76;
            }
        }
        if(charactorChecker === 77){
            fill(255, 0, 43);
            rect(textX - 2, textY4 - 2, 20, 20);
        }
        
        if(mouseX > textX && mouseX < textX + 18 && mouseY > textY4 && mouseY < textY4 + 18){
            if(mouseIsPressed){
                charactorChecker = 77;
            }
        }
        
        if(charactorChecker === 78){
            fill(255, 0, 43);
            rect(textX1 - 2, textY4 - 2, 20, 20);
        }
        
        if(mouseX > textX2 && mouseX < textX2 + 18 && mouseY > textY4 && mouseY < textY4 + 18){
            if(mouseIsPressed){
                charactorChecker = 78;
            }
        }
        if(charactorChecker === 79){
            fill(255, 0, 43);
            rect(textX3 - 2, textY4 - 2, 20, 20);
        }
        
        if(mouseX > textX3 && mouseX < textX3 + 18 && mouseY > textY4 && mouseY < textY4 + 18){
            if(mouseIsPressed){
                charactorChecker = 79;
            }
        }
        
        if(charactorChecker === 80){
            fill(255, 0, 43);
            rect(textX4 - 2, textY4 - 2, 20, 20);
        }
        
        if(mouseX > textX4 && mouseX < textX4 + 18 && mouseY > textY4 && mouseY < textY4 + 18){
            if(mouseIsPressed){
                charactorChecker = 80;
            }
        }
        if(charactorChecker === 81){
            fill(255, 0, 43);
            rect(textX5 - 2, textY4 - 2, 20, 20);
        }
        
        if(mouseX > textX5 && mouseX < textX5 + 18 && mouseY > textY4 && mouseY < textY4 + 18){
            if(mouseIsPressed){
                charactorChecker = 81;
            }
        }
        
        if(charactorChecker === 82){
            fill(255, 0, 43);
            rect(textX6 - 2, textY4 - 2, 20, 20);
        }
        
        if(mouseX > textX6 && mouseX < textX6 + 18 && mouseY > textY4 && mouseY < textY4 + 18){
            if(mouseIsPressed){
                charactorChecker = 82;
            }
        }
        if(charactorChecker === 83){
            fill(255, 0, 43);
            rect(textX7 - 2, textY4 - 2, 20, 20);
        }
        
        if(mouseX > textX7 && mouseX < textX7 + 18 && mouseY > textY4 && mouseY < textY4 + 18){
            if(mouseIsPressed){
                charactorChecker = 83;
            }
        }
        
        if(charactorChecker === 84){
            fill(255, 0, 43);
            rect(textX8 - 2, textY4 - 2, 20, 20);
        }
        
        if(mouseX > textX8 && mouseX < textX8 + 18 && mouseY > textY4 && mouseY < textY4 + 18){
            if(mouseIsPressed){
                charactorChecker = 84;
            }
        }
        if(charactorChecker === 85){
            fill(255, 0, 43);
            rect(textX9 - 2, textY4 - 2, 20, 20);
        }
        
        if(mouseX > textX9 && mouseX < textX9 + 18 && mouseY > textY4 && mouseY < textY4 + 18){
            if(mouseIsPressed){
                charactorChecker = 85;
            }
        }
        
        if(charactorChecker === 86){
            fill(255, 0, 43);
            rect(textX10 - 2, textY4 - 2, 20, 20);
        }
        
        if(mouseX > textX10 && mouseX < textX10 + 18 && mouseY > textY4 && mouseY < textY4 + 18){
            if(mouseIsPressed){
                charactorChecker = 86;
            }
        }
        
        if(charactorChecker === 87){
            fill(255, 0, 43);
            rect(textX11 - 2, textY4 - 2, 20, 20);
        }
        
        if(mouseX > textX11 && mouseX < textX11 + 18 && mouseY > textY4 && mouseY < textY4 + 18){
            if(mouseIsPressed){
                charactorChecker = 87;
            }
        }
        
        if(charactorChecker === 88){
            fill(255, 0, 43);
            rect(textX12 - 2, textY4 - 2, 20, 20);
        }
        
        if(mouseX > textX12 && mouseX < textX12 + 18 && mouseY > textY4 && mouseY < textY4 + 18){
            if(mouseIsPressed){
                charactorChecker = 88;
            }
        }
        if(charactorChecker === 89){
            fill(255, 0, 43);
            rect(textX13 - 2, textY4 - 2, 20, 20);
        }
        
        if(mouseX > textX13 && mouseX < textX13 + 18 && mouseY > textY4 && mouseY < textY4 + 18){
            if(mouseIsPressed){
                charactorChecker = 89;
            }
        }
        
        if(charactorChecker === 90){
            fill(255, 0, 43);
            rect(textX14 - 2, textY4 - 2, 20, 20);
        }
        
        if(mouseX > textX14 && mouseX < textX14 + 18 && mouseY > textY4 && mouseY < textY4 + 18){
            if(mouseIsPressed){
                charactorChecker = 90;
            }
        }
        if(charactorChecker === 91){
            fill(255, 0, 43);
            rect(textX15 - 2, textY4 - 2, 20, 20);
        }
        
        if(mouseX > textX15 && mouseX < textX15 + 18 && mouseY > textY4 && mouseY < textY4 + 18){
            if(mouseIsPressed){
                charactorChecker = 91;
            }
        }
        if(charactorChecker === 92){
            fill(255, 0, 43);
            rect(textX16 - 2, textY4 - 2, 20, 20);
        }
        
        if(mouseX > textX16 && mouseX < textX16 + 18 && mouseY > textY4 && mouseY < textY4 + 18){
            if(mouseIsPressed){
                charactorChecker = 92;
            }
        }
        
        fill(0, 0, 0);
        text(charactorArray[0], textX, textY, textW, textH);
        text(charactorArray[1], textX1, textY, textW, textH);
        text(charactorArray[2], textX2, textY, textW, textH);
        text(charactorArray[3], textX3, textY, textW, textH);
        text(charactorArray[4], textX4, textY, textW, textH);
        text(charactorArray[5], textX5, textY, textW, textH);
        text(charactorArray[6], textX6, textY, textW, textH);
        text(charactorArray[7], textX7, textY, textW, textH);
        text(charactorArray[8], textX8, textY, textW, textH);
        text(charactorArray[9], textX9, textY, textW, textH);
        text(charactorArray[10], textX10, textY, textW, textH);
        text(charactorArray[11], textX11, textY, textW, textH);
        text(charactorArray[12], textX12, textY, textW, textH);
        text(charactorArray[13], textX13, textY, textW, textH);
        text(charactorArray[14], textX14, textY, textW, textH);
        text(charactorArray[15], textX15, textY, textW, textH);
        text(charactorArray[16], textX16, textY, textW, textH);
        text(charactorArray[17], textX17, textY, textW, textH);
        text(charactorArray[18], textX18, textY, textW, textH);
        text(charactorArray[19], textX, textY1, textW, textH);
        text(charactorArray[20], textX1, textY1, textW, textH);
        text(charactorArray[21], textX2, textY1, textW, textH);
        text(charactorArray[22], textX3, textY1, textW, textH);
        text(charactorArray[23], textX4, textY1, textW, textH);
        text(charactorArray[24], textX5, textY1, textW, textH);
        text(charactorArray[25], textX6, textY1, textW, textH);
        text(charactorArray[26], textX7, textY1, textW, textH);
        text(charactorArray[27], textX8, textY1, textW, textH);
        text(charactorArray[28], textX9, textY1, textW, textH);
        text(charactorArray[29], textX10, textY1, textW, textH);
        text(charactorArray[30], textX11, textY1, textW, textH);
        text(charactorArray[31], textX12, textY1, textW, textH);
        text(charactorArray[32], textX13, textY1, textW, textH);
        text(charactorArray[33], textX14, textY1, textW, textH);
        text(charactorArray[34], textX15, textY1, textW, textH);
        text(charactorArray[35], textX16, textY1, textW, textH);
        text(charactorArray[36], textX17, textY1, textW, textH);
        text(charactorArray[37], textX18, textY1, textW, textH);
        text(charactorArray[38], textX, textY2, textW, textH);
        text(charactorArray[39], textX1, textY2, textW, textH);
        text(charactorArray[40], textX2, textY2, textW, textH);
        text(charactorArray[41], textX3, textY2, textW, textH);
        text(charactorArray[42], textX4, textY2, textW, textH);
        text(charactorArray[43], textX5, textY2, textW, textH);
        text(charactorArray[44], textX6, textY2, textW, textH);
        text(charactorArray[45], textX7, textY2, textW, textH);
        text(charactorArray[46], textX8, textY2, textW, textH);
        
        text(KatakanaArray[0], textX9, textY2, textW, textH);
        text(KatakanaArray[1], textX10, textY2, textW, textH);
        text(KatakanaArray[2], textX11, textY2, textW, textH);
        text(KatakanaArray[3], textX12, textY2, textW, textH);
        text(KatakanaArray[4], textX13, textY2, textW, textH);
        text(KatakanaArray[5], textX14, textY2, textW, textH);
        text(KatakanaArray[6], textX15, textY2, textW, textH);
        text(KatakanaArray[7], textX16, textY2, textW, textH);
        text(KatakanaArray[8], textX17, textY2, textW, textH);
        text(KatakanaArray[9], textX18, textY2, textW, textH);
        text(KatakanaArray[10], textX, textY3, textW, textH);
        text(KatakanaArray[11], textX1, textY3, textW, textH);
        text(KatakanaArray[12], textX2, textY3, textW, textH);
        text(KatakanaArray[13], textX3, textY3, textW, textH);
        text(KatakanaArray[14], textX4, textY3, textW, textH);
        text(KatakanaArray[15], textX5, textY3, textW, textH);
        text(KatakanaArray[16], textX6, textY3, textW, textH);
        text(KatakanaArray[17], textX7, textY3, textW, textH);
        text(KatakanaArray[18], textX8, textY3, textW, textH);
        text(KatakanaArray[19], textX9, textY3, textW, textH);
        text(KatakanaArray[20], textX10, textY3, textW, textH);
        text(KatakanaArray[21], textX11, textY3, textW, textH);
        text(KatakanaArray[22], textX12, textY3, textW, textH);
        text(KatakanaArray[23], textX13, textY3, textW, textH);
        text(KatakanaArray[24], textX14, textY3, textW, textH);
        text(KatakanaArray[25], textX15, textY3, textW, textH);
        text(KatakanaArray[26], textX16, textY3, textW, textH);
        text(KatakanaArray[27], textX17, textY3, textW, textH);
        text(KatakanaArray[28], textX18, textY3, textW, textH);
        text(KatakanaArray[29], textX, textY4, textW, textH);
        text(KatakanaArray[30], textX1, textY4, textW, textH);
        text(KatakanaArray[31], textX2, textY4, textW, textH);
        text(KatakanaArray[32], textX3, textY4, textW, textH);
        text(KatakanaArray[33], textX4, textY4, textW, textH);
        text(KatakanaArray[34], textX5, textY4, textW, textH);
        text(KatakanaArray[35], textX6, textY4, textW, textH);
        text(KatakanaArray[36], textX7, textY4, textW, textH);
        text(KatakanaArray[37], textX8, textY4, textW, textH);
        text(KatakanaArray[38], textX9, textY4, textW, textH);
        text(KatakanaArray[39], textX10, textY4, textW, textH);
        text(KatakanaArray[40], textX11, textY4, textW, textH);
        text(KatakanaArray[41], textX12, textY4, textW, textH);
        text(KatakanaArray[42], textX13, textY4, textW, textH);
        text(KatakanaArray[43], textX14, textY4, textW, textH);
        text(KatakanaArray[44], textX15, textY4, textW, textH);
        text(KatakanaArray[45], textX16, textY4, textW, textH);
        text(KatakanaArray[46], textX17, textY4, textW, textH);
    
        textSize(40);
        text(soundArray[t], 200, 200, 400, 400);
        
        textSize(15);
        text("Score: "+score, 2, 360, 200, 200);
        text("Wrong: "+wrong, 2, 320, 200, 200);
        text("Correct: "+correct, 2, 280, 200, 200);
        
        if(correctDis === 1){
            fill(random(0, 255), random(0, 255), random(0, 255));
            textSize(40);
            text("Correct",150, 150, 200, 200);
        }
        
        if(wrongDis === 1){
            fill(random(0, 255), random(0, 255), random(0, 255));
            textSize(40);
            text("Wrong",150, 150, 200, 200);
        }
    
        if(correctNum === 1){
            score += 50;
            correct++;
            correctDis = 1;
            correctNum = 0;
            waitStart = 0;
        }
        
        if(correctNum === 2){
            score -= score/2;
            wrong++;
            wrongDis = 1;
            correctNum = 0;
            waitStart = 0;
        }
    }
    if(currentScene === 2){
         background(255, 255, 255);
    checkButton();
    fill(0, 0, 0);
    textSize(40);
    text(charactorArray[t], 190, 270, 100, 100);
    text(soundArray[s], 190, 50, 100, 100);
    textSize(20);
    text("Check", rectX + 10, rectY2 + 7, 100, 100);
    text("Correct: "+correct, 2, 2, 300, 300);
    text("Wrong: "+wrong, 2, 40, 300, 300);
    text("Score: "+score, 2, 80, 300, 300);
    
    if(mouseX > rectX && mouseX < rectX + rectW && mouseY > rectY2 && mouseY < rectY2 + rectH){
        c = 255;
        if(mouseIsPressed && t === s){
            checkAct = 1;
            s = floor(random(0, soundArray.length + 1));
            wrongStopper = 1;
        }else{
            if(mouseIsPressed && t !== s && wrongStopper === 0){
                checkAct = 2;
                wrongStopper = 1;
            }
        }
    }else{
        c = 0;
    }
    
    if(checkAct === 1){
        score += 50;
        correct += 1;
        textSize(40);
        fill(random(0, 255), random(0, 255), random(0, 255));
        text("Nice!", 160, 190, 200, 200);
        checkAct = 0;
        noLoop();
    }
    if(checkAct === 2){
        wrong += 1;
        score -= 20;
        textSize(40);
        text("Wrong!", 160, 190, 200, 200);
        checkAct = 0;
        noLoop();
    }
    if(score < 0){
        score = 0;
    }
    }
    if(currentScene === 3){
            if(gameStart === 1){
        aScene();
        if(mouseX > y && mouseX < y + 20 && mouseY > x && mouseY < x + 20){
            if(mouseIsPressed && gameStopper === 0){
                if(randomSelector === 0){
                   println("RIGHT!!!");
                   score += 20;
                   numCorrect++;
                   gameStopper = 1;
                }else if(randomSelector === 10){
                    println("RIGHT!!!");
                                    score += 20;
                   numCorrect++;
                                      gameStopper = 1;
                }else if(randomSelector === 20){
                    println("RIGHT!!!");
                              score += 20;
                   numCorrect++;
                                      gameStopper = 1;
                }else if(randomSelector === 30){
                    println("RIGHT!!!");
                          score += 20;
                   numCorrect++;
                                      gameStopper = 1;
                }else if(randomSelector === 40){
                    println("RIGHT!!!");
                      score += 20;
                   numCorrect++;
                                      gameStopper = 1;
                }else{
                    if(aSceneSelector === 0){
                        println("WRONG!!! " +soundArray[randomSelector]);
                    }
                    if(aSceneSelector === 1){
                        println("WRONG!!! "+charactorArray[randomSelector]);
                    }
                    score -= 20;
                   numWrong++;
                                      gameStopper = 1;
                    
                }
            }    
        }
        
                if(mouseX > y1 && mouseX < y1 + 20 && mouseY > x && mouseY < x + 20){
            if(mouseIsPressed && gameStopper === 0){
                if(randomSelector === 1){
                   println("RIGHT!!!");
                                      score += 20;
                   numCorrect++;
                                      gameStopper = 1;
                }else if(randomSelector === 11){
                    println("RIGHT!!!");
                                       score += 20;
                   numCorrect++;
                                      gameStopper = 1;
                }else if(randomSelector === 21){
                    println("RIGHT!!!");
                                       score += 20;
                   numCorrect++;
                                      gameStopper = 1;
                }else if(randomSelector === 31){
                    println("RIGHT!!!");
                                       score += 20;
                   numCorrect++;
                                      gameStopper = 1;
                }else if(randomSelector === 41){
                    println("RIGHT!!!");
                                       score += 20;
                   numCorrect++;
                                      gameStopper = 1;
                }else{
                    if(aSceneSelector === 0){
                        println("WRONG!!! " +soundArray[randomSelector]);
                    }
                    if(aSceneSelector === 1){
                        println("WRONG!!! "+charactorArray[randomSelector]);
                    }                
                    score -= 20;
                   numWrong++;
                                      gameStopper = 1;
                }
            }    
        }
        
                if(mouseX > y2 && mouseX < y2 + 20 && mouseY > x && mouseY < x + 20){
            if(mouseIsPressed && gameStopper === 0){
                if(randomSelector === 2){
                   println("RIGHT!!!");
                                      score += 20;
                   numCorrect++;
                                      gameStopper = 1;
                }else if(randomSelector === 12){
                    println("RIGHT!!!");
                                       score += 20;
                   numCorrect++;
                                      gameStopper = 1;
                }else if(randomSelector === 22){
                    println("RIGHT!!!");
                                       score += 20;
                   numCorrect++;
                                      gameStopper = 1;
                }else if(randomSelector === 32){
                    println("RIGHT!!!");
                                       score += 20;
                   numCorrect++;
                                      gameStopper = 1;
                }else if(randomSelector === 42){
                    println("RIGHT!!!");
                                       score += 20;
                   numCorrect++;
                                      gameStopper = 1;
                }else{
                    if(aSceneSelector === 0){
                        println("WRONG!!! " +soundArray[randomSelector]);
                    }
                    if(aSceneSelector === 1){
                        println("WRONG!!! "+charactorArray[randomSelector]);
                    }
                                       score -= 20;
                   numWrong++;
                                      gameStopper = 1;
                }
            }    
        }
        
                if(mouseX > y && mouseX < y + 20 && mouseY > x2 && mouseY < x2 + 20){
            if(mouseIsPressed && gameStopper === 0){
                if(randomSelector === 3){
                   println("RIGHT!!!");
                                      score += 20;
                   numCorrect++;
                                      gameStopper = 1;
                }else if(randomSelector === 13){
                    println("RIGHT!!!");
                                       score += 20;
                   numCorrect++;
                                      gameStopper = 1;
                }else if(randomSelector === 23){
                    println("RIGHT!!!");
                                       score += 20;
                   numCorrect++;
                                      gameStopper = 1;
                }else if(randomSelector === 33){
                    println("RIGHT!!!");
                                       score += 20;
                   numCorrect++;
                                      gameStopper = 1;
                }else if(randomSelector === 43){
                    println("RIGHT!!!");
                                       score += 20;
                   numCorrect++;
                                      gameStopper = 1;
                }else{
                    if(aSceneSelector === 0){
                        println("WRONG!!! " +soundArray[randomSelector]);
                    }
                    if(aSceneSelector === 1){
                        println("WRONG!!! "+charactorArray[randomSelector]);
                    }
                                       score -= 20;
                   numWrong++;
                                      gameStopper = 1;
                }
            }    
        }
        
                if(mouseX > y1 && mouseX < y1 + 20 && mouseY > x2 && mouseY < x2 + 20){
            if(mouseIsPressed && gameStopper === 0){
                if(randomSelector === 4){
                   println("RIGHT!!!");
                                      score += 20;
                   numCorrect++;
                                      gameStopper = 1;
                }else if(randomSelector === 14){
                    println("RIGHT!!!");
                                       score += 20;
                   numCorrect++;
                                      gameStopper = 1;
                }else if(randomSelector === 24){
                    println("RIGHT!!!");
                                       score += 20;
                   numCorrect++;
                                      gameStopper = 1;
                }else if(randomSelector === 34){
                    println("RIGHT!!!");
                                       score += 20;
                   numCorrect++;
                                      gameStopper = 1;
                }else if(randomSelector === 44){
                    println("RIGHT!!!");
                                       score += 20;
                   numCorrect++;
                                      gameStopper = 1;
                }else{
                    if(aSceneSelector === 0){
                        println("WRONG!!! " +soundArray[randomSelector]);
                    }
                    if(aSceneSelector === 1){
                        println("WRONG!!! "+charactorArray[randomSelector]);
                    }
                                       score -= 20;
                   numWrong++;
                                      gameStopper = 1;
                }
            }    
        }
        
                if(mouseX > y2 && mouseX < y2 + 20 && mouseY > x2 && mouseY < x2 + 20){
            if(mouseIsPressed && gameStopper === 0){
                 if(randomSelector === 5){
                   println("RIGHT!!!");
                                      score += 20;
                   numCorrect++;
                                      gameStopper = 1;
                }else if(randomSelector === 15){
                    println("RIGHT!!!");
                                       score += 20;
                   numCorrect++;
                                      gameStopper = 1;
                }else if(randomSelector === 25){
                    println("RIGHT!!!");
                                       score += 20;
                   numCorrect++;
                                      gameStopper = 1;
                }else if(randomSelector === 35){
                    println("RIGHT!!!");
                                       score += 20;
                   numCorrect++;
                                      gameStopper = 1;
                }else if(randomSelector === 45){
                    println("RIGHT!!!");
                                       score += 20;
                   numCorrect++;
                                      gameStopper = 1;
                }else{
                    if(aSceneSelector === 0){
                        println("WRONG!!! " +soundArray[randomSelector]);
                    }
                    if(aSceneSelector === 1){
                        println("WRONG!!! "+charactorArray[randomSelector]);
                    }
                                       score -= 20;
                   numWrong++;
                                      gameStopper = 1;
                }
            }    
        }
        
                if(mouseX > y && mouseX < y + 20 && mouseY > x1 && mouseY < x1 + 20){
            if(mouseIsPressed && gameStopper === 0){
                if(randomSelector === 6){
                   println("RIGHT!!!");
                                      score += 20;
                   numCorrect++;
                                      gameStopper = 1;
                }else if(randomSelector === 16){
                    println("RIGHT!!!");
                                       score += 20;
                   numCorrect++;
                                      gameStopper = 1;
                }else if(randomSelector === 26){
                    println("RIGHT!!!");
                                       score += 20;
                   numCorrect++;
                                      gameStopper = 1;
                }else if(randomSelector === 36){
                    println("RIGHT!!!");
                                       score += 20;
                   numCorrect++;
                                      gameStopper = 1;
                }else if(randomSelector === 46){
                    println("RIGHT!!!");
                                       score += 20;
                   numCorrect++;
                                      gameStopper = 1;
                }else{
                    if(aSceneSelector === 0){
                        println("WRONG!!! " +soundArray[randomSelector]);
                    }
                    if(aSceneSelector === 1){
                        println("WRONG!!! "+charactorArray[randomSelector]);
                    }
                                       score -= 20;
                   numWrong++;
                                      gameStopper = 1;
                }
            }    
        }
        
                if(mouseX > y1 && mouseX < y1 + 20 && mouseY > x1 && mouseY < x1 + 20){
            if(mouseIsPressed && gameStopper === 0){
                if(randomSelector === 7){
                   println("RIGHT!!!"); 
                                      score += 20;
                   numCorrect++;
                                      gameStopper = 1;
                }else if(randomSelector === 17){
                    println("RIGHT!!!");
                                       score += 20;
                   numCorrect++;
                                      gameStopper = 1;
                }else if(randomSelector === 27){
                    println("RIGHT!!!");
                                       score += 20;
                   numCorrect++;
                                      gameStopper = 1;
                }else if(randomSelector === 37){
                    println("RIGHT!!!");
                                       score += 20;
                   numCorrect++;
                                      gameStopper = 1;
                }else if(randomSelector === 47){
                    println("RIGHT!!!");
                                       score += 20;
                   numCorrect++;
                                      gameStopper = 1;
                }else{
                    if(aSceneSelector === 0){
                        println("WRONG!!! " +soundArray[randomSelector]);
                    }
                    if(aSceneSelector === 1){
                        println("WRONG!!! "+charactorArray[randomSelector]);
                    }
                                       score -= 20;
                   numWrong++;
                                      gameStopper = 1;
                }
            }    
        }
        
                if(mouseX > y2 && mouseX < y2 + 20 && mouseY > x1 && mouseY < x1 + 20){
            if(mouseIsPressed && gameStopper === 0){
                if(randomSelector === 8){
                   println("RIGHT!!!"); 
                                      score += 20;
                   numCorrect++;
                                      gameStopper = 1;
                }else if(randomSelector === 18){
                    println("RIGHT!!!");
                                       score += 20;
                   numCorrect++;
                                      gameStopper = 1;
                }else if(randomSelector === 28){
                    println("RIGHT!!!");
                                       score += 20;
                   numCorrect++;
                                      gameStopper = 1;
                }else if(randomSelector === 38){
                    println("RIGHT!!!");
                                       score += 20;
                   numCorrect++;
                                      gameStopper = 1;
                }else{
                    if(aSceneSelector === 0){
                        println("WRONG!!! " +soundArray[randomSelector]);
                    }
                    if(aSceneSelector === 1){
                        println("WRONG!!! "+charactorArray[randomSelector]);
                    }
                                       score -= 20;
                   numCorrect++;
                                      gameStopper = 1;
                }
            }    
        }
        
                if(mouseX > y1 && mouseX < y1 + 20 && mouseY > x3 && mouseY < x3 + 20){
            if(mouseIsPressed && gameStopper === 0){
                if(randomSelector === 9){
                   println("RIGHT!!!");
                                      score += 20;
                   numCorrect++;
                                      gameStopper = 1;
                }else if(randomSelector === 19){
                    println("RIGHT!!!");
                                       score += 20;
                   numCorrect++;
                                      gameStopper = 1;
                }else if(randomSelector === 29){
                    println("RIGHT!!!");
                                       score += 20;
                   numCorrect++;
                                      gameStopper = 1;
                }else if(randomSelector === 39){
                    println("RIGHT!!!");
                                       score += 20;
                   numCorrect++;
                                      gameStopper = 1;
                }else{
                    if(aSceneSelector === 0){
                        println("WRONG!!! " +soundArray[randomSelector]);
                    }
                    if(aSceneSelector === 1){
                        println("WRONG!!! "+charactorArray[randomSelector]);
                    }
                                       score -= 20;
                   numWrong++;
                                      gameStopper = 1;
                }
            }    
        }
        if(gameStopper === 1){
            waitTime++;
            if(waitTime > 10 && mouseY < 200){
                gameStopper = 0;
                waitTime = 0;
            }
        }else{
            waitTime = 0;
        }
        
        if(correctNum === 1){
            score += 10;
            correctNum += 1;
            correctNum = 1;
        }
//
    }
/**    if(gameStart === 0){
        correctDisplay();
 //       println(+gameStart);
   //     println(+waitTime);
    }
    if(gameStart === 3){
        
    }
    */
    if(mouseY < 255){
        rect(0, 200, 400, 400);
    }
    }
};

var mouseClicked = function(){
    if(currentScene === 1){
        correctDis = 0;
        wrongDis = 0;
    }
    if(currentScene === 2){
        loop();
    }
    if(currentScene === 3){
            if(mouseY < 225){
        randomSelector = floor(random(0, charactorArray.length + 1));
        aSceneSelector = floor(random(0, 2));
      /**  
        y += 100;
        y1 += 100;
        y2 += 100;
        y3 += 100;
        
        x += 50;
        x1 += 50;
        x2 += 50;
        x3 += 50;
        if(y > 300){
            y = 100;
        }if(y === y1){
            y += 100;
        }if(y === y2){
            y += 100;
        }if(y === y3){
            y += 100;
        }
        if(y1 > 300){
            y1 = 100;
        }if(y1 === y){
            y1 += 100;
        }if(y1 === y2){
            y1 += 100;
        }if(y1 === y3){
            y1 += 100;
        } 
        if(y2 > 300){
            y2 = 100;
        }if(y2 === y1){
            y2 += 100;
        }if(y2 === y){
            y2 += 100;
        }if(y2 === y3){
            y2 += 100;
        }
        if(y3 > 300){
            y3 = 100;
        }if(y3 === y1){
            y3 += 100;
        }if(y3 === y){
            y3 += 100;
        }if(y3 === y2){
            y3 += 100;
        }
        if(x > 350){
            x = 250;
        }if(x === x1){
            x += 50;
        }if(x === x2){
            x  += 50;
        }if(x === x3){
            x  += 50;
        }
                if(x1 > 350){
            x1 = 250;
        }if(x1 === x){
            x1 +=50;
        }if(x1 === x2){
            x1 += 50;
        }if(x1 === x3){
            x1 += 50;
        }
        if(x2 > 350){
            x2 = 250;
        }if(x2 === x1){
            x2 += 50;
        }if(x2 === x){
            x2 += 50;
        }if(x2 === x3){
            x2 += 50;
        }
        if(x3 > 350){
            x3 = 250;
        }if(x3 === x1){
            x3 += 50;
        }if(x3 === x2){
            x3 += 50;
        }if(x3 === x){
            x3 += 50;
        }*/
    }
    }
};

void draw(){

}
