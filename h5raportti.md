#h5 raportti palvelinten hallinnan kurssilta

a) Aihe on sort-of alustavasti varattu (töistä saatu) ja sitä käsitellään myöhemmissä raporteissa jahka pääsen sitä työstämään

b) Well... here we are, this is a test run

c) Kyseessä ei ole pohjimmiltaan monimutkainen keissi, tämä vaatii lähinnä tarkkuutta. Eli : 

kloonataan git-varasto tai luodaan uusi repo git-juttuja (GitHubin sivuilta) varten. 
Ehkä tehokkain ohjeistus ensikertalaiselle, kuten itselleni, löytyy täältä : http://terokarvinen.com/2016/publish-your-project-with-github  
Kyseinen linkki toimi siis itsellänikin lähteenä gittiä käyttäessä viime tunnilla, joten se on erittäin suositeltava lähde jolla pääsee hyvään alkuun!

Kun repo on valmis, siirrytään kansioon ja luodaan sinne saltia varten oma kansionsa (tarvittaessa sudolla), eli : 
		mkdir srv

Tämän jälkeen luodaan sinne tila, vaikkapa 
		sudo nano init.sls

ja annetaan tilalle speksit siitä mitä haluamme sen tekevän, vaikka luo tyhjän testitiedoston tai mitä tahansa, ei ole suurta merkitystä testaamisen kannalta.
Jahka tila on säädetty kuntoon niin päästään vaikeimpaan osuuteen. Git-varastosta tiloja ajaessa täytyy siis erikseen spesifioida polku tilaa varten, eli perus salt-tilan ajaminen ei onnistu.
Git-varastosta ajaessa tiloja tulee komennon näyttää kutakuinkin tältä :

		sudo salt-call --local state.highstate --file-root /home/git-kansio/hakemisto/srv/salt

Käytin selkeyden vuoksi yleisempiä nimityksiä polussa, mutta periaate on sama, eli "file-root" jälkeen annetaan hakemistopolku joka osoittaa git-kansion salt-tilaan.
Kokeilin itselläni vastaavaa temppua ja se toimi tunnilla, mutta nyt jostain syystä ei suostu millään, jään selvittelemään siis....
