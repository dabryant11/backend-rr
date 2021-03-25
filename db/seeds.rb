User.destroy_all
User.reset_pk_sequence

UserLegislator.destroy_all
UserLegislator.reset_pk_sequence


Legislator.destroy_all
Legislator.reset_pk_sequence

StateBudget.destroy_all
StateBudget.reset_pk_sequence

StateAgency.destroy_all
StateAgency.reset_pk_sequence

MinorityBusiness.destroy_all
MinorityBusiness.reset_pk_sequence

Bill.destroy_all
Bill.reset_pk_sequence

Committee.destroy_all
Committee.reset_pk_sequence




############# REST CLIENT API ##############

response = RestClient.get 'https://v3.openstates.org/people?page=1&per_page=50&jurisdiction=ocd-jurisdiction/country:us/state:oh/government&apikey=9c88aba1-7aa1-4f70-9d5c-cffd22cbe878'
reps_page_one = JSON.parse(response)

response_two = RestClient.get 'https://v3.openstates.org/people?page=2&per_page=50&jurisdiction=ocd-jurisdiction/country:us/state:oh/government&apikey=9c88aba1-7aa1-4f70-9d5c-cffd22cbe878'
reps_page_two = JSON.parse(response_two)

response_three = RestClient.get 'https://v3.openstates.org/people?page=3&per_page=50&jurisdiction=ocd-jurisdiction/country:us/state:oh/government&apikey=9c88aba1-7aa1-4f70-9d5c-cffd22cbe878'
reps_page_three = JSON.parse(response_three)
# byebug
# p reps_page_one
# p reps_page_one.length
# puts "--------------"
#     # puts rep[0] 
#     puts rep
#     begin
#         Legislator.create!( first_name: rep["given_name"],last_name: rep["family_name"], district: rep["current_role"]["district"].to_s, committees: "", party:rep["party"], email: rep["email"], image: rep["image"], title: rep["current_role"]["title"])

#     rescue => exception
#         puts "=========="
#         puts rep
#         puts exception
#         puts "=========="
#     end



reps_page_one["results"].each do |rep|
Legislator.create!( name: rep["name"], district: rep["current_role"]["district"].to_s, committees: "", party:rep["party"], email: rep["email"], image: rep["image"], title: rep["current_role"]["title"])
end

reps_page_two["results"].each do |rep|
    # puts rep[0] 
Legislator.create( name: rep["name"], district: rep["current_role"]["district"].to_s, committees: "", party:rep["party"], email: rep["email"], image: rep["image"], title: rep["current_role"]["title"])
end


reps_page_three["results"].each do |rep|
    # puts rep[0] 
Legislator.create( name: rep["name"], district: rep["current_role"]["district"].to_s, committees: "", party:rep["party"], email: rep["email"], image: rep["image"], title: rep["current_role"]["title"])
end

# puts reps_page_one["results"][0]["name"]

# reps_page_one["results"].each do |rep|
#     puts rep["name"]
#     puts rep["party"]

#     # puts rep["current_role"]
#     puts rep["current_role"]["title"]
#     puts rep["current_role"]["district"]

#     puts rep["jurisdiction"]["name"]
#     puts rep["email"]
#     puts rep["image"]
#     puts rep["given_name"]
#     puts rep["family_name"]
#     puts "---"

# end




bill_response = RestClient.get 'https://v3.openstates.org/bills?page=1&per_page=20&created_since=2021-01-04&jurisdiction=ocd-jurisdiction/country:us/state:oh/government&apikey=9c88aba1-7aa1-4f70-9d5c-cffd22cbe878'
bill_page_one = JSON.parse(bill_response)

bill_page_one["results"].each do |bill|
    # puts rep[0] 
    Bill.create!( legislator_id:"" , committee_id:"", chamber: bill["from_organization"]["name"], title: bill["title"], status:bill["latest_action_description"], sponsor: "", co_sponsor: "", votes:"", bill_number:bill["identifier"], committee:"", subject:bill["subject"])
end








#     puts bill["subject"]
#     puts bill["title"]
#     puts bill["from_organization"]["name"]
#     puts bill["subject"]
#     puts bill["latest_action_description]





Committee.create(name:"Agriculture and Conservation", chair:"J. Kyle Koehler", vice_chair:"Rodney Creech", ranking_member:"Juanita O. Brent", chamber:"House of Representatives")
Committee.create(name:"Criminal Justice", chair:"Jeff LaRe", vice_chair:"D.J. Swearingen", ranking_member:"David Leland", chamber:"House of Representatives")
Committee.create(name:"Energy and Natural Resources", chair:"Jason Stephens", vice_chair:"Brian Stewart", ranking_member:"Casey Weinstein", chamber:"House of Representatives")
Committee.create(name:"Economic and Workforce Development", chair:"Jay Edwards", vice_chair:"Jena Powell", ranking_member:"Terrence Upchurch", chamber:"House of Representatives")
Committee.create(name:"Finance", chair:"Scott Oelslager", vice_chair:"Phil Plummer", ranking_member:"Erica C. Crawley", chamber:"House of Representatives")
Committee.create(name:"Primary and Secondary Education", chair:"Gayle Manning", vice_chair:"Adam C. Bird", ranking_member:"Phillip M. Robinson Jr.", chamber:"House of Representatives")
Committee.create(name:"Public Utilities", chair:"James M. Hoops", vice_chair:"Sharon A. Ray", ranking_member:"Kent Smith", chamber:"House of Representatives")
Committee.create(name:"Technology and Innovation", chair:"Mark Frazier", vice_chair:"Thomas Hall", ranking_member:"Mary Lightbody", chamber:"House of Representatives")
Committee.create(name:"Transportation and Public Safety", chair:"Brian Baldridge", vice_chair:"Riordan T. McClain", ranking_member:"Michael Sheehy", chamber:"House of Representatives")

