User.create!([
  {email: "ander@ander.com", username: "ander", password_digest: "$2a$10$6UOj/.uUSL02jXBwS6db1u09a9U5JbYIK3Yjv1Tz6zQrEYi4Cu9Au", session_token: "9p9d4Hi2eMqD7wF5QmzXFw"},
  {email: "lance", username: "lance", password_digest: "$2a$10$9uJOFddZiVR1omhE7LaoDugPyMi/kqxD/mqUsGG8CDkJ0EO3ZNwCu", session_token: "m8d4F1u59-kFY71I8G0onw"}
])
Login.create!([
  {user_id: 1, session_token: "s6jOUwTkbB0ezRq33ymjBg"},
  {user_id: 1, session_token: "ylE08VlrdNK54pUMitbTJg"},
  {user_id: 1, session_token: "SiVSowJ_tAkzAc2rpao0WQ"},
  {user_id: 4, session_token: "LlQkxmZAfCHZbtIYoATISg"},
  {user_id: 4, session_token: "iVL4nIHUxoMjzkfrY5dq5g"},
  {user_id: 1, session_token: "1C93t2D_R2y3FN7oA2OSRA"},
  {user_id: 7, session_token: "SyTXnxum8Blo5-4uG1QIaQ"},
  {user_id: 8, session_token: "wY685l7nskkz6rUBvw9aNA"},
  {user_id: 8, session_token: "5ZsI4jc3IoL7RCgseUilDg"},
  {user_id: 8, session_token: "bFeSg85vT6rpXpZ3jIDCwQ"}
])
Photo.create!([
  {owner_id: 8, url: "http://res.cloudinary.com/dcd7no2gu/image/upload/v1423181845/eh5ic56vym5dkdzhvsjz.jpg", cloudinary_id: "eh5ic56vym5dkdzhvsjz"},
  {owner_id: 8, url: "http://res.cloudinary.com/dcd7no2gu/image/upload/v1423182403/tnyobwh8kexxjh6nk7ud.jpg", cloudinary_id: "tnyobwh8kexxjh6nk7ud"},
  {owner_id: 8, url: "http://res.cloudinary.com/dcd7no2gu/image/upload/v1423182403/fxqrvaqqyf9cb0suzrou.jpg", cloudinary_id: "fxqrvaqqyf9cb0suzrou"},
  {owner_id: 8, url: "http://res.cloudinary.com/dcd7no2gu/image/upload/v1423182586/emyxvjof4mfzgntatl3o.jpg", cloudinary_id: "emyxvjof4mfzgntatl3o"},
  {owner_id: 8, url: "http://res.cloudinary.com/dcd7no2gu/image/upload/v1423183919/xgjfrk51z44qe6ts7xof.jpg", cloudinary_id: "xgjfrk51z44qe6ts7xof"},
  {owner_id: 8, url: "http://res.cloudinary.com/dcd7no2gu/image/upload/v1423183918/etpudfkkj9j8byrx89ha.jpg", cloudinary_id: "etpudfkkj9j8byrx89ha"},
  {owner_id: 8, url: "http://res.cloudinary.com/dcd7no2gu/image/upload/v1423183919/efrfsmriyrqtcycvbyev.jpg", cloudinary_id: "efrfsmriyrqtcycvbyev"},
  {owner_id: 8, url: "http://res.cloudinary.com/dcd7no2gu/image/upload/v1423184010/ly0t1digqbd6fbyjgbek.jpg", cloudinary_id: "ly0t1digqbd6fbyjgbek"},
  {owner_id: 8, url: "http://res.cloudinary.com/dcd7no2gu/image/upload/v1423194622/m5mc7th1sot7xke6tz1g.jpg", cloudinary_id: "m5mc7th1sot7xke6tz1g"},
  {owner_id: 8, url: "http://res.cloudinary.com/dcd7no2gu/image/upload/v1423203077/gyv0dpek8geub280woeu.jpg", cloudinary_id: "gyv0dpek8geub280woeu"},
  {owner_id: 8, url: "http://res.cloudinary.com/dcd7no2gu/image/upload/v1423203256/faexezhbqtf4pvvcc96e.jpg", cloudinary_id: "faexezhbqtf4pvvcc96e"},
  {owner_id: 8, url: "http://res.cloudinary.com/dcd7no2gu/image/upload/v1423203299/ozmchrphpum8wa2qurvy.jpg", cloudinary_id: "ozmchrphpum8wa2qurvy"},
  {owner_id: 8, url: "http://res.cloudinary.com/dcd7no2gu/image/upload/v1423203547/igpqvg10lf14psozz4am.jpg", cloudinary_id: "igpqvg10lf14psozz4am"},
  {owner_id: 8, url: "http://res.cloudinary.com/dcd7no2gu/image/upload/v1423203647/g3phb7rkyrvhi1y4jjmc.jpg", cloudinary_id: "g3phb7rkyrvhi1y4jjmc"}
])
Profile.create!([
  {owner_id: 8, title: nil},
  {owner_id: 9, title: nil}
])
