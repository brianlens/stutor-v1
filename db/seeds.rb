#USERS
User.create( {firs_name:"Willem-Alexander", last_name:"van Buuren", username:"prinspils", password:"bierislekker", email:"renee.v.leijen@gmail.com", phone:"0617612365", city:"Amsterdam"} )
User.create( {firs_name:"Mark", last_name:"Rutte", username:"minpres1", password:"ikplasterk", email:"markrutte@primeminister.nl", phone:"0612345789", city:"The Hague"} )
User.create( {firs_name:"Bas", last_name:"Joosten", username:"bas_joosten", password:"bigmonnie14", email:"bas.joosten@bcg.nl", phone:"+31 6 57878241", city:"Amsterdam"} )
User.create( {firs_name:"Robert", last_name:"Boemke", username:"english_wiz", password:"abc123", email:"r.boemke@gmail.com", phone:"043 - 388 52 82", city:"Amsterdam"} )
User.create( {firs_name:"Edward", last_name:"Sharpe", username:"e_sharpe", password:"hawtdawg", email:"e.sharpe@gmail.com", phone:"043 - 366 52 87", city:"Amsterdam"} )
User.create( {firs_name:"Pim", last_name:"Muns", username:"Pimmetje71", password:"dikkepim", email:"p.b.muns@gmail.com", phone:"+31 6 11738527", city:"Den Haag"} )
User.create( {firs_name:"Adri", last_name:"Rietjens", username:"Adriaan", password:"bassie", email:"a3@gmail.com", phone:"+31 6 57889301", city:"Leiden"} )
User.create( {firs_name:"Brian", last_name:"Lens", username:"Brian_the_lion", password:"flinkevis", email:"brian@stutor.com", phone:"+31 6 46396642", city:"Amsterdam"} )
User.create( {firs_name:"Jeff",last_name: "Green", username:"Jgreen", password:"Jeff1",  email:"Jeff_Green@veryhotmail.com", phone: "0620984649",city:"Amsterdam"} )
User.create( {firs_name:"Barack ",last_name:"Obama", username:"PresidentUSA", password:"Barack1",  email: "Baraka_Waka_Flame@dopehood.com ", phone:"0620984649",city:"Amsterdam"})
User.create( {firs_name:" Wouter",last_name:"de Vos", username:"foxycoder", password:"wdevos1",  email: " foxy_coder@bootcamp.com ", phone: "0691129112",city:"Amsterdam" })


tutor_subjects = {}

tutor_subjects["Jgreen"] = ["Math"]


tutor_subjects.each do | user_name, subjects |
  user = User.find_by( username: user_name )

  subjects.each do |subject|
    Subject.create( subject:subject, user_id: user.id)
  end
end
