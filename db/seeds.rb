# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Request.destroy_all
User.destroy_all
Location.destroy_all

users = [
  {
    email: 'test1@gmail.com',
    password: 'password',
    address: '23, cours du Medoc, 33000 Bordeaux',
    first_name: 'Michel',
    last_name: 'Dupont'
  },
  {
    email: 'test2@gmail.com',
    password: 'password',
    address: '40 cours Saint Louis, 33000 Bordeaux',
    first_name: 'Marie',
    last_name: 'Bernardino'
  },
  {
    email: 'test3@gmail.com',
    password: 'password',
    address: '50 rue Notre Dame, 33000 Bordeaux',
    first_name: 'Jean-Jacques',
    last_name: 'Valitran'
  },
  {
    email: 'test4@gmail.com',
    password: 'password',
    address: '634, cours de la Liberation, 33400 Talence',
    first_name: 'Sophie',
    last_name: 'Jacquot'
  },
  {
    email: 'test5@gmail.com',
    password: 'password',
    address: '10 rue de la Dalbade, 31000 Toulouse',
    first_name: 'Antoine',
    last_name: 'Albertin'
  }
]

users_arr = []
users.each do |user|
  user_new = User.new(user)
  if user_new.save
    puts "user id: #{user_new.id} OK"
    users_arr << user_new
  end
end

locations = [
  {
    address: '20 cours Pasteur, 33000 Bordeaux'
  },
  {
    address: '10 cours Saint Louis, 33000 Bordeaux'
  },
  {
    address: '8 impasse Barreyre Deuxième, 33000 Bordeaux'
  },
  {
    address: '5 rue Robert d\'Ennery, 33200 Bordeaux'
  },
  {
    address: '28 rue de Pessac, 33000 Bordeaux'
  },
  {
    address: '14 rue Notre Dame, 33000 Bordeaux'
  },
  {
    address: '1719 Allée Margaux, 33000 Bordeaux'
  },
  {
    address: '115 cours Balguerie Stuttenberg, 33200 Bordeaux'
  },
  {
    address: '1 rue André Messager, 33400 Talence'
  },
  {
    address: '263 avenue de Tivoli, 33110 Le Bouscat'
  },
  {
    address: '20 rue du Petit Cardinal, 33100 Bordeaux'
  },
  {
    address: '80 rue des Sablières, 33800 Bordeaux'
  }
]

loc_arr = []
locations.each do |loc|
  loc_new = Location.new(loc)
  if loc_new.save
    puts "location id: #{loc_new.id} OK"
    loc_arr << loc_new
  end
end


