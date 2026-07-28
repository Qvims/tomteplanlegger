# Tomteplanlegger 3D

En interaktiv 3D-planlegger for garasje og tomt, i én enkelt HTML-fil. Ingen bygging, ingen avhengigheter, ingen server — åpne fila i en nettleser og den kjører.

**[→ Prøv den her](https://BRUKERNAVN.github.io/tomteplanlegger/)**

![status](https://img.shields.io/badge/avhengigheter-kun%20three.js%20via%20CDN-blue)

---

## Hva den gjør

Plasser, roter og dimensjonér bygg og uteobjekter på en tomt, og se resultatet i 3D med skygger.

- **Bygg med parametre** — bolig, garasje med takterrasse og en ny garasje med loft. Dra i glidebryterne for bredde, dybde, gesims- og mønehøyde, og geometrien bygges på nytt umiddelbart.
- **19 objekttyper** — steiner, gresstuster, busker, trær, kasser, paller, tønner, dunker, biler, gjerder, hekker, murer (rette og buede), veier, lyktestolper og flater i grus/asfalt/betong/gress.
- **Måleverktøy** — klikk to punkter og få avstanden i meter. Laget for å sjekke avstand til nabogrense og vei.
- **Situasjonsplan som underlag** — et målsatt kartutsnitt ligger under modellen i riktig skala, så du kan plassere bygg mot en faktisk plan. Du kan også laste inn ditt eget kart- eller flyfotoutsnitt og skalere det.
- **Sol og skygge** — flytt sola i retning og høyde for å lese volum og avstand. (Illustrativt, ikke en soltimeberegning.)
- **Farger** — kledning, takstein, murverk, port og rekkverk kan stilles fritt per bygg.
- **Lagring** — hele oppsettet lagres som en JSON-fil du kan hente inn igjen eller dele. Eksport til PNG.

## Bruk

| Handling | Slik |
|---|---|
| Velg objekt | Klikk på det |
| Flytt | Dra objektet |
| Roter fritt | Hold **R** og dra |
| Roter i trinn | **Q** / **E** (±15°) |
| Finjuster | **Shift** + piltaster, eller skriv inn nøyaktig verdi |
| Uten festing | Slå av «Fest 15°», eller hold **Alt** |
| Kameraet | Dra bakgrunn = roter · **Shift**+dra = panorer · rull = zoom |
| Dupliser / slett | **Ctrl+D** / **Delete** |
| Angre | **Ctrl+Z** |

## Kjør lokalt

Last ned `index.html` og åpne den. Det er alt.

```bash
git clone https://github.com/BRUKERNAVN/tomteplanlegger.git
cd tomteplanlegger
# åpne index.html i nettleseren
```

## Teknisk

Én fil, ~270 KB. [three.js](https://threejs.org) r128 hentes fra cdnjs; alt annet — geometri, teksturer, UI — genereres i nettleseren. Teksturene tegnes prosedyralt på `<canvas>` ved oppstart, så det følger ingen bildefiler med bortsett fra kartunderlaget.

Ingen sporing, ingen nettverkskall utover three.js-CDN-en. Ingenting du lager forlater maskinen din.

## Om målene

Eksempeltomta er målt fra en situasjonsplan (16,91 px/m) og er ment som et **utgangspunkt for skisser**, ikke som prosjekteringsgrunnlag. Høyder, avstander og arealer i modellen erstatter ikke oppmåling, situasjonsplan fra arkitekt eller behandling hos kommunen.

Merk særlig at regler for **gesims- og mønehøyde, avstand til nabogrense og BYA** varierer mellom kommuner og reguleringsplaner. Bruk verktøyet til å utforske alternativer — ikke til å konkludere.

## Lisens

Koden er MIT-lisensiert, se [LICENSE](LICENSE).

Kartunderlaget som følger med er et bearbeidet utsnitt brukt som eksempel. Skal du publisere videre med et annet kartgrunnlag, sjekk rettighetene til kilden din — kartverk og arkitekttegninger er normalt opphavsrettsbeskyttet.
