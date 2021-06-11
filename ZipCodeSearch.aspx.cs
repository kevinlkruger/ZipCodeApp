using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static ZipCodeApp.App_Start.ZipCodeInput;
using System.Net.Http;

namespace ZipCodeApp
{
    public partial class ZipCodeSearch : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            
            int zipCodeLength = txtZipInput.Text.Length;
            
            if (zipCodeLength != 5)
            {
                lblStatusText.Visible = true;
                lblCity.Visible = false; lblState.Visible = false;
                lblStatusText.Text = "Unable to retrieve data for the zip code. US zip codes must have 5 digits. ";
            }
            else
            {
                var resultData = GetRootObject(txtZipInput.Text);
                if(resultData != null)
                {
                    lblStatusText.Visible = false;
                    lblCity.Visible = true; lblState.Visible = true;
                    lblState.Text = "State: " + string.Join(",", resultData.places.Select(x => x.state));
                    lblCity.Text = "City: " + string.Join(",", resultData.places.Select(x => x.placeName));
                }
                else {
                    lblStatusText.Visible = true;
                    lblCity.Visible = false; lblState.Visible = false;
                    lblStatusText.Text = "Unable to retrieve data for the zip code. US zip codes must have 5 digits. ";
                }
            }
            
        }

        private RootObject GetRootObject(string zip)
        {
            var httpClient = new HttpClient
            {
                BaseAddress = new Uri("https://api.zippopotam.us/")
            };

            var response = httpClient.GetAsync($"us/{zip}").Result;
            if (!response.IsSuccessStatusCode)
            {
                return null;
            }

            var content = response.Content.ReadAsAsync<RootObject>().Result;

            return content;
        }

    }
}