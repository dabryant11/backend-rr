
############# REST CLIENT API ##############

response = RestClient.get 'https://v3.openstates.org/people?page=1&per_page=50&jurisdiction=ocd-jurisdiction/country:us/state:oh/government&apikey=9c88aba1-7aa1-4f70-9d5c-cffd22cbe878'
reps_page_one = JSON.parse(response)

response = RestClient.get 'https://v3.openstates.org/people?page=2&per_page=50&jurisdiction=ocd-jurisdiction/country:us/state:oh/government&apikey=9c88aba1-7aa1-4f70-9d5c-cffd22cbe878'
reps_page_two = JSON.parse(response)

response = RestClient.get 'https://v3.openstates.org/people?page=3&per_page=50&jurisdiction=ocd-jurisdiction/country:us/state:oh/government&apikey=9c88aba1-7aa1-4f70-9d5c-cffd22cbe878'
reps_page_three = JSON.parse(response)

reps_page_one.each do |rep|
    puts rep[0] 
    # Site.create(address: bin["address"], borough: bin["borough"], name: bin["park_site_name"], website: "https://www1.nyc.gov/assets/dsny/site/home", latitude: bin["latitude"], longitude: bin["longitude"], rating: 0, accepted_items: "paper,cardboard, plastic, glass, cartons", image: "https://upload.wikimedia.org/wikipedia/en/0/08/DSNY_logo_2016.jpg", hours: "7am-3pm", twitter: "https://twitter.com/nycsanitation?lang=en", ig: "https://www.instagram.com/nycsanitation/?hl=en", facebook: "https://www.facebook.com/nycsanitation/")
end

# response = RestClient.get 'https://data.cityofnewyork.us/resource/qnjm-wvu5.json'
# array_of_textiles = JSON.parse(response)

# array_of_textiles.each do |textile|
#     # puts textile["address"]
#     Site.create(address: textile["address"], borough: textile["borough"], name: textile["vendor_name"], website: textile["website"], latitude: textile["latitude"], longitude: textile["longitude"], rating: 0, accepted_items: textile["items_accepted"], image: "https://static.dezeen.com/uploads/2016/08/new-york-2020-skyline_dezeen_ss-852x609.jpg", hours: "9am-5pm", twitter: "https://twitter.com/wearablecollect?lang=en", ig: "https://www.instagram.com/wearablecollections/?hl=en", facebook: " https://www.facebook.com/wearablecollections/services/?ref=page_internal")
# end

# response = RestClient.get 'https://data.cityofnewyork.us/resource/wshr-5vic.json'
# array_of_e_waste = JSON.parse(response)

# array_of_e_waste.each do |waste|
#     # puts textile["address"]
#     Site.create(address: waste["address"], borough: waste["borocd"], name: waste["dropoff_sitename"], website: "https://www1.nyc.gov/assets/dsny/site/contact/e-waste-pickup-request", latitude: waste["latitude"], longitude: waste["longitude"], rating: 0, accepted_items: "electronics", image: "https://upload.wikimedia.org/wikipedia/commons/c/cf/Radio_City_Music_Hall_Panorama.jpg", hours: "9am-5pm", twitter: "https://twitter.com/nysdec?lang=en", ig: "https://www.instagram.com/nysdec/?hl=en", facebook: " https://www.facebook.com/NYSDEC/")
# end




Rep.create(user_id:, senate_committee_id:, name:, district:, hometown:, committees:, party:, year:_elected:, phone_number:, email:)
Senate.create(user_id:, senate_committee_id:, name:, district:, hometown:, committees:, party:, year_elected:, phone_number:, email:)

RepBill.create(rep_id:, rep_committee_id:, sponsor:, co_sponsor:, votes:, bill_number:, committee:, subject:)
SenateBill.create(senate_id:, senate_committee_id:, sponsor:, co_sponsor:, votes:, bill_number:, committee:, subject:)

SenateCommittee.create(name:, chair:, vice_chair:, ranking_member:, members:)
RepCommittee.create(name:, chair:, vice_chair:, ranking_member:, members:)

RepCampaignFinance.create(contributor:, amount:, affiliation:)
SenateCampaignFinance.create(contributor:, amount:, affiliation:)

MinorityBusiness.create(address:, rating:, image:, hours:, website:, twitter:, ig:, facebook:) 


















User.create( name:"John Lewis", address: "123 Seasame St.", district: "20", image:"https://www.biography.com/.image/t_share/MTQ0NDE5ODgxMzc3MzQyNzc4/john_lewis_photo_courtesy_john_lewis_officejpg.jpg", username:"GoodTrouble614", password_digest:"abc123", email:"fakeemail@gmail.com")

UserRep.create(user_id: 1, rep_id: 1)
UserSenate.create(user_id: 1, senate_id: 1)

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

