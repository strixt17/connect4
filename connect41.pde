int gamestate = 0;

int piece1x = 0;
int piece1y = 0;
int piece1ymovement = 12;

int piece2x = 0;
int piece2y = 0;
int piece2ymovement = 12;

int piece3x = 0;
int piece3y = 0;
int piece3ymovement = 12;

int piece4x = 0;
int piece4y = 0;
int piece4ymovement = 12;

void setup(){
    size(700, 700);
}

void draw(){
    background(0);
    if(gamestate == 0){
        mainmenu();
        fill(#FFFF00);
        textSize(75);
        text("Connect", 200, 200);
        fill(#FF0000);
        text("4", 470, 200);
        fill(255);
        rect(200, 400, 300, 150);
        fill(0);
        text("Play", 275, 500);
    }
}

void mousePressed(){
    if(gamestate == 0){
        if(mouseX >= 200 && mouseX <= 500 && mouseY >= 400 && mouseY <= 550){
            gamestate = 1;
        }
    }
}

void mainmenu(){
    fill(#FFFF00);
    ellipse(piece1x, piece1y, 60, 60);
    piece1y = piece1y + piece1ymovement;
    if(piece1y >= 760){
        piece1ymovement = floor(random(10, 20));
        piece1y = 0;
        piece1x = floor(random(0, 700));
    }

    fill(#FF0000);
    ellipse(piece2x, piece2y, 60, 60);
    piece2y = piece2y + piece2ymovement;
    if(piece2y >= 760){
        piece2ymovement = floor(random(10, 20));
        piece2y = 0;
        piece2x = floor(random(0, 700));
    }

    fill(#FFFF00);
    ellipse(piece3x, piece3y, 60, 60);
    piece3y = piece3y + piece3ymovement;
    if(piece3y >= 760){
        piece3ymovement = floor(random(10, 20));
        piece3y = 0;
        piece3x = floor(random(0, 700));
    }

    fill(#FF0000);
    ellipse(piece4x, piece4y, 60, 60);
    piece4y = piece4y + piece4ymovement;
    if(piece4y >= 760){
        piece4ymovement = floor(random(10, 20));
        piece4y = 0;
        piece4x = floor(random(0, 700));
    }
}