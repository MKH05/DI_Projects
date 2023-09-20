# Logbog MKH

## Forløb 1
**Afleverings opgave:** The creature

**Afleveringen:**
- Opgaven skal laves af højest to personer. I skal aflevere "koden" og en "video" hvor I forklarer koden og anvender rigtige fagord.

**Krav:**
- Tegn et "væsen" vha. de indbyggede 2D tegnefunktioner.
- Lav en talebobbel på skærmen, ligesom i en tegneserie.
- Anvend variabler istedet for direkte skrevne tal eller ord.
- Flyt "væsnet" rundt på skærmen. Det må gerne forsvinde ud af billedet, hvis opgaven er lidt svær.

**Frivilligt:**
- Prøv at få "væsnet" til f.eks. at "bounce" eller bevæge sig længere væk, så der simuleres en rummelig dimension.

**Fil:**
[Creature](https://github.com/MKH05/MKH05.github.io/tree/main/Creature)

## Forløb 2
### Opgave 1: Opret jeres logbog
[MKH05.github.io](https://github.com/MKH05/MKH05.github.io)

### Opgave 2: Spørgsmål til walking creature
1. Hvad bruger man semikolonner til i processing?
   - Semikolonner markerer afslutningen af en instruktion (kode).
2. Hvad er datatyper, og hvilke datatyper kender du?
   - Integer (hel tal)
   - Float (decimaltal)
   - String (tekststreng)
   - Boolean (sandt/falsk)
   - Array (en samling af værdier)
   - Object (et objekt med egenskaber)
   - Char (enkelt tegn)
3. Hvordan opretter man en variabel?
   - `datatype variabelNavn = værdi;`
   - f.eks. `int speedX = 4;`
4. Hvilke datatyper anvendte du i din kode, og hvorfor?
   - Int, Float, String, Boolean og Array.
   - Int brugte jeg til blandt andet min SpeedX og SpeedY som blev brugt til at bestemme hvor langt/hurtigt jeg flyttede mit monster.
   - Float blev brugt til min x og y, hvilket jeg også brugte til at flytte mit monster.
   - String holdte den besked jeg ville have på mit skilt.
   - Boolean brugte jeg til at holde styr på om spilleren/brugeren holdt hhv. w,a,s,d nede.
   - Array blev brugt til at "holde" de 8 frames til min monster animation.
5. Hvad betyder "parametre" og "argumenter" i programmering, og hvornår anvender du dem i din kode?
   - Parametre er værdier, der sendes til en funktion, og argumenter er de faktiske værdier, der sendes som input til parametrene.
   ```java
   void printmsg(String msg){
     print(msg);
   }
   printmsg("Besked");
   ```
6. Hvor har du brugt curly brackets (krølleparanteser) i din kode, og hvilken betydning har de?
   - Jeg brugte curly brackets til "if else" statements, for, while statements og min updateanimation funktion.
   - De bruges til at gruppere kode sammen.
7. I programmering taler man om "variabel-scope", prøv at se om du kan finde svaret på hvad det betyder og om det betyder noget i din kode.
   - Variabel-scope er det område variabel er "synlig", men da størstedelen af mine variabler er i toppen uden for setup og draw, betyder det ikke så meget.

## Forløb 3
### Opgave
1. Længden og bredden af en rektangel er henholdsvis 5 og 7. Skriv et program til at beregne arealet og omkredsen af rektanglen.
   ```java 
   int x = 5;
   int y = 7;

   float areal = x * y;
   float omkreds = 2 * (x + y);

   println("Areal= " + areal);
   println("Omkreds= " + omkreds);
   ```
2. Skriv et program der beregner omkredsen og arealet af en retvinklet trekant.
   ```java
   int x1t = 100;
   int y1t = 200;
   int x2t = 200;
   int y2t = 200;
   int x3t = 200;
   int y3t = 100;

   float kat1 = sqrt((x2t - x1t) * (x2t - x1t) + (y2t - y1t) * (y2t - y1t));
   float kat2 = sqrt((x3t - x2t) * (x3t - x2t) + (y3t - y2t) * (y3t - y2t));
   float arealT = (kat1 * kat2) / 2;

   float hypT = sqrt(kat1 * kat1 + kat2 * kat2);
   float omkredsT = kat1 + kat2 + hypT;

   println("omkredsen af trekanten er " + omkredsT);
   println("arealet af trekanten er " + arealT);
   ```
3. Skriv et program der tager modulus 10 af frameCount og udskriver frameCount og resultatet. Hvordan fungerer modulus?
   ```java 
   println(frameCount % 10);
   ```
4. Skriv et program der tager division 100 af frameCount og udskriver frameCount og resultatet. Hvordan fungerer division i dette tilfælde?
   ```java 
   println(frameCount / 100);
   ```
5. Løs nu de ovenstående spørgsmål ved hjælp af tildelingsoperatorer (f.eks. +=, -=, *=)
   
7. Kan du lave et program der bevæger en firkant hen over skærmen som en “trappefunktion” uden brug af if-statements, men kun ved brug af modulus og division af frameCount!
   ```java
   fill(0, 10);
   rect(0, 0, 900, 500);

   fill(255);
   circle(x, y, 10);
   circle(frameCount % width, height/2, 10);
   ```
## Forløb 4
### Kvadrant-opgaven

### Kompas-opgaven

## Forløb 5 
### Afleveringsopgave 2
I denne aflevering skal I udvikle et lille spil ved navn BounceGame. Formålet med spillet er simpelt: I skal placere to “mure” i form af et kryds ved hjælp af musseklik. En hvid bold bevæger sig konstant rundt på skærmen med en konstant hastighed og reflekteres både af vindueskanterne og de to krydsmure. Derudover placeres en rød bold tilfældigt et sted på skærmen og forbliver der, indtil den hvide bold rammer den. Udfordringen er at se, hvor hurtigt I kan ramme den røde bold. God fornøjelse med kodning og spiludvikling :-)

**Fil:**
[BallGame](https://github.com/MKH05/MKH05.github.io/tree/main/BallGame)

## Forløb 6
### Opgaver
1. Skriv en for og while-løkke, der udskriver tal fra 1 til 10.
   ```java 
   for (int i = 1; i <= 10; i++ ){
     println(i);
   }
   ```
2. Lav en for og while-løkke, der udskriver de første 5 lige tal (2, 4, 6, osv.).
   ```java
   for (int i = 2; i <= 10; i += 2 ){
     println(i);
   }
   ```
3. Lav en for og while-løkke, der udskriver summen af tal fra 1 til 100.
   ```java
   for (int i = 1, sum = 0; i <= 100; i++ ){
     sum += i;
     println(sum);
     delay(100);
   }
   ```
4. Skriv en for og while-løkke, der tæller ned fra 10 til 1 og udskriver tallene.
   ```java
   for (int i = 10; i > 0; i-- ){
     println(i);
   }
   ```
5. Lav en for og while-løkke, der udskriver gangetabellen for tallet 5 (5, 10, 15, osv. op til 50).
   ```java
   int i = 0;

   while (i < 50){
     i += 5;
     println(i);
     delay(100);
   }
   ```
6. Lav en for og while-løkke, der udskriver de første 5 potenser af 2 (2^1, 2^2, 2^3, osv.).
   ```java
   for (int i = 1; i <= 5; i++ ){
     println(pow(2, i));
   }
   ```
7. Tegn en for og serie af lodrette linjer ved hjælp af en while-løkke, der ændrer deres x-koordinat for hver gentagelse.
   ```java
   void setup() {
     size(400, 400);
     background(255);
     stroke(0);
     int x = 50;

     while (x < width - 50) {
       line(x, 50, x, height - 50);
       x += 20;
     }
   }
   ```
8. Skriv en for og while-løkke, der tegner en spiral ved at ændre både x- og y-koordinaterne for hver gentagelse.

9. Lav en for og while-løkke, der tegner en regnbue af farverige linjer ved at ændre farverne gradvist for hver gentagelse.

10. Tegn en for og slags “trappe” ved at bruge en while-løkke til at skabe forskellige brede rektangler ved hvert trin.

## Forløb 7
Nestede for-loops i Processing er en teknik, hvor vi bruger en eller flere for-loops indeni et andet for-loop. Dette giver os mulighed for at oprette komplekse gentagelsesmønstre og arbejde med to- eller flerdimensionale strukturer som gitter, matricer og fraktaler. Hver indlejret løkke gentages for hver iteration af den ydre løkke, hvilket giver en kraftig kontrol over gentagelsesprocessen og tegning i Processing.

### Opgave 1
Lav et mønster med cirkler: Brug en for-løkke til at tegne flere rækker af cirkler. Inde i hver række skal du bruge et indlejret for-loop til at placere cirklerne i en linje.
```java
void setup() {
  size(400, 400);
  noFill();
  float circleSize = 20;

  for (int i = 0; i < 10; i++) {
    for (int f = 0; f < 10; f++) {
      ellipse(20 + f * 40, 20 + i * 40, circleSize, circleSize);
    }
  }
}
```

### Opgave 2
Tegn et skakbræt: Brug to nestede for-loops til at tegne et skakbræt med rækker og kolonner af firkantede celler. Skift farve mellem sorte og hvide celler. (svær udfordring : du kan prøve at se om du kan tegene samme mønster med kun et for-loop ved anvendelse af “%” og “/”)
```java
void setup() {
  size(400, 400);
  int cellSize = 40;
  
  for (int i = 0; i < 8; i++) {
    for (int f = 0; f < 8; f++) {
      if ((i + f) % 2 == 0) {
        fill(255); // Hvid
      } else {
        fill(0);   // Sort
      }
      rect(i * cellSize, f * cellSize, cellSize, cellSize);
    }
  }
}
```

### Opgave 3
Tegn en trappe: Byg en trappe: Brug to for-loops, hvor det ene er indlejret i det andet, til at tegne en trappe, bestående af små firkanter. Hver trin skal være bredere end det foregående.
```java
void setup() {
  size(500, 500);
  background(0);
  noStroke();
}

void draw(){
  background(0);
  
  for (int i = 0; i <= 40; i++ ){
    float yOffset = i * 12;
    
    for (int f = 0; f <= i; f++ ){
      float xOffset = f * 12;
      
      fill(255 - i * 6);
      
      rect(xOffset, yOffset,10,10);
    }
  }
}
```

## Forløb 8
### Afleveringsopgave 3
I denne opgave skal I opbygge en pyramide ved hjælp af et for-loop inde i et andet for-loop. Pyramiden vil bestå af små firkanter, og bredden øges kun med en firkant i hver kant for hver ny række. Dette betyder, at det øverste niveau kun har 1 firkant, derefter 3 firkanter, 5 firkanter, 7 firkanter, og så videre. Desuden skal firkanterne gradvist blive mørkere for hver række.
Det er vigtigt at bemærke, at I kun må bruge de variabler, der er defineret i de to for-loops for at løse denne opgave.

Hvis I søger en ekstra udfordring, kan I prøve at opbygge en pyramide, hvor hver firkant er roteret med en tilfældig vinkel.

**Fil:**
[Pyramide](https://github.com/MKH05/MKH05.github.io/tree/main/Pyramid)

## Forløb 9
1. Opret et array af heltal med 5 elementer og tildel det værdierne 1, 2, 3, 4 og 5. Udskriv arrayet.

```java 
int[] list = {1,2,3,4,5};
```

2. Lav et array af strenge, der indeholder navnene på dine yndlingsfarver. Udskriv alle farverne i arrayet.

```java 
String[] yndlingsfarver = {"Blå", "Lilla", "Hvid"};

void setup() {
  for (int i = 0; i < yndlingsfarver.length; i++) {
    String farve = yndlingsfarver[i];
    println(farve);
  }
}
```

3. Opret et array af kommatal, der indeholder temperaturen for hver dag i en uge. Beregn gennemsnittet af temperaturerne.

```java 
float[] temp = {21.2,19.2,15.5,30.7};

float sum = 0;

for(float tal : temp){
  sum = sum + tal;
}

float gennemsnit = sum/temp.length;

println(gennemsnit);
```

4. Lav et array af boolean-værdier, der repræsenterer tilstanden af ​​10 lamper (tændt/slukket). Skriv en løkke, der tænder alle lamperne. (prøv at se om du kan gøre det grafisk)

5. Byt om på det første og sidste element i et array. (uanset indhold)
   
```java
void setup() {
  int[] array = {1, 2, 3, 4, 5};
  
  if (array.length >= 2) {
    int temp = array[0];
    array[0] = array[array.length - 1];
    array[array.length - 1] = temp;
  }
  
  for (int i = 0; i < array.length; i++) {
    println(array[i]);
  }
}
```
6. Opret et array af strenge med navnene på forskellige frugter. Brug en for-løkke til at finde og udskrive indekset (positionen) for den første forekomst af “æble” i arrayet.
   
```java
void setup() {
  String[] frugter = {"banan", "æble", "pære", "kirsebær", "æble"};
  int førsteÆbleIndex = -1;
  
  for (int i = 0; i < frugter.length; i++) {
    if (frugter[i].equals("æble")) {
      førsteÆbleIndex = i;
      break;
    }
  }
  
  println("Indekset for første forekomst af 'æble' er: " + førsteÆbleIndex);
}

```

7. Opret et array af strenge med navnene på månederne i den korrekte rækkefølge (januar, februar, marts, osv.). Skriv en for-løkke, der bytter om på rækkefølgen, så arrayet nu indeholder månederne i omvendt rækkefølge (december, november, oktober, osv.).
   
```java
void setup() {
  String[] måneder = {"januar", "februar", "marts", "april", "maj", "juni", "juli", "august", "september", "oktober", "november", "december"};
  
  for (int i = 0; i < måneder.length / 2; i++) {
    String temp = måneder[i];
    måneder[i] = måneder[måneder.length - 1 - i];
    måneder[måneder.length - 1 - i] = temp;
  }
  
  for (int i = 0; i < måneder.length; i++) {
    println(måneder[i]);
  }
}

```

## Forløb 10
```java
int[][] list = {
  {1, 2, 3, 4}, // 0
  {5, 6, 7, 8}  // 1
};

// println(list[Array nummer][plads nummer]);
println(list[1][3]);
// vil printe tallet 8
```
1. Opret en 3x3 matrix og find værdien i midten (anden række, anden kolonne).

```java
int[][] list = {
  {1, 2, 3 }, // 0
  {4, 5, 6 }, // 1
  {7, 8, 9 }  // 2
};

println(list[1][1]);

```
2. Opret en 2D matrix med 3 rækker og 4 kolonner, fyld den med tilfældige tal og beregn summen af hver række. Udskriv resultaterne.

```java
int cols = 3;
int rows = 4;
int sum = 0;

int[][] list = new int[cols][rows];

for (int i = 0; i < cols; i++) {
  for (int j = 0; j < rows; j++) {
    list[i][j] = int(random(9));
  }
}

for (int i = 0; i < cols; i++) {
  for (int j = 0; j < rows; j++) {
    print(list[i][j] + " ");
    sum += list[i][j];
  }
  println();
}

println();
println("Total sum = " + sum);

```
3. Opret en 2D matrix, og transponer den, dvs. skift rækker og kolonner. Udskriv både den oprindelige og transponerede matrix

4. Opret to 2D matricer og find en metode der kan sammenligne om de har ens indhold

5. Skriv program der kan multiplicere to matricer

## Forløb 11