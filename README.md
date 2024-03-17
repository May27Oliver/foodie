# CYBERBIZ FOODIE CYBERBIZ 福委專用網站
## 供RD部門每個月投票選擇想吃的零食
每個RD，每個月可以投一張票，票上面選擇想吃的零食三樣，想喝的飲料三樣。
每個RD可以提案零食。

## Model
1. Member: has_many :vote id, email, password
```
bin/rails generate scaffold Member email:string name:string password:string
```
2. Vote: belong_to :member, id, member_id, food_id:integer, date,
```
bin/rails generate scaffold Vote date:datetime food_id:integer member: references
```
3. foodie: recommender_id, type, price, name, url,
```
bin/rails generate scaffold Foodie recommender_id:integer type:integer price: integer url: string
```