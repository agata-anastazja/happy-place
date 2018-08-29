# HappyPlace

Simple app that helps users plan a last-minute holiday by displaying which is
the sunniest/coolest/rainiest city in Europe right now.

It's using [https://openweathermap.org/]

###To run it in commandline, you need to:
- create a secrets.exs file and save your open weather map api key like so
```
use Mix.Config
config :happy_place,
   api_access_token: "example api key"

```
- install dependecies using
```
mix deps.get

```
- build it
```
mix escript.build
```
- run it with an argument of city ids as a single string of ids divided by coma
```
./happy_place -i 703448,3117735
```
- or without and getting a recommendation based on default selection of 5 European cities
```
./happy_place
```

###Assumptions:

Throughout the program I am using city ids relevant to specific cities in open weather map api instead of cities names, because there are more then one instance of some of the bigger cities in the api.

Also, I have chosen Poznan, London, Madrid, Kiev and Berlin as default cities.
The api requires a paid licence to make over 600 a minute, so I decided to make the comparison on a smaller scale, but if you can also pass other cities ids if you want to find out about other cities.

###What I would do next?
I would add error handling using genServer and surpervisor mechanism to catch if my processes are breaking. 
