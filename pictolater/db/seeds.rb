Comment.create!([
  {photo_id: 14, commenter_id: 2, body: "Cool elephant!"},
  {photo_id: 11, commenter_id: 1, body: "Baby cheetah!"},
  {photo_id: 15, commenter_id: 1, body: "A little hatchling!"}
])
User.create!([
  {email: "ander@ander.com", username: "ander", password_digest: "$2a$10$6UOj/.uUSL02jXBwS6db1u09a9U5JbYIK3Yjv1Tz6zQrEYi4Cu9Au", session_token: "9p9d4Hi2eMqD7wF5QmzXFw"},
  {email: "lance", username: "lance", password_digest: "$2a$10$9uJOFddZiVR1omhE7LaoDugPyMi/kqxD/mqUsGG8CDkJ0EO3ZNwCu", session_token: "m8d4F1u59-kFY71I8G0onw"}
])
Photo.create!([
  {owner_id: 1, url: "http://res.cloudinary.com/dcd7no2gu/image/upload/v1423181845/eh5ic56vym5dkdzhvsjz.jpg", cloudinary_id: "eh5ic56vym5dkdzhvsjz"},
  {owner_id: 1, url: "http://res.cloudinary.com/dcd7no2gu/image/upload/v1423182403/tnyobwh8kexxjh6nk7ud.jpg", cloudinary_id: "tnyobwh8kexxjh6nk7ud"},
  {owner_id: 1, url: "http://res.cloudinary.com/dcd7no2gu/image/upload/v1423182403/fxqrvaqqyf9cb0suzrou.jpg", cloudinary_id: "fxqrvaqqyf9cb0suzrou"},
  {owner_id: 1, url: "http://res.cloudinary.com/dcd7no2gu/image/upload/v1423182586/emyxvjof4mfzgntatl3o.jpg", cloudinary_id: "emyxvjof4mfzgntatl3o"},
  {owner_id: 1, url: "http://res.cloudinary.com/dcd7no2gu/image/upload/v1423183919/xgjfrk51z44qe6ts7xof.jpg", cloudinary_id: "xgjfrk51z44qe6ts7xof"},
  {owner_id: 1, url: "http://res.cloudinary.com/dcd7no2gu/image/upload/v1423183918/etpudfkkj9j8byrx89ha.jpg", cloudinary_id: "etpudfkkj9j8byrx89ha"},
  {owner_id: 1, url: "http://res.cloudinary.com/dcd7no2gu/image/upload/v1423183919/efrfsmriyrqtcycvbyev.jpg", cloudinary_id: "efrfsmriyrqtcycvbyev"},
  {owner_id: 1, url: "http://res.cloudinary.com/dcd7no2gu/image/upload/v1423184010/ly0t1digqbd6fbyjgbek.jpg", cloudinary_id: "ly0t1digqbd6fbyjgbek"},
  {owner_id: 1, url: "http://res.cloudinary.com/dcd7no2gu/image/upload/v1423194622/m5mc7th1sot7xke6tz1g.jpg", cloudinary_id: "m5mc7th1sot7xke6tz1g"},
  {owner_id: 1, url: "http://res.cloudinary.com/dcd7no2gu/image/upload/v1423203077/gyv0dpek8geub280woeu.jpg", cloudinary_id: "gyv0dpek8geub280woeu"},
  {owner_id: 1, url: "http://res.cloudinary.com/dcd7no2gu/image/upload/v1423203256/faexezhbqtf4pvvcc96e.jpg", cloudinary_id: "faexezhbqtf4pvvcc96e"},
  {owner_id: 1, url: "http://res.cloudinary.com/dcd7no2gu/image/upload/v1423203299/ozmchrphpum8wa2qurvy.jpg", cloudinary_id: "ozmchrphpum8wa2qurvy"},
  {owner_id: 1, url: "http://res.cloudinary.com/dcd7no2gu/image/upload/v1423203547/igpqvg10lf14psozz4am.jpg", cloudinary_id: "igpqvg10lf14psozz4am"},
  {owner_id: 1, url: "http://res.cloudinary.com/dcd7no2gu/image/upload/v1423203647/g3phb7rkyrvhi1y4jjmc.jpg", cloudinary_id: "g3phb7rkyrvhi1y4jjmc"},
  {owner_id: 1, url: "http://res.cloudinary.com/dcd7no2gu/image/upload/v1423444637/ggkjvugmifaiog18l93c.jpg", cloudinary_id: "ggkjvugmifaiog18l93c"}
])
Profile.create!([
  {owner_id: 1, title: nil},
  {owner_id: 2, title: nil}
])
