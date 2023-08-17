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
https://github.com/MKH05/MKH05.github.io/tree/main/Creature

## Forløb 2

### Opgave 1: Opret jeres logbog
MKH05.github.io
### Opgave 2: Spørgsmål til walking creature
1. Hvad bruger man semikolonner til i processing?
  - Semikolonner markerer afslutningen af en instruktion (kode)
2. Hvad er datatyper, og hvilke datatyper kender du?
  - Integer (hel tal)
  - Float (decimaltal)
  - String (tekststreng)
  - Boolean (sandt/falsk)
  - Array (en samling af værdier)
  - Object (et objekt med egenskaber og metoder)
  - Char (enkelt tegn)
3. Hvordan opretter man en variabel?
  - datatype variabelNavn = værdi;
  - f.eks. int speedX = 4;
4. Hvilke datatyper anvendte du i din kode, og hvorfor?
  - Int, Float, String, Boolean og Array.
  - Int brugte jeg til blandt andet min SpeedX og SpeedY som blev brugt til at bestemme hvor langt/ hurtigt jeg flyttede mit monster.
  - Float blev brugt til min x og y hvilket jeg også brugte til at flytte mit monster.
  - String holdte den besked jeg ville have på mit skilt.
  - Boolean brugte jeg til at holde styr på om spilleren / brugeren holdte hhv. w,a,s,d nede.
  - Array blev brugt til at "holde" de 8 frames til min monster animation.
5. Hvad betyder "parametre" og "argumenter" i programmering, og hvornår anvender du dem i din kode?
  - parametre er værdier, der sendes til en funktion, og rgumenter er de faktiske værdier, der sendes som input til parametrene.
  - void printmsg(String msg){print(msg);}
  - printmsg("Besked");
6. Hvor har du brugt curly brackets (krølleparanteser) i din kode, og hvilken betydning har de?
  - Jeg brugte curly brackets til "if else" statements, for, while statements og min updateanimation funktion.
  - De bruges til at gruppere kode sammen.
7. I programmering taler man om "variabel-scope", prøv at se om du kan finde svaret på hvad det betyder og om det betyder noget i din kode.
  - Variabel-scope er det område varibel er "synlig" men da største delen af mine variabler er i toppen uden for setup og draw, betyder det ikke så meget.

## Forløb 3
### Opgave
1. Længden og bredden af en rektangel er henholdsvis 5 og 7. Skriv et program til at beregne arealet og omkredsen af ​​rektanglen.
  -
2. Skriv et program der beregner omkredsen og arealet af en retvinklet trekant.
  -
3. Skriv et program der tager modulus 10 af frameCount og udskriver frameCount og resultatet. Hvordan fungerer modulus?
  -
4. Skriv et program der tager division 100 af frameCount og udskriver frameCount og resultatet. Hvordan fungerer division i dette tilfælde?
  -
5. Løs nu de ovenstående spørgsmål ved hjælp af tildelingsoperatorer (f.eks. +=, -=, *=)
  -
6. Kan du lave et program der bevæger en firkant hen over skærmen som en “trappefunktion” uden brug af if-statements, men kun ved brug af modulus og division af frameCount!
  -
