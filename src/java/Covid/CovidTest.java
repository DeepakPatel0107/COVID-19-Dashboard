package Covid;


import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLConnection;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Amit kumar patel
 */
public class CovidTest {        
    public JSONObject getCovidData() {        
        URLConnection myURLConnection = null;
        URL myURL = null;
        String response = "";
        String mainUrl = "";
        String url="https://api.covid19india.org/data.json";
        BufferedReader reader = null;        
        StringBuilder sb = new StringBuilder();
        JSONObject json = null;        
        StringBuilder sbPostData = new StringBuilder(url);
        mainUrl = sbPostData.toString();
        try {
            myURL = new URL(mainUrl);
            myURLConnection = myURL.openConnection();
            myURLConnection.connect();
            reader = new BufferedReader(new InputStreamReader(myURLConnection.getInputStream()));

            while ((response = reader.readLine()) != null) //print response
            {
                sb.append(response);
               
            }
            try {
                json = new JSONObject(sb.toString());
                
            } catch (JSONException ex) {                
            }

            reader.close();
        } catch (IOException e) {
            e.printStackTrace();

        }

        return json;
    }

    public static void main(String[] args) throws JSONException {
      
    }                        
}