Committee.create(name:"Health", chair:"Stephen A. Huffman", vice_chair:"Niraj Antani", ranking_member:"Nickie J. Antonio", chamber:"Senate")
Committee.create(name:"Local Government and Elections", chair:"Theresa Gavarone", vice_chair:"Sandra O'Brien", ranking_member:"Tina Maharath", chamber:"Senate")
Committee.create(name:"Workforce and Higher Education", chair:"Terry Johnson", vice_chair:"Jerry C. Cirino", ranking_member:"Sandra R. Williams", chamber:"Senate")
Committee.create(name:"Small Business and Economic Opportunity", chair:"Michael A. Rulli", vice_chair:"George F. Lang", ranking_member:"Vernon Sykes", chamber:"Senate")
Committee.create(name:"Energy and Public Utilities", chair:"Bob Peterson", vice_chair:"Kirk Schuring", ranking_member:"Sandra R. Williams", chamber:"Senate")
Committee.create(name:"Financial Institutions and Technology", chair:"Steve Wilson", vice_chair:"Jay Hottinger", ranking_member:"Tina Maharath", chamber:"Senate")














User.create( name:"John Lewis", address: "123 Seasame St.", district: "20", image:"https://www.biography.com/.image/t_share/MTQ0NDE5ODgxMzc3MzQyNzc4/john_lewis_photo_courtesy_john_lewis_officejpg.jpg", username:"GoodTrouble614", password_digest:"abc123", email:"fakeemail@gmail.com")



StateBudget.create(year: "2020")

StateAgency.create(name: "Public Utilities Commission", website: "https://puco.ohio.gov/wps/portal/gov/puco/home", director: "Daniel R. Conway", image: "https://puco.ohio.gov/wps/wcm/connect/gov/82b9d758-3fce-49d2-ab48-13e8631f7d17/img-bios_DanConway.jpg?MOD=AJPERES&CACHEID=ROOTWORKSPACE.Z18_M1HGGIK0N0JO00QO9DDDDM3000-82b9d758-3fce-49d2-ab48-13e8631f7d17-napCell")
StateAgency.create(name: "Youth Services", website: "https://dys.ohio.gov/wps/portal/gov/dys/home", director: "Ryan Gies", image: "https://dys.ohio.gov/wps/wcm/connect/gov/2c82467a-bc4d-4bc5-86eb-558c0400deb7/img-bios_RyanGies.png?MOD=AJPERES&CACHEID=ROOTWORKSPACE.Z18_M1HGGIK0N0JO00QO9DDDDM3000-2c82467a-bc4d-4bc5-86eb-558c0400deb7-n8Kl0VD")
StateAgency.create(name: "Rehabilitation & Correction", website: "https://www.drc.ohio.gov/", director: "Annette M. Chambers-Smith", image: "https://drc.ohio.gov/Portals/0/chambers-smith.jpg")
StateAgency.create(name: "Health", website: "https://odh.ohio.gov/wps/portal/gov/odh/home", director: "Stephanie McCloud", image: "https://governor.ohio.gov/wps/wcm/connect/gov/f63cfc68-19d3-41f6-a9af-fb3de6d3c732/1/Stephanie-McCloud.jpg?MOD=AJPERES")
StateAgency.create(name: "Education", website: "http://education.ohio.gov/", director: "Chris Woolard" , image: "http://education.ohio.gov/getattachment/Media/Extra-Credit-Blog/Chris-Woolard/Bio_Wollard_B.png.aspx")
StateAgency.create(name: "Mental Health & Addiction Services", website: "https://mha.ohio.gov/", director: "Lori Criss" , image: "https://governor.ohio.gov/wps/wcm/connect/gov/15502784-cdd2-4856-9c3d-c0cb8d86a1fd/1/Lori-Criss.jpg?MOD=AJPERES")
StateAgency.create(name: "Transportation", website: "https://www.transportation.ohio.gov/wps/portal/gov/odot/", director: "Jack Marchbanks", image: "https://www.transportation.ohio.gov/wps/wcm/connect/gov/c3a25a48-cb68-4814-85f0-a1771ee82cbe/1/DirectorJackMarchbanks-500.jpg?MOD=AJPERES")
StateAgency.create(name: "Job and Family Services", website: "https://jfs.ohio.gov/", director: "Kimberly Henderson", image: "https://www.fatherhood.ohio.gov/portals/0/Commissioners/images/Director%20Hall.jpg")
StateAgency.create(name: "Medicaid", website: "https://medicaid.ohio.gov/", director: "Maureen M. Corcoran" , image: "https://medicaid.ohio.gov/portals/0/Images/Corcoran.jpg")


MinorityBusiness.create(name: "happy vegan", address: "1900 baldwin rd.", rating: 10, image:"https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1437680802i/25965711._UY200_.jpg", hours:"9-5", website:"happyvegan.com", twitter:"happyVegan", ig:"happyVegan", facebook:"happyVegan") 


UserLegislator.create(user_id: 1, legislator_id: 1, notes: "test1")
UserLegislator.create(user_id: 1, legislator_id: 11, notes: "test1")
UserLegislator.create(user_id: 1, legislator_id: 111, notes: "test1")
UserLegislator.create(user_id: 1, legislator_id: 16, notes: "test1")
UserLegislator.create(user_id: 1, legislator_id: 39, notes: "test1")
