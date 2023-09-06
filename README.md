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

## Forløb 5 Afleveringsopgave 2
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

8. Skriv en for og while-løkke, der tegner en spiral ved at ændre både x- og y-koordinaterne for hver gentagelse.

9. Lav en for og while-løkke, der tegner en regnbue af farverige linjer ved at ændre farverne gradvist for hver gentagelse.

10. Tegn en for og slags “trappe” ved at bruge en while-løkke til at skabe forskellige brede rektangler ved hvert trin.

## Forløb 7
Nestede for-loops i Processing er en teknik, hvor vi bruger en eller flere for-loops indeni et andet for-loop. Dette giver os mulighed for at oprette komplekse gentagelsesmønstre og arbejde med to- eller flerdimensionale strukturer som gitter, matricer og fraktaler. Hver indlejret løkke gentages for hver iteration af den ydre løkke, hvilket giver en kraftig kontrol over gentagelsesprocessen og tegning i Processing.

### Opgave 1
Lav et mønster med cirkler: Brug en for-løkke til at tegne flere rækker af cirkler. Inde i hver række skal du bruge et indlejret for-loop til at placere cirklerne i en linje.

### Opgave 2
Tegn et skakbræt: Brug to nestede for-loops til at tegne et skakbræt med rækker og kolonner af firkantede celler. Skift farve mellem sorte og hvide celler. (svær udfordring : du kan prøve at se om du kan tegene samme mønster med kun et for-loop ved anvendelse af “%” og “/”)

### Opgave 3
Tegn en trappe: Byg en trappe: Brug to for-loops, hvor det ene er indlejret i det andet, til at tegne en trappe, bestående af små firkanter. Hver trin skal være bredere end det foregående.
