/**
* FileName: WifiUtil.java
* @Description: TODO(用一句话描述该文件做什么)
* All rights Reserved, Designed By 21winmess
* Copyright: Copyright(C) 2010-2011 
* Company 21winmess DaLian LTD.
* @author: Allan Zhang
* @version V1.3
* Createdate: 2012-10-21 上午11:39:22
*
* Modification History:
* Date Author Version Discription
* -----------------------------------------------------------------------------------
* 2012-10-21 Qute_Android2.0
* Why & What is modified: <修改原因描述>
*/
package com.tencent.onesecurity.util;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;

import org.w3c.dom.Attr;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.xml.sax.SAXException;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;

import com.tencent.onesecurity.MainApplication;

/**
 * @ClassName: WifiUtil
 * @Description:TODO(这里用一句话描述这个类的作用)
 * @author: Allan
 * @date: 2012-10-21 上午11:39:22
 *
 */
public class WifiUtil {
	public static final String TEST_URL = "http://www.qq.com/";
    public static String sRedirectLocation;
	public WifiUtil()
    {
    }
    public static boolean isWifiNetwork()
    {
    	Context ctx = MainApplication.getContext();
        ConnectivityManager connectivity = (ConnectivityManager)ctx.getSystemService("connectivity");
       NetworkInfo networkInfo = connectivity.getActiveNetworkInfo();
       return networkInfo != null && networkInfo.isConnected() && networkInfo.getType() == 1;
    }
    public static boolean needWifiApprove()
    {
    	String location = null;

       try
        {
    	    URL url = new URL(TEST_URL);
       	    //URLConnection urlConnection = url.openConnection(); 
            //HttpURLConnection httpConn = (HttpURLConnection)(urlConnection);
            HttpURLConnection httpConn = new HttpURLConnection(url) {
				
				@Override
				public void connect() throws IOException {
					// TODO Auto-generated method stub
					
				}
				
				@Override
				public boolean usingProxy() {
					// TODO Auto-generated method stub
					return false;
				}
				
				@Override
				public void disconnect() {
					// TODO Auto-generated method stub
					
				}
			};////(HttpURLConnection)(url);
            httpConn.setDoInput(true);
            httpConn.setDoOutput(true);
            //httpConn.setDefaultUseCaches(false);
            httpConn.setRequestMethod("POST");
            httpConn.setReadTimeout(3000);
            OutputStream outputStream = httpConn.getOutputStream();
            outputStream.write(new byte[0]);
            outputStream.close();
            location = getRedirectUrl(httpConn);
            httpConn.disconnect();
            if(location == null)
            {
            	httpConn = new HttpURLConnection(url) {
					
					@Override
					public void connect() throws IOException {
						// TODO Auto-generated method stub
						
					}
					
					@Override
					public boolean usingProxy() {
						// TODO Auto-generated method stub
						return false;
					}
					
					@Override
					public void disconnect() {
						// TODO Auto-generated method stub
						
					}
				};
                //httpConn = (HttpURLConnection)(new URL(TEST_URL));
                httpConn.setDoInput(true);
                httpConn.setRequestMethod("GET");
                httpConn.setReadTimeout(3000);

                location = getRedirectUrl(httpConn);
                httpConn.disconnect();
            }
        }
        catch(IOException e)
        {
            e.printStackTrace();
        }

        if(location == null)
        {
            return false;
        } else
        {
            sRedirectLocation = location;
            return true;
        }
    }
    private static String getRedirectUrl(HttpURLConnection httpConn)
    {
        String location = null;

       try
        {
           httpConn.getHeaderFields();
           if(null ==(new URL(TEST_URL)))
                location = httpConn.getURL().toExternalForm();
            else
            if(httpConn.getHeaderField("Location") != null)
                location = httpConn.getHeaderField("Location");
            else
            if(httpConn.getHeaderField("Refresh") != null)
            {
                String items[] = httpConn.getHeaderField("Refresh").split(";");
                if(items.length == 2)
                    location = items[1].trim();
            } 
            else
            {
                InputStream inputStream = httpConn.getInputStream();
                if(inputStream != null)
                {
                    String url = parseHTML(inputStream);
                    if(url != null)
                       location = url;
                  inputStream.close();
                }
            }
        }
        catch(IOException e)
        {
           e.printStackTrace();
        }
       catch(Exception e)
        {
            e.printStackTrace();
        }
       return location;
    }
    private static String parseHTML(InputStream is)
    {
        String location = null;
        try
        {
           DocumentBuilderFactory domfac = DocumentBuilderFactory.newInstance();
            DocumentBuilder dombuilder = domfac.newDocumentBuilder();
            Document doc = dombuilder.parse(is);
            Element node = doc.getElementById("meta");
            Attr atrr1 = node.getAttributeNode("http-equiv");
            Attr atrr2 = node.getAttributeNode("content");
           if(atrr1 != null && atrr1.getValue().equalsIgnoreCase("refresh") && atrr2 != null)
            {
                String content = atrr2.getValue();
                int index = content.indexOf("url=");
                if(index > 0)
                    location = content.substring(index + 4);
            }
        }
        catch(ParserConfigurationException e)
        {
            e.printStackTrace();
        }
        catch(SAXException e)
        {
            e.printStackTrace();
        }
        catch(IOException e)
        {
            e.printStackTrace();
        }
        return location;
    }
}
