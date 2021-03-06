/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package processamento;

/**
 *
 * @author Hallessandro
 */
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.net.URL;
import java.nio.charset.Charset;
import javax.swing.JOptionPane;
import jdk.nashorn.internal.parser.JSONParser;
import org.json.JSONArray;

import org.json.JSONException;
import org.json.JSONObject;

public class JsonReader {

  private static String readAll(Reader rd) throws IOException {
    StringBuilder sb = new StringBuilder();
    int cp;
    while ((cp = rd.read()) != -1) {
      sb.append((char) cp);
    }
    return sb.toString();
  }

  public static JSONArray readJsonFromUrl(String url) throws IOException, JSONException {
    InputStream is = new URL(url).openStream();
    try {
      BufferedReader rd = new BufferedReader(new InputStreamReader(is, Charset.forName("UTF-8")));
      String jsonText = readAll(rd);
      JSONArray json = new JSONArray(jsonText);
      return json;
    } finally {
      is.close();
    }
  }

  public static void main(String[] args) throws IOException, JSONException {
    JSONArray json = readJsonFromUrl("http://worldcup.sfg.io/teams/");
    System.out.println(json.toString());
    for (int i = 0; i < json.length(); i++){
        System.out.println(json.getJSONObject(i).getString("country"));
        System.out.println(json.getJSONObject(i).getString("fifa_code"));
        System.out.println("------------------------------------------");
    }
}
}