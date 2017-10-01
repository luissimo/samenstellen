module MattressTexts
  extend ActiveSupport::Concern
  include MattressBmi

  # Comfort
  def comfort_text
  end

  # Elasticiteit
  def elasticity_text
    mattress = Mattress.all.where(session_id: session.id).last
    sleep_position = mattress.sleep_position
    body_shape = mattress.body_shape

    case firmness # 1
    when 'Soft'
      case sleep_position # 2
      when 'Rug'
        case body_shape # 3
        when 'Ik heb brede schouders'
          "Je matras zal een hoge punt-elasticiteit hebben. Rugslapers hebben normaal geen hoge punt-elasticiteit nodig. Maar jouw brede schouders moeten wat verder kunnen inzakken, zodat je drukverlagend kunt slapen."
        when 'Ik heb brede heupen'
          "Je matras zal een hoge punt-elasticiteit hebben. Rugslapers hebben normaal geen hoge punt-elasticiteit nodig. Maar jouw brede heupen moeten wat verder kunnen inzakken, zodat je drukverlagend kunt slapen."
        when 'Ik heb brede schouders en heupen'
          "Je matras zal een hoge punt-elasticiteit hebben. Rugslapers hebben normaal geen hoge punt-elasticiteit nodig. Maar jouw brede schouders en heupen moeten wat verder kunnen inzakken, zodat je drukverlagend kunt slapen."
        when 'Geen van bovenstaande'
          "Als rugslaper zonder brede schouders of heupen heb je een lage punt-elasticiteit nodig. Bij een rugslaper neemt de wervelkolom dan een betere positie aan waardoor je kunt genieten van optimale drukverlaging."
        end
      when 'Zij'
        case body_shape # 3
        when 'Ik heb brede schouders'
          "Als zijslaper met brede schouders heb je een matras nodig met een zeer hoge punt-elasticiteit. Doordat je schouders dieper kunnen inzakken blijft je wervelkolom recht en geniet je van optimaal comfort."
        when 'Ik heb brede heupen'
          "Als zijslaper met brede heupen heb je een matras nodig met een zeer hoge punt-elasticiteit. Doordat je heupen dieper kunnen inzakken blijft je wervelkolom recht en geniet je van optimaal comfort."
        when 'Ik heb brede schouders en heupen'
          "Als zijslaper ervaart je lichaam ontzettend veel druk bij de schouders en de heupen. Een matras met drukverlagende eigenschappen en een hoge punt-elasticiteit zorgt dat je wervelkolom recht blijft tijdens het slapen. Zo geniet je van optimaal comfort."
        when 'Geen van bovenstaande'
          "Als zijslaper ervaart je lichaam ontzettend veel druk bij de schouders en de heupen. Een matras met drukverlagende eigenschappen en een hoge punt-elasticiteit zorgt dat je wervelkolom recht blijft tijdens het slapen. Zo geniet je van optimaal comfort."
        end
      when 'Buik'
        case body_shape # 3
        when 'Ik heb brede schouders'
          "Als buikslaper heb je een matras met een lage punt-elasticiteit nodig. Je kan dan minder diep inzakken in het matras, waardoor er bij je ruggengraat geen holvorming plaats kan vinden."
        when 'Ik heb brede heupen'
          "Als buikslaper heb je een matras met een lage punt-elasticiteit nodig. Je kan dan minder diep inzakken in het matras, waardoor er bij je ruggengraat geen holvorming plaats kan vinden."
        when 'Ik heb brede schouders en heupen'
          "Als buikslaper heb je een matras met een lage punt-elasticiteit nodig. Je kan dan minder diep inzakken in het matras, waardoor er bij je ruggengraat geen holvorming plaats kan vinden."
        when 'Geen van bovenstaande'
          "Als buikslaper heb je een matras met een lage punt-elasticiteit nodig. Je kan dan minder diep inzakken in het matras, waardoor er bij je ruggengraat geen holvorming plaats kan vinden."
        end
      end

    when 'Medium'
      case sleep_position # 2
      when 'Rug'
        case body_shape # 3
        when 'Ik heb brede schouders'
          "Je matras zal een hoge punt-elasticiteit hebben. Rugslapers hebben normaal geen hoge punt-elasticiteit nodig. Maar jouw brede schouders moeten wat verder kunnen inzakken, zodat je drukverlagend kunt slapen."
        when 'Ik heb brede heupen'
          "Je matras zal een hoge punt-elasticiteit hebben. Rugslapers hebben normaal geen hoge punt-elasticiteit nodig. Maar jouw brede heupen moeten wat verder kunnen inzakken, zodat je drukverlagend kunt slapen."
        when 'Ik heb brede schouders en heupen'
          "Je matras zal een hoge punt-elasticiteit hebben. Rugslapers hebben normaal geen hoge punt-elasticiteit nodig. Maar jouw brede schouders en heupen moeten wat verder kunnen inzakken, zodat je drukverlagend kunt slapen."
        when 'Geen van bovenstaande'
          "Als rugslaper zonder brede schouders of heupen heb je een lage punt-elasticiteit nodig. Bij een rugslaper neemt de wervelkolom dan een betere positie aan waardoor je kunt genieten van optimale drukverlaging."
        end
      when 'Zij'
        case body_shape # 3
        when 'Ik heb brede schouders'
          "Als zijslaper met brede schouders heb je een matras nodig met een zeer hoge punt-elasticiteit. Doordat je schouders dieper kunnen inzakken blijft je wervelkolom recht en geniet je van optimaal comfort."
        when 'Ik heb brede heupen'
          "Als zijslaper met brede heupen heb je een matras nodig met een zeer hoge punt-elasticiteit. Doordat je heupen dieper kunnen inzakken blijft je wervelkolom recht en geniet je van optimaal comfort."
        when 'Ik heb brede schouders en heupen'
          "Als zijslaper ervaart je lichaam ontzettend veel druk bij de schouders en de heupen. Een matras met drukverlagende eigenschappen en een hoge punt-elasticiteit zorgt dat je wervelkolom recht blijft tijdens het slapen. Zo geniet je van optimaal comfort."
        when 'Geen van bovenstaande'
          "Als zijslaper ervaart je lichaam ontzettend veel druk bij de schouders en de heupen. Een matras met drukverlagende eigenschappen en een hoge punt-elasticiteit zorgt dat je wervelkolom recht blijft tijdens het slapen. Zo geniet je van optimaal comfort."
        end
      when 'Buik'
        case body_shape # 3
        when 'Ik heb brede schouders'
          "Als buikslaper heb je een matras met een lage punt-elasticiteit nodig. Je kan dan minder diep inzakken in het matras, waardoor er bij je ruggengraat geen holvorming plaats kan vinden."
        when 'Ik heb brede heupen'
          "Als buikslaper heb je een matras met een lage punt-elasticiteit nodig. Je kan dan minder diep inzakken in het matras, waardoor er bij je ruggengraat geen holvorming plaats kan vinden."
        when 'Ik heb brede schouders en heupen'
          "Als buikslaper heb je een matras met een lage punt-elasticiteit nodig. Je kan dan minder diep inzakken in het matras, waardoor er bij je ruggengraat geen holvorming plaats kan vinden."
        when 'Geen van bovenstaande'
          "Als buikslaper heb je een matras met een lage punt-elasticiteit nodig. Je kan dan minder diep inzakken in het matras, waardoor er bij je ruggengraat geen holvorming plaats kan vinden."
        end
      end

    when 'Firm'
      case sleep_position # 2
      when 'Rug'
        case body_shape # 3
        when 'Ik heb brede schouders'
          "Je matras zal een hoge punt-elasticiteit hebben. Rugslapers hebben normaal geen hoge punt-elasticiteit nodig. Maar jouw brede schouders moeten wat verder kunnen inzakken, zodat je drukverlagend kunt slapen."
        when 'Ik heb brede heupen'
          "Je matras zal een hoge punt-elasticiteit hebben. Rugslapers hebben normaal geen hoge punt-elasticiteit nodig. Maar jouw brede heupen moeten wat verder kunnen inzakken, zodat je drukverlagend kunt slapen."
        when 'Ik heb brede schouders en heupen'
          "Je matras zal een hoge punt-elasticiteit hebben. Rugslapers hebben normaal geen hoge punt-elasticiteit nodig. Maar jouw brede schouders en heupen moeten wat verder kunnen inzakken, zodat je drukverlagend kunt slapen."
        when 'Geen van bovenstaande'
          "Als rugslaper zonder brede schouders of heupen heb je een lage punt-elasticiteit nodig. Bij een rugslaper neemt de wervelkolom dan een betere positie aan waardoor je kunt genieten van optimale drukverlaging."
        end
      when 'Zij'
        case body_shape # 3
        when 'Ik heb brede schouders'
          "Als zijslaper met brede schouders heb je een matras nodig met een zeer hoge punt-elasticiteit. Doordat je schouders dieper kunnen inzakken blijft je wervelkolom recht en geniet je van optimaal comfort."
        when 'Ik heb brede heupen'
          "Als zijslaper met brede heupen heb je een matras nodig met een zeer hoge punt-elasticiteit. Doordat je heupen dieper kunnen inzakken blijft je wervelkolom recht en geniet je van optimaal comfort."
        when 'Ik heb brede schouders en heupen'
          "Als zijslaper ervaart je lichaam ontzettend veel druk bij de schouders en de heupen. Een matras met drukverlagende eigenschappen en een hoge punt-elasticiteit zorgt dat je wervelkolom recht blijft tijdens het slapen. Zo geniet je van optimaal comfort."
        when 'Geen van bovenstaande'
          "Als zijslaper ervaart je lichaam ontzettend veel druk bij de schouders en de heupen. Een matras met drukverlagende eigenschappen en een hoge punt-elasticiteit zorgt dat je wervelkolom recht blijft tijdens het slapen. Zo geniet je van optimaal comfort."
        end
      when 'Buik'
        case body_shape # 3
        when 'Ik heb brede schouders'
          "Als buikslaper heb je een matras met een lage punt-elasticiteit nodig. Je kan dan minder diep inzakken in het matras, waardoor er bij je ruggengraat geen holvorming plaats kan vinden."
        when 'Ik heb brede heupen'
          "Als buikslaper heb je een matras met een lage punt-elasticiteit nodig. Je kan dan minder diep inzakken in het matras, waardoor er bij je ruggengraat geen holvorming plaats kan vinden."
        when 'Ik heb brede schouders en heupen'
          "Als buikslaper heb je een matras met een lage punt-elasticiteit nodig. Je kan dan minder diep inzakken in het matras, waardoor er bij je ruggengraat geen holvorming plaats kan vinden."
        when 'Geen van bovenstaande'
          "Als buikslaper heb je een matras met een lage punt-elasticiteit nodig. Je kan dan minder diep inzakken in het matras, waardoor er bij je ruggengraat geen holvorming plaats kan vinden."
        end
      end

    when 'Very_firm'
      case sleep_position # 2
      when 'Rug'
        case body_shape # 3
        when 'Ik heb brede schouders'
          "Je matras zal een hoge punt-elasticiteit hebben. Rugslapers hebben normaal geen hoge punt-elasticiteit nodig. Maar jouw brede schouders moeten wat verder kunnen inzakken, zodat je drukverlagend kunt slapen."
        when 'Ik heb brede heupen'
          "Je matras zal een hoge punt-elasticiteit hebben. Rugslapers hebben normaal geen hoge punt-elasticiteit nodig. Maar jouw brede heupen moeten wat verder kunnen inzakken, zodat je drukverlagend kunt slapen."
        when 'Ik heb brede schouders en heupen'
          "Je matras zal een hoge punt-elasticiteit hebben. Rugslapers hebben normaal geen hoge punt-elasticiteit nodig. Maar jouw brede schouders en heupen moeten wat verder kunnen inzakken, zodat je drukverlagend kunt slapen."
        when 'Geen van bovenstaande'
          "Als rugslaper zonder brede schouders of heupen heb je een lage punt-elasticiteit nodig. Bij een rugslaper neemt de wervelkolom dan een betere positie aan waardoor je kunt genieten van optimale drukverlaging."
        end
      when 'Zij'
        case body_shape # 3
        when 'Ik heb brede schouders'
          "Als zijslaper met brede schouders heb je een matras nodig met een zeer hoge punt-elasticiteit. Doordat je schouders dieper kunnen inzakken blijft je wervelkolom recht en geniet je van optimaal comfort."
        when 'Ik heb brede heupen'
          "Als zijslaper met brede heupen heb je een matras nodig met een zeer hoge punt-elasticiteit. Doordat je heupen dieper kunnen inzakken blijft je wervelkolom recht en geniet je van optimaal comfort."
        when 'Ik heb brede schouders en heupen'
          "Als zijslaper ervaart je lichaam ontzettend veel druk bij de schouders en de heupen. Een matras met drukverlagende eigenschappen en een hoge punt-elasticiteit zorgt dat je wervelkolom recht blijft tijdens het slapen. Zo geniet je van optimaal comfort."
        when 'Geen van bovenstaande'
          "Als zijslaper ervaart je lichaam ontzettend veel druk bij de schouders en de heupen. Een matras met drukverlagende eigenschappen en een hoge punt-elasticiteit zorgt dat je wervelkolom recht blijft tijdens het slapen. Zo geniet je van optimaal comfort."
        end
      when 'Buik'
        case body_shape # 3
        when 'Ik heb brede schouders'
          "Als buikslaper heb je een matras met een lage punt-elasticiteit nodig. Je kan dan minder diep inzakken in het matras, waardoor er bij je ruggengraat geen holvorming plaats kan vinden."
        when 'Ik heb brede heupen'
          "Als buikslaper heb je een matras met een lage punt-elasticiteit nodig. Je kan dan minder diep inzakken in het matras, waardoor er bij je ruggengraat geen holvorming plaats kan vinden."
        when 'Ik heb brede schouders en heupen'
          "Als buikslaper heb je een matras met een lage punt-elasticiteit nodig. Je kan dan minder diep inzakken in het matras, waardoor er bij je ruggengraat geen holvorming plaats kan vinden."
        when 'Geen van bovenstaande'
          "Als buikslaper heb je een matras met een lage punt-elasticiteit nodig. Je kan dan minder diep inzakken in het matras, waardoor er bij je ruggengraat geen holvorming plaats kan vinden."
        end
      end
    end
  end

  # Stevigheid
  def firmness_text
    mattress = Mattress.all.where(session_id: session.id).last
    sleep_position = mattress.sleep_position
    body_shape = mattress.body_shape

    case firmness # 1
    when 'Soft'
      case sleep_position # 2
      when 'Rug'
        case body_shape # 3
        when 'Ik heb brede schouders'
          "Door de combinatie van je gewicht en lengte heb je een zacht matras nodig. Je matras zal het juiste comfort bieden zodat de natuurlijke S-vorm van je rug behouden blijft."
        when 'Ik heb brede heupen'
          "Door de combinatie van je gewicht en lengte heb je een zacht matras nodig. Je matras zal het juiste comfort bieden zodat de natuurlijke S-vorm van je rug behouden blijft."
        when 'Ik heb brede schouders en heupen'
          "Door de combinatie van je gewicht en lengte heb je een zacht matras nodig. Je matras zal het juiste comfort bieden zodat de natuurlijke S-vorm van je rug behouden blijft."
        when 'Geen van bovenstaande'
          "Door de combinatie van je gewicht en lengte heb je een zacht matras nodig. Je matras zal het juiste comfort bieden zodat de natuurlijke S-vorm van je rug behouden blijft."
        end
      when 'Zij'
        case body_shape # 3
        when 'Ik heb brede schouders'
          "Door de combinatie van je gewicht en lengte heb je een zacht matras nodig. Je matras zal drukverlagende eigenschappen bezitten. Zo zal je matras het juiste comfort bieden zodat je wervelkolom geen druk ervaart."
        when 'Ik heb brede heupen'
          "Door de combinatie van je gewicht en lengte heb je een zacht matras nodig. Je matras zal drukverlagende eigenschappen bezitten. Zo zal je matras het juiste comfort bieden zodat je wervelkolom geen druk ervaart."
        when 'Ik heb brede schouders en heupen'
          "Door de combinatie van je gewicht en lengte heb je een zacht matras nodig. Je matras zal drukverlagende eigenschappen bezitten. Zo zal je matras het juiste comfort bieden zodat je wervelkolom geen druk ervaart."
        when 'Geen van bovenstaande'
          "Door de combinatie van je gewicht en lengte heb je een zacht matras nodig. Je matras zal drukverlagende eigenschappen bezitten. Zo zal je matras het juiste comfort bieden zodat je wervelkolom geen druk ervaart."
        end
      when 'Buik'
        case body_shape # 3
        when 'Ik heb brede schouders'
          "Door de combinatie van je gewicht en lengte en slaappositie heb je een medium matras nodig. Als buikslaper heb je een stevigere matras nodig dan gebruikelijk. Hierdoor blijft je wervelkolom zo recht mogelijk tijdens het slapen."
        when 'Ik heb brede heupen'
          "Door de combinatie van je gewicht en lengte en slaappositie heb je een medium matras nodig. Als buikslaper heb je een stevigere matras nodig dan gebruikelijk. Hierdoor blijft je wervelkolom zo recht mogelijk tijdens het slapen."
        when 'Ik heb brede schouders en heupen'
          "Door de combinatie van je gewicht en lengte en slaappositie heb je een medium matras nodig. Als buikslaper heb je een stevigere matras nodig dan gebruikelijk. Hierdoor blijft je wervelkolom zo recht mogelijk tijdens het slapen."
        when 'Geen van bovenstaande'
          "Door de combinatie van je gewicht en lengte en slaappositie heb je een medium matras nodig. Als buikslaper heb je een stevigere matras nodig dan gebruikelijk. Hierdoor blijft je wervelkolom zo recht mogelijk tijdens het slapen."
        end
      end

    when 'Medium'
      case sleep_position # 2
      when 'Rug'
        case body_shape # 3
        when 'Ik heb brede schouders'
          "Door de combinatie van je gewicht en lengte heb je een medium matras nodig. Je matras zal het juiste comfort bieden zodat de natuurlijke S-vorm van je rug behouden blijft."
        when 'Ik heb brede heupen'
          "Door de combinatie van je gewicht en lengte heb je een medium matras nodig. Je matras zal het juiste comfort bieden zodat de natuurlijke S-vorm van je rug behouden blijft."
        when 'Ik heb brede schouders en heupen'
          "Door de combinatie van je gewicht en lengte heb je een medium matras nodig. Je matras zal het juiste comfort bieden zodat de natuurlijke S-vorm van je rug behouden blijft."
        when 'Geen van bovenstaande'
          "Door de combinatie van je gewicht en lengte heb je een medium matras nodig. Je matras zal het juiste comfort bieden zodat de natuurlijke S-vorm van je rug behouden blijft."
        end
      when 'Zij'
        case body_shape # 3
        when 'Ik heb brede schouders'
          "Door de combinatie van je gewicht en lengte heb je een medium matras nodig. Je matras zal drukverlagende eigenschappen bezitten. Zo zal je matras het juiste comfort bieden zodat je wervelkolom geen druk ervaart."
        when 'Ik heb brede heupen'
          "Door de combinatie van je gewicht en lengte heb je een medium matras nodig. Je matras zal drukverlagende eigenschappen bezitten. Zo zal je matras het juiste comfort bieden zodat je wervelkolom geen druk ervaart."
        when 'Ik heb brede schouders en heupen'
          "Door de combinatie van je gewicht en lengte heb je een medium matras nodig. Je matras zal drukverlagende eigenschappen bezitten. Zo zal je matras het juiste comfort bieden zodat je wervelkolom geen druk ervaart."
        when 'Geen van bovenstaande'
          "Door de combinatie van je gewicht en lengte heb je een medium matras nodig. Je matras zal drukverlagende eigenschappen bezitten. Zo zal je matras het juiste comfort bieden zodat je wervelkolom geen druk ervaart."
        end
      when 'Buik'
        case body_shape # 3
        when 'Ik heb brede schouders'
          "Door de combinatie van je gewicht en lengte en slaappositie heb je een stevig matras nodig. Als buikslaper heb je een stevigere matras nodig dan gebruikelijk. Hierdoor blijft je wervelkolom zo recht mogelijk tijdens het slapen."
        when 'Ik heb brede heupen'
          "Door de combinatie van je gewicht en lengte en slaappositie heb je een stevig matras nodig. Als buikslaper heb je een stevigere matras nodig dan gebruikelijk. Hierdoor blijft je wervelkolom zo recht mogelijk tijdens het slapen."
        when 'Ik heb brede schouders en heupen'
          "Door de combinatie van je gewicht en lengte en slaappositie heb je een stevig matras nodig. Als buikslaper heb je een stevigere matras nodig dan gebruikelijk. Hierdoor blijft je wervelkolom zo recht mogelijk tijdens het slapen."
        when 'Geen van bovenstaande'
          "Door de combinatie van je gewicht en lengte en slaappositie heb je een stevig matras nodig. Als buikslaper heb je een stevigere matras nodig dan gebruikelijk. Hierdoor blijft je wervelkolom zo recht mogelijk tijdens het slapen."
        end
      end

    when 'Firm'
      case sleep_position # 2
      when 'Rug'
        case body_shape # 3
        when 'Ik heb brede schouders'
          "Door de combinatie van je gewicht en lengte heb je een stevig matras nodig. Je matras zal het juiste comfort bieden zodat de natuurlijke S-vorm van je rug behouden blijft."
        when 'Ik heb brede heupen'
          "Door de combinatie van je gewicht en lengte heb je een stevig matras nodig. Je matras zal het juiste comfort bieden zodat de natuurlijke S-vorm van je rug behouden blijft."
        when 'Ik heb brede schouders en heupen'
          "Door de combinatie van je gewicht en lengte heb je een stevig matras nodig. Je matras zal het juiste comfort bieden zodat de natuurlijke S-vorm van je rug behouden blijft."
        when 'Geen van bovenstaande'
          "Door de combinatie van je gewicht en lengte heb je een stevig matras nodig. Je matras zal het juiste comfort bieden zodat de natuurlijke S-vorm van je rug behouden blijft."
        end
      when 'Zij'
        case body_shape # 3
        when 'Ik heb brede schouders'
          "Door de combinatie van je gewicht en lengte heb je een stevig matras nodig. Je matras zal drukverlagende eigenschappen bezitten. Zo zal je matras het juiste comfort bieden zodat je wervelkolom geen druk ervaart."
        when 'Ik heb brede heupen'
          "Door de combinatie van je gewicht en lengte heb je een stevig matras nodig. Je matras zal drukverlagende eigenschappen bezitten. Zo zal je matras het juiste comfort bieden zodat je wervelkolom geen druk ervaart."
        when 'Ik heb brede schouders en heupen'
          "Door de combinatie van je gewicht en lengte heb je een stevig matras nodig. Je matras zal drukverlagende eigenschappen bezitten. Zo zal je matras het juiste comfort bieden zodat je wervelkolom geen druk ervaart."
        when 'Geen van bovenstaande'
          "Door de combinatie van je gewicht en lengte heb je een stevig matras nodig. Je matras zal drukverlagende eigenschappen bezitten. Zo zal je matras het juiste comfort bieden zodat je wervelkolom geen druk ervaart."
        end
      when 'Buik'
        case body_shape # 3
        when 'Ik heb brede schouders'
          "Door de combinatie van je gewicht en lengte en slaappositie heb je een zeer stevig matras nodig. Als buikslaper heb je een stevigere matras nodig dan gebruikelijk. Hierdoor blijft je wervelkolom zo recht mogelijk tijdens het slapen."
        when 'Ik heb brede heupen'
          "Door de combinatie van je gewicht en lengte en slaappositie heb je een zeer stevig matras nodig. Als buikslaper heb je een stevigere matras nodig dan gebruikelijk. Hierdoor blijft je wervelkolom zo recht mogelijk tijdens het slapen."
        when 'Ik heb brede schouders en heupen'
          "Door de combinatie van je gewicht en lengte en slaappositie heb je een zeer stevig matras nodig. Als buikslaper heb je een stevigere matras nodig dan gebruikelijk. Hierdoor blijft je wervelkolom zo recht mogelijk tijdens het slapen."
        when 'Geen van bovenstaande'
          "Door de combinatie van je gewicht en lengte en slaappositie heb je een zeer stevig matras nodig. Als buikslaper heb je een stevigere matras nodig dan gebruikelijk. Hierdoor blijft je wervelkolom zo recht mogelijk tijdens het slapen."
        end
      end

    when 'Very_firm'
      case sleep_position # 2
      when 'Rug'
        case body_shape # 3
        when 'Ik heb brede schouders'
          "Door de combinatie van je gewicht en lengte heb je een zeer stevig matras nodig. Je matras zal het juiste comfort bieden zodat de natuurlijke S-vorm van je rug behouden blijft."
        when 'Ik heb brede heupen'
          "Door de combinatie van je gewicht en lengte heb je een zeer stevig matras nodig. Je matras zal het juiste comfort bieden zodat de natuurlijke S-vorm van je rug behouden blijft."
        when 'Ik heb brede schouders en heupen'
          "Door de combinatie van je gewicht en lengte heb je een zeer stevig matras nodig. Je matras zal het juiste comfort bieden zodat de natuurlijke S-vorm van je rug behouden blijft."
        when 'Geen van bovenstaande'
          "Door de combinatie van je gewicht en lengte heb je een zeer stevig matras nodig. Je matras zal het juiste comfort bieden zodat de natuurlijke S-vorm van je rug behouden blijft."
        end
      when 'Zij'
        case body_shape # 3
        when 'Ik heb brede schouders'
          "Door de combinatie van je gewicht en lengte heb je een zeer stevig matras nodig. Je matras zal drukverlagende eigenschappen bezitten. Zo zal je matras het juiste comfort bieden zodat je wervelkolom geen druk ervaart."
        when 'Ik heb brede heupen'
          "Door de combinatie van je gewicht en lengte heb je een zeer stevig matras nodig. Je matras zal drukverlagende eigenschappen bezitten. Zo zal je matras het juiste comfort bieden zodat je wervelkolom geen druk ervaart."
        when 'Ik heb brede schouders en heupen'
          "Door de combinatie van je gewicht en lengte heb je een zeer stevig matras nodig. Je matras zal drukverlagende eigenschappen bezitten. Zo zal je matras het juiste comfort bieden zodat je wervelkolom geen druk ervaart."
        when 'Geen van bovenstaande'
          "Door de combinatie van je gewicht en lengte heb je een zeer stevig matras nodig. Je matras zal drukverlagende eigenschappen bezitten. Zo zal je matras het juiste comfort bieden zodat je wervelkolom geen druk ervaart."
        end
      when 'Buik'
        case body_shape # 3
        when 'Ik heb brede schouders'
          "Door de combinatie van je gewicht en lengte en slaappositie heb je een zeer stevig matras nodig. Als buikslaper heb je een stevigere matras nodig dan gebruikelijk. Hierdoor blijft je wervelkolom zo recht mogelijk tijdens het slapen. "
        when 'Ik heb brede heupen'
          "Door de combinatie van je gewicht en lengte en slaappositie heb je een zeer stevig matras nodig. Als buikslaper heb je een stevigere matras nodig dan gebruikelijk. Hierdoor blijft je wervelkolom zo recht mogelijk tijdens het slapen."
        when 'Ik heb brede schouders en heupen'
          "Door de combinatie van je gewicht en lengte en slaappositie heb je een zeer stevig matras nodig. Als buikslaper heb je een stevigere matras nodig dan gebruikelijk. Hierdoor blijft je wervelkolom zo recht mogelijk tijdens het slapen."
        when 'Geen van bovenstaande'
          "Door de combinatie van je gewicht en lengte en slaappositie heb je een zeer stevig matras nodig. Als buikslaper heb je een stevigere matras nodig dan gebruikelijk. Hierdoor blijft je wervelkolom zo recht mogelijk tijdens het slapen."
        end
      end
    end
  end

  # Warmte-regulatie
  def heat_regulation_text
  end

end
