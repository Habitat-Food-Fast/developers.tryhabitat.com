# Introduction

Welcome to the Habitat dispatching API! You can use our API to fetch information about delivery hours, vendors, menus, and send an order through our system

We currently only have language bindings in shell, but keep an eye out for node, python, and java in the future! You can view code examples in the dark area to the right, and you can switch the programming language of the examples with the tabs in the top right.

# Authentication

> To check the validity and permissions on your key, run the following code.

```bash
curl -X GET https://dispatch.tryhabitat.com/api/v1/ping \
     -H 'cache-control: no-cache' \
     -H 'Content-Type: application/json' \
     -d '{"api_key": "YOUR_API_KEY"}'
```

> The response object will have your name and key:

```json
  {
    "owner": "Bobby Cheese",
    "key": "YOUR_API_KEY"
  }
```

Habitat uses API keys to allow developer access. You can inquire about a Habitat API key at our [developer portal](http://example.com/developers).

<aside class="notice">
Remember, you must replace <code>YOUR_API_KEY</code> with your personal API key.
</aside>

# Zones

Zones contain Habitat's delivery zones and hours
<aside class="warning">
This endpoint is experimental and subject to change
</aside>

## GET Zones

### HTTP Request

`GET https://dispatch.tryhabitat.com/api/v1/zones`

```bash
curl "https://dispatch.tryhabitat/api/v1/zones"
  -H 'cache-control: no-cache' \
  -H 'Content-Type: application/json' \
  -d '{
    "api_key": "YOUR_API_KEY",
    "zoneId": "zoneId"
  }'
```

> The above command returns JSON structured like this:

```json
[
  {
    "_id": 1,
    "name": "Temple",
    "open": true,
    "bounds" : {
        "type" : "geojson",
        "data" : {
            "type" : "Feature",
            "properties" : {
                "name" : "Temple"
            },
            "geometry" : {
                "type" : "Polygon",
                "coordinates": [
                  [
                    [
                      -75.16665458679199,
                      39.97225278615979
                    ],
                    [
                      -75.16867160797119,
                      39.975377114288165
                    ],
                    [
                      -75.16665458679199,
                      39.97225278615979
                    ]
                  ]
                ]
            }
        }
    },
  },
]
```

This endpoint retrieves an array of all zones, or a single object if requested with zoneId.

### Data Parameters

Parameter | Default | Description
--------- | ------- | -----------
zoneId | false | (optional) If set to true, the result will return an array of zones.

<aside class="success">
Remember — a happy kitten is an authenticated kitten!
</aside>
