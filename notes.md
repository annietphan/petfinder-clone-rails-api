Shelter
has_many :pets

name:string,
city:string,
state: string,
zipcode:integer,
street_address:string,
email:string,
number:string



Pet
belongs_to :shelter

shelter_id:integer,
name:string,
breed:string,
gender:string,
size:string,
age:string,
vaccinated:boolean,
house-trained:boolean,
good_with_dogs:boolean,
good_with_cats:boolean,
good_with_children:boolean
