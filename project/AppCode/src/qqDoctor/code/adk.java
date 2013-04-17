import java.io.IOException;
import java.io.PrintStream;
import java.io.StringReader;
import java.util.Stack;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;
import org.xml.sax.Attributes;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.XMLReader;
import org.xml.sax.helpers.DefaultHandler;

public final class adk extends DefaultHandler
{
  private adi a;
  private adg b;
  private boolean c;
  private Stack<adg> d = new Stack();

  public static adi a(String paramString)
  {
    try
    {
      XMLReader localXMLReader = SAXParserFactory.newInstance().newSAXParser().getXMLReader();
      adk localadk = new adk();
      localXMLReader.setContentHandler(localadk);
      localXMLReader.setErrorHandler(localadk);
      localXMLReader.parse(new InputSource(new StringReader(paramString)));
      localadi = localadk.a;
      localadi.b(localadi.c());
      return localadi;
    }
    catch (SAXException localSAXException)
    {
      while (true)
      {
        localSAXException.printStackTrace();
        adi localadi = null;
      }
    }
    catch (IOException localIOException)
    {
      while (true)
        localIOException.printStackTrace();
    }
    catch (ParserConfigurationException localParserConfigurationException)
    {
      while (true)
        localParserConfigurationException.printStackTrace();
    }
  }

  private void a()
  {
    if (!this.d.isEmpty())
    {
      if (((adg)this.d.peek()).b() != 4)
        break label57;
      ((adf)this.d.peek()).a(this.b);
    }
    while (true)
    {
      this.d.push(this.b);
      return;
      label57: if (((adg)this.d.peek()).b() == 5)
        ((adj)this.d.peek()).a(this.b);
    }
  }

  private static String b(String paramString)
  {
    String str = paramString.toLowerCase();
    if (str.contains("ms"))
      str = str.replace("ms", "");
    if (str.contains("s"))
      str = str.replace("s", "");
    return str;
  }

  public final void characters(char[] paramArrayOfChar, int paramInt1, int paramInt2)
  {
    if ((this.c) && ((this.b instanceof adl)))
    {
      StringBuffer localStringBuffer = new StringBuffer();
      for (int i = paramInt1; i < paramInt1 + paramInt2; i++)
        localStringBuffer.append(paramArrayOfChar[i]);
      this.c = false;
      ((adl)this.b).c(localStringBuffer.toString());
    }
  }

  public final void endDocument()
    throws SAXException
  {
    System.out.println("End of document.");
  }

  public final void endElement(String paramString1, String paramString2, String paramString3)
  {
    if ((paramString3.equalsIgnoreCase("body")) || (paramString3.equalsIgnoreCase("par")) || (paramString3.equalsIgnoreCase("audio")) || (paramString3.equalsIgnoreCase("video")) || (paramString3.equalsIgnoreCase("text")) || (paramString3.equalsIgnoreCase("img")))
      this.d.pop();
    if ("".equals(paramString1))
      new StringBuilder("End element: ").append(paramString3).toString();
    while (true)
    {
      return;
      new StringBuilder("End element:   {").append(paramString1).append("}").append(paramString2).toString();
    }
  }

  public final void startDocument()
    throws SAXException
  {
    System.out.println("Start of document.");
    this.a = adi.a();
  }

  public final void startElement(String paramString1, String paramString2, String paramString3, Attributes paramAttributes)
  {
    this.c = false;
    adl localadl;
    if ("text".equalsIgnoreCase(paramString2))
    {
      localadl = adl.a();
      if (paramAttributes.getValue("begin") == null)
      {
        adl.d();
        if (paramAttributes.getValue("dur") != null)
          break label138;
        localadl.a(0);
        label52: localadl.a(paramAttributes.getValue("src"));
        this.b = localadl;
        this.a.a(this.b);
        this.c = true;
        a();
        if (!"".equals(paramString1))
          break label643;
        new StringBuilder("Start element: ").append(paramString2).toString();
      }
    }
    while (true)
    {
      return;
      Integer.parseInt(paramAttributes.getValue("begin"));
      adl.d();
      break;
      label138: localadl.a(Integer.parseInt(b(paramAttributes.getValue("dur"))));
      break label52;
      Object localObject;
      if ("audio".equalsIgnoreCase(paramString2))
      {
        localObject = ade.a();
        if (paramAttributes.getValue("begin") == null)
        {
          ade.d();
          label190: if (paramAttributes.getValue("dur") != null)
            break label265;
          ((ade)localObject).a(0);
          label208: ((ade)localObject).a(paramAttributes.getValue("src"));
        }
      }
      while (true)
      {
        this.b = ((adg)localObject);
        this.a.a(this.b);
        a();
        break;
        Integer.parseInt(paramAttributes.getValue("begin"));
        ade.d();
        break label190;
        label265: ((ade)localObject).a(Integer.parseInt(b(paramAttributes.getValue("dur"))));
        break label208;
        if ("img".equalsIgnoreCase(paramString2))
        {
          localObject = adh.a();
          if (paramAttributes.getValue("begin") == null)
          {
            adh.d();
            label317: if (paramAttributes.getValue("dur") != null)
              break label371;
            ((adh)localObject).a(0);
          }
          while (true)
          {
            ((adh)localObject).a(paramAttributes.getValue("src"));
            break;
            Integer.parseInt(paramAttributes.getValue("begin"));
            adh.d();
            break label317;
            label371: ((adh)localObject).a(Integer.parseInt(b(paramAttributes.getValue("dur"))));
          }
        }
        if ("video".equalsIgnoreCase(paramString2))
        {
          localObject = adm.a();
          if (paramAttributes.getValue("begin") == null)
          {
            adm.d();
            label423: if (paramAttributes.getValue("dur") != null)
              break label477;
            ((adm)localObject).a(0);
          }
          while (true)
          {
            ((adm)localObject).a(paramAttributes.getValue("src"));
            break;
            Integer.parseInt(paramAttributes.getValue("begin"));
            adm.d();
            break label423;
            label477: if (paramAttributes.getValue("dur").contains("s"))
            {
              paramAttributes.getValue("dur").replace("s", "");
              ((adm)localObject).a(Integer.parseInt(b(paramAttributes.getValue("dur"))));
            }
          }
        }
        if ("body".equalsIgnoreCase(paramString2))
        {
          localObject = adf.a();
        }
        else
        {
          if (!"par".equalsIgnoreCase(paramString2))
            break;
          localObject = adj.a();
          if (paramAttributes.getValue("begin") == null)
            adj.d();
          while (true)
          {
            if (paramAttributes.getValue("dur") != null)
              break label620;
            ((adj)localObject).a(0);
            break;
            Integer.parseInt(paramAttributes.getValue("begin"));
            adj.d();
          }
          label620: ((adj)localObject).a(Integer.parseInt(b(paramAttributes.getValue("dur"))));
        }
      }
      label643: new StringBuilder("Start element: Start element: {").append(paramString1).append("}").append(paramString2).toString();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     adk
 * JD-Core Version:    0.6.2
 */