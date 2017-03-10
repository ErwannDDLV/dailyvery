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
    email: 'edd@gmail.com',
    password: 'password',
    address: '23, cours du Medoc, 33000 Bordeaux',
    first_name: 'Erwann',
    last_name: 'D'
  },
  {
    email: 'sdc@gmail.com',
    password: 'password',
    address: '40 cours Saint Louis, 33000 Bordeaux',
    first_name: 'Sybille',
    last_name: 'C'
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
    address: '23, cours du Medoc, 33000 Bordeaux'
  },
  {
    address: '107 cours Balguerie Stuttenberg, 33000 Bordeaux'
  },
  {
    address: '66 Cours Aristide Briand, Bordeaux'
  },
  {
    address: '12 rue du Pas Saint Georges, Bordeaux'
  },
  {
    address: '16 rue de Soisson, 33000 Bordeaux'
  },
  {
    address: '43 Rue d\'Alzon, Bordeaux'
  },
  {
    address: '28 rue Lebrun, 33000 Bordeaux'
  },
  {
    address: '32 rue Jean Fleuret, Bordeaux'
  },
  {
    address: '39 Rue Chauffour, Bordeaux'
  },
  {
    address: '20 Rue Goya, Bordeaux'
  },
  {
    address: '22 Rue Buhan, Bordeaux'
  },
  {
    address: '30 Rue Denuits, Bordeaux'
  },
  {
    address: '59 Avenue Jules Guesde, Bordeaux'
  },
  {
    address: '3 Rue Galin, Bordeaux'
  },
  {
    address: '16 Cité Guillot, Floirac'
  },
  {
    address: '37 Rue Ferbos, Bordeaux'
  },
  {
    address: '27 Rue Tillet, Bordeaux'
  },
  {
    address: '5 Avenue Georges Lassere, 33400 Talence'
  },
  {
    address: '47 Rue Quintin, Bordeaux'
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
    departure: loc_arr[2],
    arrival: loc_arr[0],
    description: 'Une robe et 3 chemises (Pressing Dupont)',
    parcel: 2,
    customer: users_arr[0],
    rider: users_arr[1],
    status: 2,
    distance: 3.9,
    price: 7,
    code: "Joli Renard Sympa",
    polyline: 'aespGdqoBe@vDu@Ai@CSBKCo@k@aB_BcBoBiAu@mCyAYMKAESCQ@UB_@HgAHyBF}B@aACqCIoEG_AUkBy@yEQ{@W}Ag@wDMy@e@sAOY@QCUUq@yAyCIKGCQDMR?LmFzGIZeAbAeA~@iCnBwCrBiAj@_H|BqC~@{Bf@}Dt@mCb@qBX{ALgAAkAE_BM{BYgB_@gCu@{Ai@cBw@mDgC_DoCyAyAgCsCqCmDaBaCeCeEwBaEIOABOTk@z@MXyAfBcCxC'
  },
  {
    departure: loc_arr[2],
    arrival: loc_arr[0],
    description: 'Plateau de fromages (Cremerie Deruelle)',
    parcel: 1,
    customer: users_arr[0],
    rider: users_arr[1],
    status: 2,
    distance: 2.3,
    price: 3,
    code:"Gros Renard Sympa",
    polyline: 'eytpG~unBsA]eAIGO[kAs@cCMy@w@Va@LOMUaBGESFCUE]EWgA^e@NoA^eATkB\cEr@mC`@i@D}AHcDMoC[iB]uC{@gA]iBw@u@e@iAu@y@o@gDuC{A{AyBeCsCmDaB}BeBuCcAgBkA_C_@m@GJs@dAO\}E`G'
  },
  {
    departure: loc_arr[4],
    arrival: loc_arr[1],
    description: 'Chaussures (Coordonerie Le vaillant)',
    parcel: 1,
    customer: users_arr[5],
    rider: users_arr[2],
    status: 2,
    distance: 4.6,
    price: 6,
    code: "Grand Mulot Sympa",
    polyline: 'm~rpG~dpB[qAScCD}AA_EGaGeC?_ArHoA~IIZMlAAHS?O?_B^wHjBqAZo@ReB^kBd@[BeAVqD~@}Bf@aB`@O@wF{CcAe@Q@MNM\CFIDoBASGQEEIGUGcBG_ACGiE{B_D_BwGqDo@i@g@GiDmByDmBiCsABe@?wAE{@UoFsD^o@_HqCkAAA'
    },
  {
    departure: loc_arr[5],
    arrival: loc_arr[12],
    description: 'Panier Bio AMAP',
    parcel: 1,
    customer: users_arr[3],
    status: 0,
    distance: 6.7,
    price: 8,
    polyline: 'ebupG`arBGPeBx@BpA|ATvBZl@lR`@fKd@`MPrFD~BtG[bI]zBGlDOvCOjDI`DObFU|BKXMh@q@lCwEbCgErA}BpAwBfC{EfD{FhHgMdAaB`AaBpAcCVg@jEaIlC_FnBqDv@uARSrA_ClAwB\o@~C_G`@w@`@{@rEoIr@kA`AcB|CaGrC}Ex@yAdAuBpBsDhCmEj@mAd@sF|@}Jj@sFN{BhB_Rz@wKjBiSRcCFiA?q@EuASwAQ{@k@_BaBwDjCeC~@aAh@s@Ra@Nc@Jk@H{@JyBXsBC_BRiCf@eFFgBCc@|AK`@?'
    },
  {
    departure: loc_arr[6],
    arrival: loc_arr[13],
    description: 'Gateau d\'anniversaire',
    parcel: 1,
    customer: users_arr[4],
    status: 0,
    distance: 5.1,
    price: 6,
    polyline: '}uupG~{pBSwGiAHoAFcAAEcFC{BnAMrDe@xCg@bDe@NGL[eCqAZoA\cBHDPBPCNINQLe@@UAI|CYNGjE]SuEO}DCaAa@gKc@iLMy@d@Or@UHYUcBFMLEE[Im@rAg@lAq@lDeC`CkBjBgBJ]`BsBnBeCXa@@ONSDAOQY_@eAsBe@cA}GmMmBsDy@}AAI?OJSTUeCwEKEWTIHOYcGeLgFwJwH}NoEqIuCyFgFqJkHkNM_@Yi@IMTWJUn@{Bf@wAd@eAt@yAr@eAn@s@bBeAGSCg@?w@BqF'
    },
  {
    departure: loc_arr[7],
    arrival: loc_arr[14],
    description: 'Livres de cours oubliés',
    parcel: 1,
    customer: users_arr[3],
    status: 0,
    distance: 4.5,
    price: 6,
    polyline: 'qctpGt`qBQmGM{CKiCx@Sb@KrEeAnBg@NEAO]eJK}CUiHOqD@a@ESCQ@UB_@HgAPwF@aACqCIoEG_AUkBy@yEQ{@W}Ag@wDMy@e@sAOY@QCUUq@s@wAe@aAIKGCG?KKIKYa@sC{FyJaR_@w@@W~BuCjBuBPUrC_Fv@yAvBwD?OzC{FbCcFLWz@{AZk@xAiD^{@~AiEjAyCx@sBzDkJ~FeNz@qBKKw@g@aCuA_C}A_BgAeBaAsBeA@QOiBLwBLq@d@_@\a@Pa@qBeE'
    },
  {
    departure: loc_arr[8],
    arrival: loc_arr[15],
    description: 'Roti de porc Orloff (Boucherie du moulin)',
    parcel: 1,
    customer: users_arr[4],
    status: 0,
    distance: 3,
    price: 4,
    polyline: 'ettpGncrB~A}@Em@?g@ESGMIs@YeAq@aCMW]w@q@gBQaAKy@QuDWeH@SJSL?N?hBQhBSbBIfD_@fFm@TEPOJUjBGhCYnGw@bBSPAPkAd@sD`@aCNy@LoA@a@nA_JvAaLjAyHLaAHONOx@_@N[D]CQGQY_@GQASB{@l@uD~@sHJ{@BQdAZbBl@`Bn@LQr@iBb@{@bB{DBOc@F_BP^wBj@aDV{@N_@'
    },
  {
    departure: loc_arr[9],
    arrival: loc_arr[16],
    description: 'Une montre (Horlogerie Tic Tac)',
    parcel: 0,
    customer: users_arr[3],
    status: 0,
    distance: 3.6,
    price: 5,
    polyline: 'yvupGlxqBuFcFKMiAs@bBaGP}AHoAfAWlImBfS_FtBg@^Ch@ObB_@h@GfBc@bAUzCs@tCu@nJ{BfDw@t@ObCs@t@OZ@HADUP_BAMD]z@eGv@mG|@wG`AsGJg@HOTMr@]L_@@]CQEIhBYfAOhA@lDJdKZbKTfBAdCKpFOdAAFbG'
    },
  {
    departure: loc_arr[10],
    arrival: loc_arr[17],
    description: 'Flyers x200 (Imprimerie PrintIT)',
    parcel: 0,
    customer: users_arr[4],
    rider: users_arr[1],
    status: 2,
    distance: 4.5,
    price: 4,
    code: "Joli Mulot Sérieux",
    polyline: 'q`tpGtlnBxAUpAc@VfBHvBPbH?hCGbBOhCEf@Dj@Jp@^xJHbCFzApFm@xAMzEg@h@FjBd@pAn@~FdCzFdC^TjCbA|Aj@vB~@lKnEd@PhCp@rDz@dCp@p@HZNVRNPN\FT~B|ErAsBlA|@XPbAl@|CxArB`A~@d@tBjAzAr@t@Zn@f@nAdAd@p@~AnCnDfG`EzGv@hAHLDPHJLBPKhCb@|@Jr@HbAN|@J@@BDBBJ@JEBE@AhCPlIJtADd@BnBj@|Ad@dEpAPsAZeC'
    },
  {
    departure: loc_arr[11],
    arrival: loc_arr[18],
    description: 'Téléphone Apple réparé (Atelier Smartrepair)',
    parcel: 0,
    customer: users_arr[4],
    rider: users_arr[1],
    status: 2,
    distance: 4.7,
    price: 4,
    code: "Grand Bison Vaillant",
    polyline: 'ggupGdbkB{ApBrAjC~AzCsAdB[`@w@{AMPGHt@xAlCdFfEdIJ^Yb@DVbCtEPYFGHCLBbHrM~F`L^v@N`@ANb@dANZx@vAVb@VZLXZ~@Pz@X`Bb@hDd@jD\tBVfBHvBPbH?hCGbBOhCEf@Dj@Jp@^xJHbCFzApFm@xAMzEg@h@FjBd@pAn@AVBXNhBLh@`A`Df@vAfAdCpDtIvApD|D`Lj@vA^n@lCbEdBrCr@~@HZVl@Xh@D`@NPRb@t@jBj@dApAfC|@pBlBrE`@j@r@\`B|@XTBFx@l@\^}@nDm@dD'
    },
]


requests.each do |request|
  request_new = Request.new(request)
  # request_new.prepare
  if request_new.save
    puts "request id: #{request_new.id} - #{request_new.description}  OK"
  end
end

