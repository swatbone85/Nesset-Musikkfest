//
//  ArtistVC.swift
//  Nesset
//
//  Created by Thomas Swatland on 11/04/2017.
//  Copyright © 2017 Thomas Swatland. All rights reserved.
//

import UIKit

class ArtistVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    class Artist {
        let name: String
        let image: UIImage
        let description: String
        
        init(name: String, image: UIImage, description: String) {
            self.name = name
            self.image = image
            self.description = description
        }
    }
    
    //Declaring Artist objects:
    
    let hmkg = Artist(name: "Hans Majestet Kongens Garde",
                      image: #imageLiteral(resourceName: "HM Kongens Garde - Festkonsert"),
                      description: "​​​​​​​​​​​​​​​​​​​​​​Hans Majestet Kongens Garde er en tradisjonsrik avdeling og består av rundt 160 ansatte og 1200 vernepliktige. Infanteriet i bataljonen er lokalisert i Huseby leir i Oslo, mens Gardens rekruttskole, Gardeskolen, holder til på Terningmoen i Elverum. Som en del av hovedstadsforsvaret skal Garden kunne støtte politiet ved krisesituasjoner som naturkatastrofer, store ulykker og terrorangrep.\n\n Gardens kanskje mest kjente kompani er 3. gardekompani. Kompaniet består av en musikk- og drilltropp og regnes som en av de beste i verden i kombinasjonen musikk og drill. Kompaniet er svært ettertraktet og blir invitert til å delta på tattooer og seremonier over hele verden.")
    
    let redHot = Artist(name: "Red Hot",
                        image: #imageLiteral(resourceName: "redhot"),
                        description: "Med elleve mann i besetningen og ti års fartstid som profesjonelle musikere er Red Hot noe av et unikum i norsk musikkliv. Bandet, som har sin opprinnelse i Romsdal, har gjennom langstrakt og fokusert øvelse opparbeidet seg et solid live-rykte og stor popularitet i hjemlige kretser. I 2015 var Red Hot omsider klare med sin første rendyrkete langspiller, Social Medicine. Albumet er spilt inn hos Ocean Sound Recordings på Giske, og er blitt et representativt dokument for hva bandet står for både musikalsk og estetisk.\n\n I løpet av våren 2017 slipper Red Hot fire nye singler. Dette er helt ny musikk du vil få mulighet til å høre på Nesset Musikkfest 2017!\n\n Knut Marius Djupvik - vokal\n Lars Petter Bjerkeset - saxofon\n Pål Gunnar Fiksdal - trompet\n Magnus Drågen - trompet \n Runar Fiksdal - trombone\n Jørn Inge Frostad - bass \n Øystein Flemmen - gitar \n Chriss Rune Olsen Angvik - gitar\n Kristoffer Tokle - tromme\n Kristian Frøland - perkusjon\n Anders Lillebo - keys")
    
    let brasskompaniet = Artist(name: "Brasskompaniet",
                                image: #imageLiteral(resourceName: "brasskompaniet"),
                                description: "Mange messingstudenter på Norges Musikkhøgskole har sin bakgrunn fra korps - og de nåværende medlemene pleide å sitte i 5. etasje og snakke om hvor flott det ville være å spille Concerto Grosso av Derek Bourgeois. Det virkelig store brassbandstykket, opprinnelig skrevet for ten piece messingensemble.\n\n Det tok en liten stund før ensemblet ble etablert, men Knut Elias bestilte notene, og fikk med andre studenter i gruppen. Ensemblet var attraktivt å være med i, og den første konserten ble holdt i 2012 på Norges Musikkhøgskole, Lindemansalen. Konserten ble en stor suksess!\n\n Da grunnleggeren av Brasskompaniet dro til Chicago som utvekslingsstudent, og resten var enten orkestermusikere, frilansere eller studenter, hadde ensemblet et ganske stille år.\n\n Selv om musikerne ble spredt jorden rundt, ble planer lagt: Turer, valg av videre program og så videre. Dette førte til en norgesturné i 2014, der Brasskompaniet holdt konserter på nesten hver eneste musikers hjemsted.\n\n I 2015 var Brasskompaniet en av artistene på den 10. Malcolm Arnold-festivalen, der de høstet gode kritikker. Dette resulterte i flere konserter i juli 2016 - i Lillestrøm kirke, Ringebu stavkirke, og Ridehuset på Akershus festning.\n\n Knut Elias Barstad - tuba\n Anders Dalhaug - basstrombone\n Haavard Vaage - trombone\n Simen Rudi Solbakken - trombone\n Vidar Nordli - trombone\n Kristine Hjertås Mauseth - horn\n Erlend Ruud - trompet\n Børge Styve - trompet\n Sebastian Haukaas - trompet\n Mark Harrison - trompet")
    
    let vilosTrio = Artist(name: "Vilos Trio",
                           image: #imageLiteral(resourceName: "vilostrio"),
                           description: "Vilos Trio ble dannet i 2011 av fiolinisten Dalia Dedinskaite og cellisten Gleb Pysniak, begge fra Litauen, og den norske pianisten Ole Christian Haagenrud. Trioen har allerede rukket å imponere publikum med sin livlige musikalitet og boblende energi. Deres første konsertserie på den nederlandske festivalen International Holland Music Sessions ble møtt med stående applaus. De unge musikerne er belønnet med priser fra mer enn 35 internasjonale og nasjonale konkurranser, arrangert på arenaer som Concertgebouw i Amsterdam, Wien Musikverein og Casa da Musica i Porto. I løpet av kort tid har Vilos Trio hatt en rekke konserter og opptredener, på festivaler i Østerrike, Kroatia, England, Tyskland, Holland, Litauen, Norge, Russland og Spania. I oktober 2012 spilte Vilos Trio Beethovens trippelkonsert i den Litauiske Filharmonis konsertsal sammen Litauens filharmoniske orkester, og etter en vellykket audition på ECMA (European Chamber Music Academy) i Wien, har Vilos Trio blitt tatt opp som et aspirantensemble der.")
    
    let frodeAlnæs = Artist(name: "Frode Alnæs",
                             image: #imageLiteral(resourceName: "Frode Alnæs"),
                             description: "Frode Alnæs (1959) er født og oppvokst i Kristiansund, der han bodde fram til han var ferdig med gymnaset i 1978. Frode visste tidlig i livet at han skulle bli musiker. Han hadde et talent, og han vurderte aldri noe annet yrke. (Det eneste måtte være skogvokter i Kristiansund, en herlig jobb i en by omtrent uten trær…). Fra han som 11-åring mistet håret og fikk sin første gitar av foreldrene, lukket Frode seg inne på gutterommet og øvde og øvde – aller helst til ”The Kinks” – yndlingsbandet!\n\n 1978-79 var han elev ved musikklinja på Nordmøre Folkehøgskole i Surnadal. Dette året kom til å bety mye for Frode, både som menneske og musiker. Han har siden hatt som motto: ”Alle burde få lov til å oppleve et år på folkehøyskole, også blåruss”. Allerede mens han gikk på folkehøyskolen komponerte han det meste av rockeoperaen «Frosken som ikke forsto et kvekk», som ble satt opp i Kristiansund sommeren 1979.\n\n I 1979 ble Frode tatt opp i det aller første kullet på det nye jazz-studiet ved Trøndelag Musikkonservatorium, og i 1982 gikk han ut med karakteren 1 blank i gitarspill – det vil si best mulige karakter. På konservatoriet ble Frode kjent med musikere som Bjørn Klakegg, Tore Brunborg, Nils Petter Molvær, The Brazz Brothers og Ernst Wiggo Sandbakk. Siden han gikk ut fra jazzlinja i Trondheim, har Frode livnært seg som profesjonell musiker og artist. I 1982 flyttet han til Oslo, hvor han raskt opplevde stor suksess som freelance-musiker i studio, på scener og turneer sammen med mange av de største navnene i norsk jazz- og pop/rock-verden.\n\n I denne perioden etablerte han seg i toppsjiktet, og det begynte å ryktes at et nytt ”gitar-geni” (med parykk) hadde nådd norske scener og platestudioer. Frode var først og fremst jazzgitarist, men ble raskt kjent som en musiker som beveget seg i flere sjangre. Dette ble – og er – hans varemerke. Frode har alltid vært en improviserende musiker, som ikke ønsker å havne i en musikalsk bås. Han vil være fri som fuglen! ”Dance With A Stranger” skulle bli Frodes virkelig store gjennombrudd som låtskriver, gitarist, artist og entertainer. Bandet ble startet i 1984 av Frode og kompis, bodøværing og trommis Bjørn Jenssen (som da spilte i blant annet Jon Eberson Group) og senere fikk de med seg den særpregete vokalisten Øyvind ”Elg” Elgenes fra Kristiansund og bassist Yngve Moe fra Tromsø.\n\n Dance With A Stranger opplevde det store gjennombruddet etter en opptreden etter Spellemannsprisen i 1988. Det var også da, rett før de gikk på scenen, Frode hadde bestemt seg for å kaste parykken. Det ble for godt. En befriende kveld på flere måter med andre ord, og et nytt liv i norsk musikkverden ventet Frode og ”Dance With A Stranger”. Kort fortalt ble bandet en av norsk pop/rockmusikks store suksesser. De har gitt ut åtte album og vunnet flere spellemannspriser.\n\n Etter mange år i Oslo flyttet Frode et par år tilbake til Trondheim, og deretter til hjembyen Kristiansund. Sammen med en entusiastisk dugnadsgjeng bygde han opp og restaurerte en verneverdig bydel på Innlandet, øya han trådte sine barnesko. Et arbeid som ble prisbelønt blant annet av Fortidsminneforeningen i 2002. Han drev i mange år Dødeladen Café og Kultursted, Tollboden og Tahitibrygga. Frode Alnæs er også grunnlegger av den årlige Tahiti-festivalen i Kristiansund.\n\n Vinteren 2009 flyttet Frode tilbake til Oslo hvor han bor i dag. Han er en svært travel musiker, med mange reisedøgn i løpet av året. Aller helst går reisene til hytta på Kanestrøm på Nordmøre, gitaristens og komponistens paradis på jord. Her har han skrevet mesteparten av musikken sin, her finner han ro og vandrer lange turer i fjell og mark. I løpet av sin over 30 år lange karriere som profesjonell musiker, har Frode gjort over 5000 konserter i Norge og Europa med ”Dance With A Stranger”, med andre band og artister og som soloartist. Han har spilt på de fleste store jazz- og rockefestivaler i Norge, og har turnert i mange år for Rikskonsertene. Han siste store engasjement her var i ”Let it Rock” – en uhøytidelig reise gjennom rockens historie. Turneen gikk høsten 2009/vinteren 2010 og samlet fulle hus på nærmere 60 kulturhusscener over hele landet. Frode var både medvirkende og musikalsk ansvarlig for forestillingen.\n\n Frode Alnæs har i alle år markert seg som låtskriver og komponist. I tillegg til å ha skrevet alle låtene til ”Dance With A Stranger”, har han skrevet musikk for en rekke andre artister, komponert flere bestillingsverk og nå sist operaen ”Donna Bacalao” (2008) og verket ”Kanestrøm” (2011). Høsten 2013 kom hans nye soloplate «Envy The Man». Albumet er spilt inn i det legendariske studioet Athletic Sound i Halden med ikke mindre legendariske Kai Andersen bak spakene. Frode har de siste årene hatt en produktiv periode og skrevet ny musikk, og jobber for tiden med en gitarforestilling med arbeidstittelen «Min dans med strenger».")
    
    let knutMariusDjupvik = Artist(name: "Knut Marius Djupvik",
                                   image: #imageLiteral(resourceName: "knutmariusdjupvik"),
                                   description: "Knut Marius Djupvik kommer fra Tomrefjord, en bygd utenfor Molde. Han har drevet med sang og musikk hele livet. I 2012 fullførte han en mastergrad i rytmisk musikk ved Universitetet i Agder.\n\n Etter endt utdanning flyttet Knut Marius til Oslo og har siden levd av musikken. I 2013 ble han norgeskjent etter at han gikk av med seieren i The Voice – Norges beste stemme. I juni 2014 slapp han EP'en SET med den tilhørende singelen Easy. Knut Marius har siden fylt rollen som Judas i Jesus Christ Superstar ved Lørenskog Hus gang på gang og reist rundt som soloartist med ulike orkestre, band og kor.\n\n I tillegg til å leve som soloartist figurerer Knut Marius som frontmann i 11-mannsbandet Red Hot. Red Hot spiller for det meste egenskrevet musikk innenfor blues/rock/jazz/soul–sjangrene og har hatt fast plass på Moldejazz siden 2008")
    
    let tineThingHelseth = Artist(name: "Tine Ting Helseth",
                                  image: #imageLiteral(resourceName: "Tine Thing Helseth"),
                                  description: "Tine Thing Helseth har etablert seg som en av verdens ledende trompetister, med en myk, klar og gjenkjennelig klang i spillet, og med hele verden som sin arena. Så langt i karrieren har hun vært solist med ledende orkestre over hele verden. Debutalbum kom i 2007, og for det fikk hun fikk Spellemannprisen som ”Årets nykommer”. Høsten 2011 kom albumet Storyteller, det første av i alt fire album som ligger i avtalen med det verdensomspennende selskapet EMI. Tine er kunstnerisk leder for Tine Thing Helseth Quintet.")
    
    let larsPetterBjerkeset = Artist(name: "Lars Petter Bjerkeset",
                                     image: #imageLiteral(resourceName: "larspetterbjerkeset"),
                                     description: "Lars Petter fullførte mastergraden sin ved Norges musikkhøgskole i 2015. Han har avlagt førstegangstjeneste i Kongelige Norske Marines Musikkorps, og har blitt bruk som vikar i flere av militærkorpsene, Det Norske Blåseensemblet og Oslo Filharmoniske Orkester. Foruten ensemblespill, har Lars Petter vært solist med Kongelige Norske Marines Musikkorps og Forsvarets stabsmusikkorps. Han har også vært solist med Trondheim Symfoniorkester på deres Unge Talenter konsert i 2013. I tillegg vant han prøvespill på saksofon i Forsvarets stabsmusikkorps i 2013.")
    
    let ramonAlsius = Artist(name: "Ramon Figueras Alsius",
                             image: #imageLiteral(resourceName: "ramonalsius"),
                             description: "Ramon er opprinnelig fra Barcelona, men bor og jobber nå i Skandinavia. Han har tidligere studert på ESMUC (Barcelona) med Mireia Farrés og han har sin masterutdannelse fra Norges Musikkhøgskole med Jonas Haltia og Anthony Plog. Ramon har alltid vært interessert i alle slags typer musikk. Selv om han har en klassisk utdannelse, har han også jobbet med andre stilarter. Ramon er kjent for sin vitalitet og allsidighet på scenen, og han har spilt med folkemusikk- og jazzensembler, pop, blues, funky- og ska band, storband, forskjellige komedie show og musikaler.\n\n Som solist har Ramon spilt med Minsk Kammerorkester og flere kammerensembler. Han har jobbet som frilanstrompetist på turneer i Europa med spanske og norske orkestre; Barcelona symfoniorkester, Stavanger symfoniorkester, Kringkastingsorkesteret og Oslo Filharmoniske Orkester. Til daglig jobber Ramon som alternerende 1. trompetist i Wermland Opera i Karlstad (Sverige). Denne jobben kombinerer han med to andre hovedprosjekter: produsent og trompetist med Doctor Prats (popband fra Barcelona), og som komponist og trompetist i The Kuraybers (world-music band Oslo).")
    
    let risaAmbo = Artist(name: "Risa Ambo",
                          image: #imageLiteral(resourceName: "risaambo"),
                          description: "Risa Ambo er født i Tokyo, Japan. Hun har studert på Kunitachi college of Music i Japan med Teruko Hakuta som lærer. Risa har en mastergrad i utøvende piano fra Griegakademiet i Bergen med professor Audun Kayser. Hun har også en mastergrad i utøvende piano fra Norges Musikkhøgskole hvor hun hadde professor Einar Henning Smebye som lærer. Risa jobber for øyeblikket som pianolærer på Oslo Internasjonale Skole som er en selvstendig internasjonal skole for elever mellom 3 og 19 år. Hun jobber også som frilansmusiker og har holdt flere solokonserter i Norge og i Japan. Risa er en ettertraktet akkompagnatør og kammermusiker.")
    
    let larsErikGudim = Artist(name: "Lars Erik Gudim",
                               image: #imageLiteral(resourceName: "larserikgudim"),
                               description: "Lars Erik Gudim(f. 25/12-65) er trombonist, komponist, arrangør og band-leder fra Sarpsborg. Han flyttet til Oslo i 1984 for å studere ved Norges Musikkhøgskole - først trombone og fra 1989 komposisjon. Gudim tok eksamen i komposisjon våren 1991. Han har vært vikar/ekstramusiker ved Oslo og Bergen Filharmoniske Orkestre, Kringkastingsorkestret, Den Norske Opera, Nationalteateret og Oslo Nye Teater samt Forsvarets Stabsmusikkorps, Divisjonsmusikken i Halden(nå Det Norske Blåseensemble) og Marinemusikken.\n Gudim har dirigert Kringkastingsorkesteret, Bergen Filharmoniske Orkester, symfoniorkesterene i Stavanger, Trondheim og Kristiansand, EBU-Storbandet(Nattjazz, Bergen år 2000), alle forsvarets proffesjonelle korps, Det Norske Blåseensemble, Festpillene i Nord-Norge`s turné storband, Bergen Big Band, Oslo Groove Company, Amandapris-utdelingen, samt en rekke amatør-korps og storband bl.a. Lillestrøm Musikkorps, Stavanger Brassband, Dragefjellets Musikkorps, Kolbotn Ungdomskorps, Ett Fett Storband og Prime Time Orchestra. Av utenlandske ensembler kan nevnes Danmarks Radio Big Band, Marinierskapel der koninklijke marine(Rotterdam), Latvian Navy Band, Gøteborgsmusiken og Arméns Musikkår(Stockholm) og Marinens Musikkår(Karlskrona).\n Han har også arrangert, dirigert og/eller spilt trombone på en rekke forestillinger I Oslo-området, bl.a. Einar Schancke`s 40-års revy, Annie, Sound of Music og It´s Showtime på Chat Noir med Kåre Conradi og Marian Aas-Hansen I 2006. I 2007 dirigerte han over 50 forestillinger av Les Miserables på Lillestrøm Kultursenter.\n  Gudim har skrevet arrangementer/bestillingsverk for bla.a. Kringkastingsorkesteret, NRK, Festspillene i Nord-Norge, Forsvarets musikk, Oslo og Bergen Filharmoniske Orkestere, symfoniorkestrene i Kristiansand og Stavanger, Gøteborgs Symfoniker, NASOL`s sommerkurs, Rikskonsertene, Operaen i Kristiansund, Norges Musikkorps Forbund, Grenland Brass Festival, Østfold Brass, Norsk Jazzforum, Sverre Olsrud, Roger Fjeldet, Geir Holm, Eirik Gjerdevik samt en mengde korps og storband.\n Fra høsten 2003 begynte Gudim i stillingen som fast arrangør for forsvarets 5 proffesjonelle musikkorps.\n Av solister/artister Gudim har samarbeidet med kan nevnes Dee Dee Bridgewater, Bill Champlin, Bart van Lier, Eddie Daniels, Bob Mintzer, Django Bates, Ray Anderson, Curtis Stigers, George Gruntz, Martial Solal, Lill Lindfors, Gustavo Bergalli, Nils-Petter Molvær, Jens Winther, Nils Landgren, Viktoria Tolstoy, The Real Group, Cæcilie Norby, Margareta Bengtson, Gunhild Carling, Lars Danielsson, Hector Bingert, Jukka Linkola, Hanne Boel, Jan Eggum, Bugge Wesseltoft, Frode Alnæs, Sondre Lerche, Knut Reiersrud, Vidar Busk, Nathalie Nordnes, Elg, Kåre Conradi, Brede Bøe, Marian Aas-Hansen, Jannike Kruse Jåtog, Lisa Stokke, Erik-André Hvidsten, Odd-Renè Andersen, Hilde Lyrån, Arlene Wilkes, Beate Lech, TNT, The Real Thing, Vamp, The Sinatra Songbook, Jon-Pål Inderberg, Tove Karoline Knutsen, Ola Bremnes, Susanne Lundeng, Fred Johannessen, Torild Sivertsen, Reidar Larsen, Stein-Erik Tafjord, Nissa Nyberget, Elisabeth Lindland, Staffan William-Olsson og Lars Aass.")
    
    let oleChristianHaagenrud = Artist(name: "Ole Christian Haagenrud",
                                       image: #imageLiteral(resourceName: "olechristianhaagenrud"),
                                       description: "Ole Christian Haagenrud (1989) blir regnet som en av de mest lovende unge pianister i Norge. Han fullførte nylig det prestisjefylte diplomstudiet ved Norges Musikkhøgskole der han hadde professor Jens Harald Bratlie og professor Håvard Gimse som sine lærere. Ole Christian har mottatt en rekke priser og utmerkelser. I 2014 ble han tildelt Robert Levins festspillpris. Han har gjort seg sterkt bemerket i nasjonale og internasjonale konkurranser, og i 2008 vant han Ungdommens Musikkmesterskap der han fikk utmerkelsen Årets musiker. Ole Christian har vært solist med profesjonelle symfoniorkestre som Bergen Filharmoniske Orkester og Kringkastingsorkesteret, og mange av hans konserter har blitt overført på nasjonal og internasjonal tv og radio.\n\n Ole Christian er en svært ettertraktet kammermusiker og akkompagnatør, og han har samarbeidet med musikere som Lars Anders Tomter, Henning Kraggerud og Arve Tellefsen. Ole Christian deltar jevnlig på store festivaler i Norge og i utlandet. Han har hatt solo- og kammermusikkopptredener i land som Danmark, England, Kina, Kroatia, Litauen, Nederland, Polen, Portugal, Russland, Slovakia, Slovenia, Spania, Sveits, Sverige,Tyskland, Østerrike og i USA. Han har spilt på flere av de største scenene i Europa som Concertgebouw i Amsterdam, Brahms Saal i Musikverein i Wien, Stephaniensaal i Graz, The Lithuanian National Philharmonic Hall i Vilnius, The Slovenian Philharmonic Hall i Bratislava, Casa da Musica i Porto, Grieghallen i Bergen, Hovedscenen på Den Norske Opera og i Oslo Konserthus.")
    
    let erikFostervoll = Artist(name: "Erik Fostervoll",
                                image: #imageLiteral(resourceName: "erikfostervoll"),
                                description: "Erik, f.1971, startet å spille el-orgel med Edvin Eriksen da han var 9 år gammel. Begynte for alvor med kirke-orgel da han gikk på musikklinjen i Kristiansund. Lærer der var Leidulv Grimsmo. Senere fulgte studier ved Trøndelag musikkonservatorium, med blant annet Jon Skogstad, Harald Riise og Henning Sommero. Erik Fostervoll har vært ansatt som Kantor og kulturskolelærer i Nesset siden 1994. I tillegg til å spille orgel, spiller han også piano. I tillegg til sin faste jobb, er han rett som det er å se/høre bak tangentene i diverse sammenhenger. Bryllup, begravelser, gudstjenester, konserter og enkeltoppdrag for møremusikerene.")
    
    let andersLillebo = Artist(name: "Anders Lillebo",
                               image: #imageLiteral(resourceName: "anderslillebo"),
                               description: "Anders (f. 1987) kommer fra Engerdal kommune og er en musiker og multi-instrumentalist som er aktiv innen både jazz- og folkemusikk-sjangeren. Etter fullendte studier i rytmisk musikk ved universitetet i Agder brakte hans interesse for folkemusikk ham til Irland hvor han tilbrakte to år i det pulserende musikkmiljøet i Galway. Han er i dag bosatt i Norge og er aktiv som frilans-musiker og artist.")
    
    let bjarneHerbjørnrød = Artist(name: "Bjarne Herbjørnrød",
                                     image: #imageLiteral(resourceName: "bjarneherbjornrod"),
                                     description: "Bjarne Herbjørnrød (f. 1985) har bachelor-grad i utøvende saxofon fra Norges musikkhøgskole. Han ble uteksaminert høsten 2009, etter 4 års studier med hovedinstrumentlærer Vibeke Breian. Etter å ha avtjent verneplikten i Kongelige norske marines musikkorps sesongen 2006 – 2007 var Bjarne tilknyttet ensemblet i lengre perioder før han ble fast ansatt våren 2009. Foruten jobben i Marinemusikken underviser han i Moss kulturskole og skole- og amatørkorps i distriktet. Bjarne gjør også diverse spilleoppdrag både i ensembler og som solist.")
    
    let magnusBakken = Artist(name: "Magnus Bakken",
                              image: #imageLiteral(resourceName: "magnusbakken"),
                              description: "Magnus Bakken (b. 1991) er en Norsk jazzmusiker og komponist. Magnus Bakken Kvartett og Ninjabeat er to prosjekt  Magnus har startet. Bakken har tross sin unge alder jobbet med flere av dagens stjerner innen jazzsjangeren som for eksempel Terri Lyne Carrington, George Garzone og Jon Christensen. Han er også en av de mest etterspurte seksjonsmusikere i Norge.")
    
    let lauritzSkeidsvoll = Artist(name: "Lauritz Lyster Skeidsvoll",
                                   image: #imageLiteral(resourceName: "lauritsskeidsvoll"),
                                   description: "Lauritz Lyster Skeidsvoll (født i 1994) kommer fra  Kleive I Molde. Skeidsvoll startet å spille saxofon i 8års alderen gjennom Molde kulturskole. Han studerte Jazzsaxofon i et år på Toneheim folkehøgskole. I 2014 var Lauritz sammen med Moldebandet Columbic med på Framtida i norsk jazz-turneen og skal være med på samme Turnee i 2017, sammen med det Oslobaserte bandet Master Oogway.\n\n Går nå 2.året på jazzlinja ved Norges Musikkhøgskole i Oslo.")
    
    let magneFalk = Artist(name: "Magne Falk",
                           image: #imageLiteral(resourceName: "magnefalk"),
                           description: "Magne har spilt saxofon siden han var 11 år. Han har spilt i blant annet disse ensemblene: Kviltorp Skolekorps, Molde Janitsjar, Storyville Storband, Finn Haukebøs 11-mannsorkester, Lars Vegas Band, Steve &the Soulfarm, Trondheim Storband, Soul 06 + mye mer")
    
    let olavRossebo = Artist(name: "Olav Christer Rossebø",
                             image: #imageLiteral(resourceName: "olavrossebo"),
                             description: "Olav Christer Rossebø er kjent fra band som Lady Hardanger, Frøkedal, Geitungen, Andreas Bjørkås Trio, Earlybird Stringband, Bergen Mandolinband og Anders Lillebo Trio. Han har jobbet som frilans folkemusiker siden 2008 og har femten utgivelser med sine egne band bak seg. Gjennom en rekke lengre opphold i USA og Irland også opparbeidet seg inngående kjennskap til folkemusikken i disse landene. I tillegg til fele spiller han mandolin, banjo og gitar.")
    
    
    var artistArray = [Artist]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        artistArray = [hmkg, redHot, brasskompaniet, vilosTrio, frodeAlnæs, knutMariusDjupvik, tineThingHelseth, larsPetterBjerkeset, ramonAlsius, risaAmbo, larsErikGudim, oleChristianHaagenrud, erikFostervoll, andersLillebo, bjarneHerbjørnrød, magnusBakken, lauritzSkeidsvoll, magneFalk, olavRossebo]

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return artistArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ArtistTBCell
        
        //Cell design
        cell.backgroundCardView.layer.masksToBounds = true
        
        //Populating cell
        cell.artistImage.image = artistArray[indexPath.row].image
        cell.artistLabel.text = artistArray[indexPath.row].name
        
        
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "artistSegue", sender: artistArray[indexPath.row])
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "artistSegue" {
            
            let indexPath = self.tableView.indexPathForSelectedRow
            let destViewController = segue.destination as? ArtistDetailVC
            
            destViewController?.artistImage = artistArray[(indexPath?.row)!].image
            destViewController?.artistDescription = artistArray[(indexPath?.row)!].description
            destViewController?.title = artistArray[(indexPath?.row)!].name
            
            
        }
    }
 

}
