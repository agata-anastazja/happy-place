# HappyPlace

Simple app that helps users plan a last-minute holiday by displaying which is
the sunniest/coolest/rainiest city in Europe right now.

It's using [https://openweathermap.org/]

To run it, you need to:
- create a secrets.exs file and save your open weather map api key like so 
```
config :happy_place, 
   api_access_token: "example api key"
   
```
- install dependecies using
```
mix deps.get

```

