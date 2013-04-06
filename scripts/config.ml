let client_id = "1605562d79611cd6d8bc"
let client_secret = "1cd154a261b6240827b89cd3a0461790ac27be85"
let auth = Cohttp.Auth.Basic ("rwo", "Whirly2")

(* List of allowed Github users per milestone *)
let authors = ["yminsky";"jyh";"avsm";"andyoram"]
let trusted = ["stedolan"; "lpw25"; "raphael-proust"; "amirmc"] 
let support = ["jamescotton"] 

let from_anil =
  [ "mcclurmc"                (* Mike McClurg <mike.mcclurg@citrix.com> *)
  ; "djs55"                   (* David Scott <dave.scott@citrix.com> *)
  ; "lpw25"                   (* Leo White <lpw25@cam.ac.uk> *)
  ; "arb33"                   (* arb33@cam.ac.uk *)
  ; "amirmc"                  (* Amir Chaudhry <amirmc@gmail.com> *)
  ; "heidi-ann"               (* Heidi Howard <hh360@cam.ac.uk> *)
  ; "samoht"                  (* Thomas Gazagnaire <thomas@ocamlpro.com> *)
  ; "udita12"                 (* Udita Gangwal <psxug2@nottingham.ac.uk> *)
  ; "bishneet"                (* Bishneet Kaur <psxbk3@nottingham.ac.uk> *)
  ; "mor1"                    (* Richard Mortier <richard.mortier@nottingham.ac.uk> *)
  ; "jamesbulpin"             (* James Bulpin <james.bulpin@citrix.com> *)
  ; "raphael-proust"          (* Raphael Proust <rp452@cam.ac.uk> *)
  ; "mariusaeriksen"          (* Marius Eriksen <marius@twitter.com> *)
  ; "jaked"                   (* Jake Donham <jake@donham.org> *)
  ; "georgeparisis"           (* George Parisis <george.parissis@gmail.com> *)
  ; "nc6"                     (* Nick Clarke <nicholas.clarke@gmail.com> *)
  ; "stevej"                  (* Steve Jenson <stevej@fruitless.org> *)
  ; "ray1729"                 (* Ray Miller <ray@1729.org.uk> *)
  ; "bmatican"                (* Bogdan Alexandru Matican <bogdanmatican@gmail.com> *)
  ; "tmonca"                  (* Toby Moncaster <toby.moncaster@cl.cam.ac.uk> *)
  ; "pw374"                   (* Philippe Wang <philippe.wang@gmail.com> *)
  ; "samstaton"               (* Sam Staton <sam.staton@cl.cam.ac.uk> *)
  ; "vbmithr"                 (* vb@luminar.eu.org *)
  ; "bellosa"                 (* Frank Bellosa <frank@bellosa.de> *)
  ; "simonjbeaumont"          (* Simon Beaumont <simon.beaumont@citrix.com> *)
  ; "green-gecko"             (* Alex Ho <a_green_gecko@yahoo.com> *)
  ; "pmundkur"                (* Prashanth Mundkur <prashanth.mundkur@gmail.com> *)
]

let from_yminsky =
  [ "naftul"                  (* nminsky@gmail.com    *)
  ; "fbsATcsDOTcornellDOTedu" (* fbs@cs.cornell.edu   *)
  ; "bolinfest"               (* mbolin@gmail.com *)
  ; "bnigito"                 (* bnigito@janestreet.com *)
  ; "roshanjames"             (* rjames@janestreet.com *)
  ; "wang-d"                  (* dwang@janestreet.com *)
  ; "datkin"                  (* datkin@janestreet.com *)
  ; "milanst"                 (* mstanojevic@janestreet.com *)
  ; "Zdancewic"               (* Stephan Zdancewic <stevez@cis.upenn.edu> *)
  ; "sfenick"                 (* Sharon Fenick <sfenick@gmail.com> *)
  ; "yairminsky"              (* Yair Minsky <yair.minsky@yale.edu> *)
  ; "nicholasbs"              (* Nicholas Bergson-Shilcock <me@nicholasbs.net> *)
  ; "happy4crazy"             (* Alan O'Donnell  <alan@hackerschool.com> *)
]

let from_email = 
  [ "JakubOboza "             (* jakub.oboza@gmail.com *)
  ; "gour"                    (* gour@atmarama.net *)
  ; "getauvi"                 (* getauvi@gmail.com *)
  ; "pdonadeo"                (* Paolo Donadeo <p.donadeo@gmail.com>  *)
  ; "braibant"                (* Thomas Braibant <thomas.braibant@gmail.com> *)
  ; "xmonader"                (* Ahmed Youssef <xmonader@gmail.com> *)
  ; "gildor478"               (* Sylvain Le Gall <sylvain@le-gall.net> *)
  ; "voila"                   (* manu delab <manu.delab@gmail.com> *)
  ; "thadmeyer"               (* Thad Meyer <tmeyer@members.fsf.org> *)
  ; "Gtower1X"                (* Gregory Tsipenyuk <gregtsip@gmail.com> *)
  ; "andreby"                 (* Andre Bjarby <andre.bjarby@gmail.com> *)
  ; "artemkin"                (* Stanislav Artemkin <artemkin@gmail.com> *)
  ; "tautologico"             (* Andrei de Arajo Formiga <andrei@ci.ufpb.br> *)
  ; "rgrinberg"               (* Rudi Grinberg <rudi.grinberg@gmail.com> *)
  ; "camlspotter"             (* Jun Furuse <jun.furuse@gmail.com> *)
  ; "davidperrin"             (* David Perrin <david.perrin@virtualpv.co.uk> *)
  ; "chris-taylor"            (* Chris Taylor <Chris.Taylor@gsacapital.com> *)
  ; "Kakadu"                  (* Kakadu <kakadu.hafanana@gmail.com> *)
  ; "abrsvn"                  (* Adrian Brasoveanu <abrsvn@gmail.com> *)
  ; "bobzhang"                (* bob zhang <bobzhang1988@gmail.com> *)
  ; "mshure"                  (* Mark Shure <mark.shure@gmail.com> *)
  ; "HappyCrow"               (* Francois Berenger <berenger@riken.jp> *)
  ; "alexanderkyte"           (* alex kyte <alexanderkyte@gmail.com> *)
  
  (* Facebook people *)
  ; "pikatchu"                (* julien verlaguet <julien.verlaguet@gmail.com> *)
  ; "joelpob"                 (* ma2bd@laposte.net *)
  ; "mansu"                   (* suman.karumuri@gmail.com *)
  ; "aryx"                    (* yoann.padioleau@gmail.com *)
  ; "paulcavallaro"           (* paulcavallaro@gmail.com *)

  (* Simcorp people *)
  ; "jfrydendall" 
  ; "hvitved"
  ; "kss-simcorp"
  ; "anders-schack"
  ; "Alxxa"

  (* MrNumber *)
  ; "bpr"                     (* Brian Rogoff <brogoff@gmail.com> *)
]

let internal_reviewers =
  "Authors",
  (authors @ trusted)

let external_reviewers =
  "External Reviewers",
  (authors @ support @ from_anil @ from_yminsky @ from_email)

let allowed_users = function
  | "alpha1" -> internal_reviewers
  | "alpha2" -> internal_reviewers
  | "alpha3" -> internal_reviewers
  | "alpha4" -> external_reviewers
  | "trunk"  -> internal_reviewers
  |_ -> internal_reviewers