requests = [
  {
    departure: loc_arr[0],
    arrival: loc_arr[1],
    description: '4 chemises à récupérer au pressing',
    parcel: 1,
    customer: users_arr[0],
    status: 0,
    distance: 6,
    price: 8,
    polyline: 'a}spGbjoBpAk@HA@UB_@De@HiBFeBDkCKeHI{BUkB_@sBk@aDW}AGi@m@gEe@sAOY@QCUGQM_@o@oAc@}@OWGCI@QPCL?Du@~@sCnDc@j@IZeAbAeA~@q@f@gE|CsAv@aA`@_JxCeCp@iHpAcC^oCXgAAkAEmCUgCa@oA]sC{@gAc@iAi@m@a@eBoAuBeBkCeCOQGLIVIVmByBgByB_@c@W`@aErGkAlBmAhBeBtCcBlCj@Z~@f@'
  },
  {
    departure: loc_arr[2],
    arrival: loc_arr[3],
    description: 'Plateaux apéro',
    parcel: 1,
    customer: users_arr[1],
    status: 0,
    distance: 9,
    price: 12,
    polyline: '{nxpG|`oB\q@`@f@RXyBxEsCLY@mADK?g@?CGEEMEMDILCXBJFLDBB@Rl@BVJpFNzDJdA^jBd@|Ac@x@_@r@ERBVlD|IIVBRFFPBD?n@zApDtJzDxJLf@Nv@iCtDaChDyA~Be@n@OLMPXRv@f@~BxAjCfBd@^z@n@ZPhBfA`DvBjCfBzAhAtDdCdAv@zAz@zCnBxEhD~E~CjGhERLaAhD{AlFe@jBQ|@w@dHk@zFc@jEBLBLBDFFrBz@fGhC|Af@'
  },
  {
    departure: loc_arr[4],
    arrival: loc_arr[5],
    description: 'Plateaux découverte',
    parcel: 1,
    customer: users_arr[1],
    rider: users_arr[2],
    status: 2,
    distance: 2,
    price: 3,
    code: "Grand Mulot Sympa",
    polyline: 'm~rpG~dpB[qAScCD}AA_EGaGeC?_ArHoA~IIZMlAAHS?O?_B^wHjBqAZo@ReB^kBd@[BeAVqD~@}Bf@aB`@O@wF{CcAe@Q@MNM\CFIDoBASGQEEIGUGcBG_ACGiE{B_D_BwGqDo@i@g@GiDmByDmBiCsABe@?wAE{@UoFsD^o@_HqCkAAA'
    },
  {
    departure: loc_arr[6],
    arrival: loc_arr[7],
    description: 'Panier AMAP',
    parcel: 1,
    customer: users_arr[2],
    rider: users_arr[1],
    status: 1,
    distance: 5,
    price: 6,
    code: "Elégant Faucon Sérieux",
    polyline: '{}xpGbemBMI]jAiAlEmAlEg@rBRJlE~BbCrAtCdBrAgBDMpA_BlCiD{E{H'
    },
  {
    departure: loc_arr[8],
    arrival: loc_arr[9],
    description: 'Chaussures à récupérer chez le coordonnier',
    parcel: 1,
    customer: users_arr[4],
    status: 0,
    distance: 7,
    price: 8,
    polyline: 'whlpGnsrBAd@aCMs@GkAO_Ba@}@[IIQMIVSl@]hBe@fBGPOLs@^m@HgBS]@qDr@y@LSNOX`AfBpCpFNx@B`@GFIPCP?VGP[Xc@d@gApBeF~Iy@|Ae@p@YT}@`@gBr@OBOAGOOKIAKDKHEJMNUDsAJ_@Ao@Ou@UUMEG?IASCKIKKEMAOFMV?FMP_A`@wAl@e@NOD_@ZQTOZYhAKzCUpLF`BLpACDINAJUJ_ADqARmB\IHiFdAqCp@i@Fs@Ag@K[MUSe@q@{@_Bo@kAkAwAsAkAw@s@mAkAi@kAKU@C@G@ICQGMKEKBEBCBk@Ka@EOAk@CgBMu@Qe@]a@_@u@u@g@c@GKq@e@ME_@?c@F[LoAbAKKM?GDEFANSFq@B{Ci@yAC{C]cAMK@MG[QkBqAc@[y@]g@KAKOOIAC@][[e@i@{@U]cCuBaCyBQ[k@g@m@u@EUOGG@ILATARMz@iAhE_A`Dk@~AMDW^ICQBKFGNCNC^MZQTuE|BqAl@Y\QJMAIAKDGHCHODm@N_@J_Dw@oBo@eCk@cFaAOIMIW]Qi@Em@BiEJeIAe@s@FqCTaBJ{GRsDN_BJmI\oELoFXmBDoCRkAFw@EcAUsEuAcIcCcDeAwCy@y@SwCkBsDgCuGkEmFuDwCqB_C{AiEqCyFwDaD{BgHtCmBt@cCj@sE`AyHtAm@Nq@`@a@X]\cAjBe@|@KJEKMEOJER?F_@FuCPyATy@TgBr@_DzCe@`@eC|AyAn@'
    },
  {
    departure: loc_arr[10],
    arrival: loc_arr[11],
    description: 'Fromages dressés à récupérer',
    parcel: 1,
    customer: users_arr[0],
    rider: users_arr[2],
    status: 2,
    distance: 3,
    price: 5,
    code: "Grand Renard Agile",
    polyline: 'abvpGnriB?tE`B@xFHbFHxAExEEpBID@@BBDFBHAFI@KACpAi@dAc@xG]j@A^Ev@KZFzAvG`A`EX|@n@dA~D|D`KzJbT|SNNh@r@Pn@Br@GpAIZMPg@XiBj@a@VO`@Id@Ed@Dj@Nf@r@dAHLfDvBNPBL@`B?f@BfAMZ]n@Wh@AR@vABl@D`CJR`AVzAj@}@hG_BrLK~@y@~FPJZH`Bd@JAFa@NkAZH~Ad@p@T`Cr@|KfDhEpAp@RABAB?BEzAIlLXtNBd@rC_@lAQ'
    }
]


requests.each do |request|
  request_new = Request.new(request)
  # request_new.prepare
  if request_new.save
    puts "request id: #{request_new.id} - #{request_new.description}  OK"
  end
end

