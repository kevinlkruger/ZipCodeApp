using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ZipCodeApp.App_Start
{
    public class ZipCodeInput
    {
        public class RootObject
        {

            [JsonProperty(PropertyName = "post code")]
            public string post_code { get; set; }
            public string country { get; set; }

            [JsonProperty(PropertyName = "country abbreviation")]
            public string country_abbreviation { get; set; }

            public IEnumerable<places> places { get; set; }
        }

        public class places
        {
            [JsonProperty(PropertyName = "place name")]
            public string placeName { get; set; }
            public string longitude { get; set; }
            public string state { get; set; }

            [JsonProperty(PropertyName = "state abbreviation")]
            public string state_abbreviation { get; set; }
            public string latitude { get; set; }

        }

        //{"post code": "95118", "country": "United States", "country abbreviation": "US", "places": [{"place name": "San Jose", "longitude": "-121.8896", "state": "California", "state abbreviation": "CA", "latitude": "37.2568"}]}
    }
    
}