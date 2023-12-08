import java.io.*;
import org.apache.http.HttpEntity;
import org.apache.http.client.*;
import org.apache.http.client.methods.*;
import org.apache.http.impl.client.*;
import javax.json.*;

public class Client3 {
	public static void main(String[] args) {

		
//		System.exit(1);

		CloseableHttpClient client = HttpClients.createDefault();
		String url = "http://" + args[0];
		HttpGet request = new HttpGet(url);
		
		System.out.println( "Executing request " + request.getRequestLine() );

		try {
		CloseableHttpResponse resp = client.execute(request);

		System.out.println( "Response Line: " + resp.getStatusLine() );
		System.out.println( "Response Code: " + resp.getStatusLine().getStatusCode() );

		InputStreamReader isr = new InputStreamReader( resp.getEntity().getContent() );

		JsonReader reader = Json.createReader(isr);
		JsonObject jsonObject = reader.readObject();

		reader.close();
		isr.close();

		System.out.println( "duree=" + jsonObject.getString("Runtime") );

		JSonArray tab = obj.getJsonArray( ...
	for( int i=0; i<tab.size(); i++ )
	{
	JsonObject ji = // chercher dans la doc Java comment recuperer un objet Json dans un tableau
	...
	}	



		} catch (IOException ex) {
			System.out.println("Error");
			ex.printStackTrace();
		  }
	}
}
