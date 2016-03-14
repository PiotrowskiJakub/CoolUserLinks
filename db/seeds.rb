Category.destroy_all

Category.create!([{
  name: "Adult"
},
{
  name: "Arts"
},
{
  name: "Business"
},
{
  name: "Computers"
},
{
  name: "Games"
},
{
  name: "Health"
},
{
  name: "Home"
},
{
  name: "Kids and Teens"
},
{
  name: "Recreation"
},
{
  name: "Reference"
},
{
  name: "Regional"
},
{
  name: "Science"
},
{
  name: "Shopping"
},
{
  name: "Society"
},
{
  name: "Sports"
},
{
  name: "World"
}])

p "Created #{Category.count} categories"
