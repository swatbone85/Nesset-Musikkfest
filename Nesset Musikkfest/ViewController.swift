//
//  ViewController.swift
//  Nesset Musikkfest
//
//  Created by Thomas Swatland on 14/03/2017.
//  Copyright © 2017 Thomas Swatland. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!

    //Declaration of Event class
    class Event {
        
        let eventName: String
        let time: String
        let price: String
        var ticketLink = URL(string: "")
        let description: String
        
        init(eventName: String, time: String, price: String, ticketLink: URL, description: String) {
            self.eventName = eventName
            self.time = time
            self.price = price
            self.ticketLink = ticketLink
            self.description = description
        }
    }
    
    //Declaring Event objects
    
    let hmkg = Event(eventName: "HM Kongens Garde - Drilloppvisning",
                     time: "Tor 22/6 17:30",
                     price: "Gratis",
                     ticketLink: URL(string: "https://musikkogdrill.com/")!,
                     description: "Bli med på en historisk marsj gjennom Eidsvåg sentrum. Marsjen starter fra Nessethallen kl. 17:30 via NOS og ender opp på Alstadplassen. På Alstadplassen vil du få oppleve gardemusikkens verdenskjente drilloppvisning. Dette er den siste drill-oppvisningen HMKG gjør i Norge før de reiser til Basel Military Tattoo. Hans Majestet Kongens Gardes 3. gardekompani består av 2 tropper; musikk- og drilltropp. Musikktroppen består i tillegg av 2 korps; signal- og hovedkorps. Kompaniet teller normalt 10-12 befal og mellom 120-130 gardister etter følgende fordeling:\n\n -ledelse: 10-12 offiserer/befal\n -kompanistab: 3-4 gardister\n -hovedkorps: 50-60 gardister \n -signalkorps: 15-25 gardister\n -drilltropp: 36-40 gardister")
    
    let hmkgFestKonsert = Event(eventName: "HM Kongens Garde - Festkonsert",
                                time: "Tor 22/6 20:00",
                                price: "225kr + avgift",
                                ticketLink: URL(string: "https://nessetmusikkfest.hoopla.no/sales/3180619090")!,
                                description: "Denne tradisjonsrike konserten består av hele Norges Musikk og Drillavdeling, på over 120 vernepliktige soldater fordelt på et janitsjarkorps, et tradisjonelt militært signalkorps og en drilltropp. Dette er en sjelden anledning til å oppleve HMKGs festkonsert utenfor hovedstaden!\n Årets korps består som alltid av Norges fremste amatørmusikere, satt sammen til å bli Norges fremste representasjonsavdeling. Disse soldatene skal sammen med drilltroppen i året som kommer reise rundt i inn- og utland og representere Forsvaret og Norge. Men før det ønsker de å berøre og begeistre med sine konserter!\n Festkonserten, som i år er Musikkmajor Eldar Nilsen sin siste, blir en musikalsk rundreise med et tilbakeblikk på de siste 12 års repertoaret. Her blir det klassisk militærmusikk, 1812- overtyre, norsk musikk, spennende rytmer og flotte vokale innslag. Vi blir kjent med gardistene på flere måter, og vil som alltid kunne få flere overraskelser underveis. Det er første gang de lokale musikerne Knut Marius Djupvik og løytnant Lars Petter Bjerkeset er solister med gardemusikken. Mon tro om ikke Gardens Drilltropp også vil opptre i løpet av kveldens festkonsert også?")
    
    let tineThing = Event(eventName: "Tine Thing Helseth",
                          time: "Fre 23/6 19:00",
                          price: "300kr + avgift",
                          ticketLink: URL(string: "https://nessetmusikkfest.hoopla.no/sales/3965417074")!,
                          description: "Med sin karakteristiske myke og klare spillestil har Tine Thing Helseth, i en alder av kun 29 år, etablert seg som en av sin generasjons ledende trompetister. Med hele verden som arena har hun vært solist med ledende orkestre i Europa, Amerika og Asia, i tillegg til alle de store norske orkestrene.\n\n Denne kvelden gjester altså en verdensstjerne Nesset Musikkfest. Tine er kunstnerisk ansvarlig for denne konserten, og hun har satt sammen et variert program i samspill med et knippe andre festivalartister.\n\n Tine har den siste tiden prøvd seg som sanger med stort hell. Konserten byr på både klassiske svisker og kjente standardlåter. Ta turen til Nesset prestegard hvor Bjørnstjerne Bjørnson levde i sine barndomsår. Her på Nesset prestegård vokste mine inntrykk, skrev Bjørnson. Vi garanterer at inntrykkene dine etter denne konserten også vil være noe du vil huske lenge!")
    
    let bigBandExplosion = Event(eventName: "Big Band Explosion",
                                 time: "Fre 23/6 21:00",
                                 price: "350kr + avgift",
                                 ticketLink: URL(string: "https://nessetmusikkfest.hoopla.no/sales/2645310151")!,
                                 description: "Frode Alnæs møter Red Hot i en helt ny konstellasjon på selveste Sankthansaften! Det kjente lokalbandet Red Hot med Knut Marius Djupvik i front opptrer for første gang som storband sammen med Alnæs, og det fyres opp til en rødglødende konsert på storscena!\n Red Hot Big Band vil bli et prosjekt hvor det på det meste er 22 personer på scenen. Her vil lokale artister som Lauritz Lyster Skeidsvoll (saxofon) og Magne Falk (saxofon) også medvirke.\n Lederen av samarbeidet er en av landets desidert beste innen sjangeren, nemlig Lars Erik Gudim. Lars Erik vil både dirigere konserten, og lage helt nye arrangementer av Red Hot sine låter.")
    
    let familieDag = Event(eventName: "Familiedag",
                           time: "Lør 24/6 11:00",
                           price: "150kr + avgift",
                           ticketLink: URL(string: "https://nessetmusikkfest.hoopla.no/sales/4240903224")!,
                           description: "Vi inviterer deg og hele familien til musikkvandring og familiekonsert med kor og korps på vakre Nesset prestegard. Her blir det blant annet gjensyn med “Charleys tante”-oppsetningen som ble gjort av Eidsvåg Ungdomslag, i tillegg til andre spennende minikonserter i de mange verneverdige husene på prestegården.\n Ta også turen innom årets store nyhet; Ramon’s House of Loops! Her kan du lære hvordan denne norsk-svensk-spanske trompetisten gjør sine magiske triks på sin fenomenale loopmaskin! Det blir også anledning for store og små til å loope selv.\n Etter vandringen inviterer vi alle gjester til familiekonsert på hovedscenen. Her presenteres et spennende konsept der unge lovende talenter i regionen samarbeider med festivalens profesjonelle artister.\n\n - Musikkvandring kl. 11.00\n - Familiekonsert kl. 12.45 - 14.00")
    
    let klassiskePerler = Event(eventName: "Klassiske Perler",
                                time: "Lør 24/6 16:00",
                                price: "300kr + avgift",
                                ticketLink: URL(string: "https://nessetmusikkfest.hoopla.no/sales/3278600263")!,
                                description: "Velkommen til en helt spesiell konsert på Nesset Prestegård. I fantastiske omgivelser vil dere få oppleve musikk fremført av noen av Europas fremste klassiske musikere.\n\n Det hele starter på låven kl 16:00 der menyen er som følger:\n\n Forspill med Ole Christian Haagenrud og Lars Petter Bjerkeset\n Prestegårdsbrød fra den nyrestaurerte bakerovnen\n Fransk og italiensk vin\n Musikalske smakebiter\n\n Kl. 17:00 forflytter vi oss ned i Kufjøsen og serverer dagens hovedretter:\n\n M. Ravel (1875-1937)\n Trio for fiolin, cello og klaver\n Modéré\n Pantoum (Assez vif)\n Passacaille (Très large)\n Final (Animé)\n\n J. S Bach / F. Busoni\n Chaconne i d-moll\n\n Pause\n\n D. Shostakovich (1906-1975)\n Trio nr. 2 i e-moll for fiolin, cello og klaver\n Andante\n Allegro con brio\n Largo\n Allegretto")
    
    let musikkcruise = Event(eventName: "Musikkcruise",
                             time: "Lør 24/6 19:15",
                             price: "700kr + avgift",
                             ticketLink: URL(string: "https://nessetmusikkfest.hoopla.no/sales/2628655803")!,
                             description: "Hjertelig velkommen til Musikkfest på M/S Mardøla! I løpet av dette 3-timers lange cruiset vil dere bli servert musikk fra ulike sjangre akkompagnert av nydelig mat og drikke.\n\n Flere av våre eminente festivalartister skal gjøre dette til en minnerik kveld, og dere vil selvfølgelig også få mulighet til å slå av en prat med musikerne ombord. Kom og lytt til eventyrlig musikk, underholdende historier og små og store overraskelser underveis; det er nok ikke hver dag man får mulighet til å se og oppleve en norsk-svensk spanjol på trompet i en båt nedover en innsjø i Nesset.\n\n Bli med på en sjelden fest på Eikesdalsvatnet. Omkranset av majestetiske fjell og storslått natur viser vi frem Nesset kommune på sitt aller vakreste!\n\n Bussavgang fra bussholdeplassen v/Coop i Eidsvåg sentrum til Øverås kl 18:45 via Nesset Prestegard\n\n Retur fra Øverås kl 22:15 til Nesset Prestegard og videre til sentrum")
    
    let irskPubkveld = Event(eventName: "Irsk Pubkveld",
                             time: "Lør 24/6 22:00",
                             price: "250kr + avgift",
                             ticketLink: URL(string: "https://nessetmusikkfest.hoopla.no/sales/2750893947")!,
                             description: "Anders Lillebo er en av landets fremste utøvere innen irsk folkemusikk. Han startet sin musikalske løpebane med å studere jazzpiano men har i løpet av de senere årene egnet seg stadig mer til ulike former for folkemusikk. Han tilbrakte bla. to år i Galway på Irlands vestkyst, hvor han lærte tradisjonell irsk folkemusikk fra noen av de beste musikerne innen sjangeren. Anders arbeider for tiden med å spille inn sin debutplate i Irland.\n\nAnders er også bla. medlem av bandet Red Hot.\n\nMed seg i trioen har Anders Olav Christer Rossebø og Jack Talty.\n\nOlav Christer Rossebø er kjent fra band som Lady Hardanger, Frøkedal, Geitungen, Andreas Bjørkås Trio, Earlybird Stringband, og Bergen Mandolinband. Gjennom en rekke lengre opphold i USA og Irland også opparbeidet seg inngående kjennskap til folkemusikken i disse landene.\n\nJack Talty er en av Irlands mest ettertraktede folkemusikere. Han har produsert og medvirket på en rekke plater med noen av de beste utøverne i landet. I 2016 gav han ut sitt første soloalbum.\n\nTil Nesset kommer de med et arsenal av instrumenter og et utvalg av noe av den beste musikken den grønne øya har å by på.\n\nAnders Lillebo - trekkspill, fløyte, gitar, vokal\nOlav Rossebø - fele, mandolin, banjo, gitar\nJack Talty – piano, concertina")
    
    let kirkekonsert = Event(eventName: "Kirkekonsert",
                             time: "Søn 25/6 15:00",
                             price: "300kr + avgift",
                             ticketLink: URL(string: "https://nessetmusikkfest.hoopla.no/sales/2996525324")!,
                             description: "Det er kanskje mange som sitter igjen med gode minner fra konserten “Lars Petter & Friends” i 2015. En fullsatt kirke og strålende tilbakemeldinger ga ideen til å utvikle Nesset Musikkfest 2016, og vi kan på en måte si at vi avslutter årets festival der det hele startet.\n\n På årets kirkekonsert får du oppleve Brasskompaniet i all sin prakt. De ti messingblåserne har på svært kort tid skapt seg et internasjonalt navn og består av noen av landets fremste blåsere. Med seg har de trompetistene Tine Thing Helseth og Ramon Figueras Alsius, samt kantor i Nesset kommune, Erik Fostervoll.\n\n Fra programmet:\n\n Italia, konsertmarsj no.2; Sam Rydberg\n\n Arnhem; Albert Edward Kelly\n\n Solist - Tine Thing Helseth:\n\n - Libertango Astor Piazolla\n- September Song Kurt Weill\n - Airy Flight Rolf Martinsson/Daniel Fjällström\n\n Toccata - Oh, the Blessed Lord Wilfred Heaton, arr. Vidar Nordli\n\n Reinlender fra Follo Frode Thingnæs \n\n - med fler!")
    
    var eventArray: [Event] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        eventArray = [hmkg, hmkgFestKonsert, tineThing, bigBandExplosion, familieDag, klassiskePerler, musikkcruise, irskPubkveld, kirkekonsert]
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return eventArray.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) ->  UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ViewControllerTableViewCell
        
        cell.backgroundCardView.layer.cornerRadius = 8.0
        cell.backgroundCardView.layer.masksToBounds = true
        
        //Populating and designing imageViews
        cell.background_Image.image = UIImage(named: "\(eventArray[indexPath.row].eventName)")
        cell.background_Image.layer.cornerRadius = 8.0
        cell.background_Image.layer.masksToBounds = true
        
        //Populating textLabels
        cell.eventLabel.text = "\(eventArray[indexPath.row].eventName)"
        cell.timeLabel.text = "\(eventArray[indexPath.row].time)"
        cell.priceLabel.text = "\(eventArray[indexPath.row].price)"
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        performSegue(withIdentifier: "detailSegue", sender: eventArray[indexPath.row])
        
        tableView.deselectRow(at: indexPath, animated: true)

    }
    
    //Cell display
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        cell.alpha = 0.0
        let transform = CATransform3DTranslate(CATransform3DIdentity, 0, 20, 50)
        cell.layer.transform = transform
        
        //Cell display animation
        UIView.animate(withDuration: 0.3) {
            cell.alpha = 1.0
            cell.layer.transform = CATransform3DIdentity
        }
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "detailSegue", let destViewController = segue.destination as? InfoVC, let indexPath = self.tableView.indexPathForSelectedRow {
            let selectedEvent = eventArray[indexPath.row].eventName
            let eventDescription = eventArray[indexPath.row].description
            let ticketURL = eventArray[indexPath.row].ticketLink
            destViewController.ticketUrl = ticketURL
        
            //Populating InfoVC
            destViewController.detailImage = UIImage(named: selectedEvent)!
            destViewController.detail = eventDescription
            destViewController.title = selectedEvent
            
        }
        
    }
    
}
