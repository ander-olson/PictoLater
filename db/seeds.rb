Comment.create!([
  {photo_id: 14, commenter_id: 2, body: "Cool elephant!"},
  {photo_id: 11, commenter_id: 1, body: "Baby cheetah!"},
  {photo_id: 15, commenter_id: 1, body: "A little hatchling!"},
  {photo_id: 15, commenter_id: 1, body: "I can leave comments"}
])
User.create!([
  {email: "ander@ander.com", username: "safari_park", password_digest: "$2a$10$6UOj/.uUSL02jXBwS6db1u09a9U5JbYIK3Yjv1Tz6zQrEYi4Cu9Au", session_token: "9p9d4Hi2eMqD7wF5QmzXFw"},
  {email: "lance", username: "travel_wishlist", password_digest: "$2a$10$9uJOFddZiVR1omhE7LaoDugPyMi/kqxD/mqUsGG8CDkJ0EO3ZNwCu", session_token: "m8d4F1u59-kFY71I8G0onw"},
  {email: "something", username: "architectureModels", password_digest: "$2a$10$xW8ZdWzPpN7LTLMUUyzt9uyzUT9W0k/2qUXXUO95N3OmuPfwbJm0S", session_token: "iMOh3nVyw-rwWVsD00qoUw"},
  {email: "somethingelse", username: "naturegirl4lyfe", password_digest: "$2a$10$ruU8/3P/YEYnWOhOjgBeeuhvNMgg9YPaz739aAJadnakDsTNIfDTO", session_token: "fBVguFsM3iXowUv8DXvU_g"},
  {email: "facephotography", username: "PortraitMan", password_digest: "$2a$10$cCQUbp7CsWP0iJl2brWbvu5UqqS7ajTt1EuScL1VU2gTAGXtlHRse", session_token: "6Qte-FeXZ1EOJVhumXf0Jw"},
  {email: "food", username: "IheartEating", password_digest: "$2a$10$wYklFuv6fph8Ym2IKUg0wObt39/vVMQIldxwjK92bZfsndfp.MduW", session_token: "lJtuxFw_t9ZN6N8jX-TVmQ"}
])
Login.create!([
  {user_id: 1, session_token: "5VHUqGLoWQflLAs2mny0SQ"}
])
Photo.create!([
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
  {owner_id: 1, url: "http://res.cloudinary.com/dcd7no2gu/image/upload/v1423444637/ggkjvugmifaiog18l93c.jpg", cloudinary_id: "ggkjvugmifaiog18l93c"},
  {owner_id: 2, url: "http://res.cloudinary.com/dcd7no2gu/image/upload/v1424233795/bim3td77epxgvmvrkelo.jpg", cloudinary_id: "bim3td77epxgvmvrkelo"},
  {owner_id: 2, url: "http://res.cloudinary.com/dcd7no2gu/image/upload/v1424233795/icojrf17cj4hct2tie83.jpg", cloudinary_id: "icojrf17cj4hct2tie83"},
  {owner_id: 2, url: "http://res.cloudinary.com/dcd7no2gu/image/upload/v1424233797/jdyi3zntimlwchlxqo2v.jpg", cloudinary_id: "jdyi3zntimlwchlxqo2v"},
  {owner_id: 3, url: "http://res.cloudinary.com/dcd7no2gu/image/upload/v1424233798/lg8czcz78szgtvbcnur5.jpg", cloudinary_id: "lg8czcz78szgtvbcnur5"},
  {owner_id: 3, url: "http://res.cloudinary.com/dcd7no2gu/image/upload/v1424233798/kbg4dbbh8hvmjjb6xuvn.jpg", cloudinary_id: "kbg4dbbh8hvmjjb6xuvn"},
  {owner_id: 3, url: "http://res.cloudinary.com/dcd7no2gu/image/upload/v1424233815/cpzpu2nvwl3jd2jre98z.jpg", cloudinary_id: "cpzpu2nvwl3jd2jre98z"},
  {owner_id: 3, url: "http://res.cloudinary.com/dcd7no2gu/image/upload/v1424233796/g7okmyqtsmbmmjej6cil.jpg", cloudinary_id: "g7okmyqtsmbmmjej6cil"},
  {owner_id: 3, url: "http://res.cloudinary.com/dcd7no2gu/image/upload/v1424233795/wjnbgybml90ojp211ool.jpg", cloudinary_id: "wjnbgybml90ojp211ool"},
  {owner_id: 3, url: "http://res.cloudinary.com/dcd7no2gu/image/upload/v1424233795/bjl2lwbewchooh89nrtw.jpg", cloudinary_id: "bjl2lwbewchooh89nrtw"},
  {owner_id: 3, url: "http://res.cloudinary.com/dcd7no2gu/image/upload/v1424233422/krsxp3vmzrayyivuawlu.jpg", cloudinary_id: "krsxp3vmzrayyivuawlu"},
  {owner_id: 1, url: "http://res.cloudinary.com/dcd7no2gu/image/upload/v1423181845/eh5ic56vym5dkdzhvsjz.jpg", cloudinary_id: "eh5ic56vym5dkdzhvsjz"},
  {owner_id: 5, url: "http://res.cloudinary.com/dcd7no2gu/image/upload/v1424233798/ri4q3lbyx8g7zitgasi0.jpg", cloudinary_id: "ri4q3lbyx8g7zitgasi0"},
  {owner_id: 5, url: "http://res.cloudinary.com/dcd7no2gu/image/upload/v1424233804/vkpfam1lbxsvacx2mjte.jpg", cloudinary_id: "vkpfam1lbxsvacx2mjte"},
  {owner_id: 5, url: "http://res.cloudinary.com/dcd7no2gu/image/upload/v1424233106/hlf9mah0vbtzokbbhg4x.jpg", cloudinary_id: "hlf9mah0vbtzokbbhg4x"},
  {owner_id: 5, url: "http://res.cloudinary.com/dcd7no2gu/image/upload/v1424233280/hpvqhkpo1onzxarwflsj.jpg", cloudinary_id: "hpvqhkpo1onzxarwflsj"},
  {owner_id: 5, url: "http://res.cloudinary.com/dcd7no2gu/image/upload/v1424233795/g9aoud86jxpysy1nuqe3.jpg", cloudinary_id: "g9aoud86jxpysy1nuqe3"},
  {owner_id: 5, url: "http://res.cloudinary.com/dcd7no2gu/image/upload/v1424233795/la3iwnfdj7hbtyswgu0q.jpg", cloudinary_id: "la3iwnfdj7hbtyswgu0q"},
  {owner_id: 6, url: "http://res.cloudinary.com/dcd7no2gu/image/upload/v1424283618/degmcr8rt6fgy62qpyho.jpg", cloudinary_id: "degmcr8rt6fgy62qpyho"},
  {owner_id: 6, url: "http://res.cloudinary.com/dcd7no2gu/image/upload/v1424283620/l7bt2xg5dl3yumfqb0md.jpg", cloudinary_id: "l7bt2xg5dl3yumfqb0md"},
  {owner_id: 6, url: "http://res.cloudinary.com/dcd7no2gu/image/upload/v1424283621/zbbzkrivvmf2jkgfqa7v.jpg", cloudinary_id: "zbbzkrivvmf2jkgfqa7v"},
  {owner_id: 6, url: "http://res.cloudinary.com/dcd7no2gu/image/upload/v1424283620/ylmvg6oxmn4foj7d9e34.jpg", cloudinary_id: "ylmvg6oxmn4foj7d9e34"}
])
Profile.create!([
  {owner_id: 1, title: nil},
  {owner_id: 2, title: nil},
  {owner_id: 3, title: nil},
  {owner_id: 4, title: nil},
  {owner_id: 5, title: nil},
  {owner_id: 6, title: nil}
])
