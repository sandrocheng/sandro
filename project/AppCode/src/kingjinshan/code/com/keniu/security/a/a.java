package com.keniu.security.a;

import android.content.Context;
import android.content.res.Resources;
import java.io.IOException;
import java.util.LinkedList;
import java.util.List;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.XMLReader;

public final class a
{
  public static List b;
  public static LinkedList c;
  public Context a;

  public a(Context paramContext)
  {
    this.a = paramContext;
    try
    {
      XMLReader localXMLReader = SAXParserFactory.newInstance().newSAXParser().getXMLReader();
      o localo = new o();
      localXMLReader.setContentHandler(localo);
      localXMLReader.parse(new InputSource(this.a.getResources().openRawResource(2131099651)));
      c = localo.b();
      b = localo.a();
      return;
    }
    catch (ParserConfigurationException localParserConfigurationException)
    {
      while (true)
        localParserConfigurationException.printStackTrace();
    }
    catch (SAXException localSAXException)
    {
      while (true)
        localSAXException.printStackTrace();
    }
    catch (IOException localIOException)
    {
      while (true)
        localIOException.printStackTrace();
    }
  }

  private List a()
  {
    XMLReader localXMLReader = SAXParserFactory.newInstance().newSAXParser().getXMLReader();
    o localo = new o();
    localXMLReader.setContentHandler(localo);
    localXMLReader.parse(new InputSource(this.a.getResources().openRawResource(2131099651)));
    c = localo.b();
    return localo.a();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.a.a
 * JD-Core Version:    0.6.2
 */