# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Contender.create( [
                    {uname: 'Brandon',  fullname: 'Brandon Harris'},    #wikipedia programmer
                    {uname: 'Isaac',    fullname: 'Isaac Kosegi'},      #wikipedia editor
                    {uname: 'James',    fullname: 'Dr. James Heilman'}, #wikipedia editor
                    {uname: 'Jimmy',    fullname: 'Jimmy Wales'},       #wikipedia founder
                    {uname: 'Judy',     fullname: 'Judy Mollica'},      #wikipedia reader
                    {uname: 'Karthik',  fullname: 'Karthik Nadar'},     #wikipedia author
                    {uname: 'Ryan',     fullname: 'Ryan Lane'},         #wikipedia programmer
                    {uname: 'Sarah',    fullname: 'Sarah'},             #author of 159 articles
                    {uname: 'Stephen',  fullname: 'Stephen'},           #author of 191 articles
                    {uname: 'Susan',    fullname: 'Susan'},              #author of 549 articles
                    {uname: 'Student',   fullname: 'Unknown name student'},
                    {uname: 'Sengai',   fullname: 'Dr. Sengai Podhuvan'}, #wikipedia author
                    {uname: 'Maryana',  fullname: 'Maryana Pinchuk'}      #wikipedia researcher
                  ]
                )
