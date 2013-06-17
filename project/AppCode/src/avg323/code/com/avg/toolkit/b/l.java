package com.avg.toolkit.b;

import a.a.a.a.a.a;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.StringReader;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlSerializer;

class l
{
  static Object a(XmlPullParser paramXmlPullParser)
  {
    paramXmlPullParser.require(2, null, "value");
    paramXmlPullParser.nextTag();
    String str1 = paramXmlPullParser.getName();
    Object localObject1;
    if ((str1.equals("int")) || (str1.equals("i4")))
      localObject1 = Integer.valueOf(Integer.parseInt(paramXmlPullParser.nextText()));
    while (true)
    {
      paramXmlPullParser.nextTag();
      paramXmlPullParser.require(3, null, "value");
      return localObject1;
      if (str1.equals("i8"))
      {
        localObject1 = Long.valueOf(Long.parseLong(paramXmlPullParser.nextText()));
      }
      else if (str1.equals("double"))
      {
        localObject1 = Double.valueOf(Double.parseDouble(paramXmlPullParser.nextText()));
      }
      else if (str1.equals("boolean"))
      {
        if (paramXmlPullParser.nextText().equals("1"))
          localObject1 = Boolean.TRUE;
        else
          localObject1 = Boolean.FALSE;
      }
      else if (str1.equals("string"))
      {
        localObject1 = paramXmlPullParser.nextText();
      }
      else if (str1.equals("dateTime.iso8601"))
      {
        String str5 = paramXmlPullParser.nextText();
        try
        {
          Object localObject3 = new SimpleDateFormat("yyyyMMdd'T'HH:mm:ss").parseObject(str5);
          localObject1 = localObject3;
        }
        catch (ParseException localParseException)
        {
          throw new IOException("Cannot deserialize dateTime " + str5);
        }
      }
      else if (str1.equals("base64"))
      {
        BufferedReader localBufferedReader = new BufferedReader(new StringReader(paramXmlPullParser.nextText()), 8192);
        StringBuffer localStringBuffer = new StringBuffer();
        while (true)
        {
          String str2 = localBufferedReader.readLine();
          if (str2 == null)
            break;
          localStringBuffer.append(str2);
        }
        localObject1 = a.b(localStringBuffer.toString());
      }
      else if (str1.equals("array"))
      {
        paramXmlPullParser.nextTag();
        paramXmlPullParser.require(2, null, "data");
        paramXmlPullParser.nextTag();
        ArrayList localArrayList = new ArrayList();
        while (paramXmlPullParser.getName().equals("value"))
        {
          localArrayList.add(a(paramXmlPullParser));
          paramXmlPullParser.nextTag();
        }
        paramXmlPullParser.require(3, null, "data");
        paramXmlPullParser.nextTag();
        paramXmlPullParser.require(3, null, "array");
        localObject1 = localArrayList.toArray();
      }
      else
      {
        if (!str1.equals("struct"))
          break;
        paramXmlPullParser.nextTag();
        HashMap localHashMap = new HashMap();
        while (paramXmlPullParser.getName().equals("member"))
        {
          Object localObject2 = null;
          String str3 = null;
          while (true)
          {
            paramXmlPullParser.nextTag();
            String str4 = paramXmlPullParser.getName();
            if (str4.equals("name"))
            {
              str3 = paramXmlPullParser.nextText();
            }
            else
            {
              if (!str4.equals("value"))
                break;
              localObject2 = a(paramXmlPullParser);
            }
          }
          if ((str3 != null) && (localObject2 != null))
            localHashMap.put(str3, localObject2);
          paramXmlPullParser.require(3, null, "member");
          paramXmlPullParser.nextTag();
        }
        paramXmlPullParser.require(3, null, "struct");
        localObject1 = localHashMap;
      }
    }
    throw new IOException("Cannot deserialize " + paramXmlPullParser.getName());
  }

  static void a(XmlSerializer paramXmlSerializer, Object paramObject)
  {
    if (((paramObject instanceof Integer)) || ((paramObject instanceof Short)) || ((paramObject instanceof Byte)))
      paramXmlSerializer.startTag(null, "i4").text(paramObject.toString()).endTag(null, "i4");
    while (true)
    {
      return;
      if ((paramObject instanceof Long))
      {
        paramXmlSerializer.startTag(null, "i8").text(paramObject.toString()).endTag(null, "i8");
      }
      else if (((paramObject instanceof Double)) || ((paramObject instanceof Float)))
      {
        paramXmlSerializer.startTag(null, "double").text(paramObject.toString()).endTag(null, "double");
      }
      else
      {
        if ((paramObject instanceof Boolean))
        {
          if (((Boolean)paramObject).booleanValue());
          for (String str4 = "1"; ; str4 = "0")
          {
            paramXmlSerializer.startTag(null, "boolean").text(str4).endTag(null, "boolean");
            break;
          }
        }
        if ((paramObject instanceof String))
        {
          paramXmlSerializer.startTag(null, "string").text(paramObject.toString()).endTag(null, "string");
        }
        else if (((paramObject instanceof Date)) || ((paramObject instanceof Calendar)))
        {
          String str1 = new SimpleDateFormat("yyyyMMdd'T'HH:mm:ss").format(paramObject);
          paramXmlSerializer.startTag(null, "dateTime.iso8601").text(str1).endTag(null, "dateTime.iso8601");
        }
        else if ((paramObject instanceof byte[]))
        {
          String str2 = new String(a.a((byte[])paramObject));
          paramXmlSerializer.startTag(null, "base64").text(str2).endTag(null, "base64");
        }
        else if ((paramObject instanceof List))
        {
          paramXmlSerializer.startTag(null, "array").startTag(null, "data");
          Iterator localIterator2 = ((List)paramObject).iterator();
          while (localIterator2.hasNext())
          {
            Object localObject3 = localIterator2.next();
            paramXmlSerializer.startTag(null, "value");
            a(paramXmlSerializer, localObject3);
            paramXmlSerializer.endTag(null, "value");
          }
          paramXmlSerializer.endTag(null, "data").endTag(null, "array");
        }
        else if ((paramObject instanceof Object[]))
        {
          paramXmlSerializer.startTag(null, "array").startTag(null, "data");
          Object[] arrayOfObject = (Object[])paramObject;
          for (int i = 0; i < arrayOfObject.length; i++)
          {
            Object localObject2 = arrayOfObject[i];
            paramXmlSerializer.startTag(null, "value");
            a(paramXmlSerializer, localObject2);
            paramXmlSerializer.endTag(null, "value");
          }
          paramXmlSerializer.endTag(null, "data").endTag(null, "array");
        }
        else
        {
          if (!(paramObject instanceof Map))
            break;
          paramXmlSerializer.startTag(null, "struct");
          Iterator localIterator1 = ((Map)paramObject).entrySet().iterator();
          while (localIterator1.hasNext())
          {
            Map.Entry localEntry = (Map.Entry)localIterator1.next();
            String str3 = (String)localEntry.getKey();
            Object localObject1 = localEntry.getValue();
            paramXmlSerializer.startTag(null, "member");
            paramXmlSerializer.startTag(null, "name").text(str3).endTag(null, "name");
            paramXmlSerializer.startTag(null, "value");
            a(paramXmlSerializer, localObject1);
            paramXmlSerializer.endTag(null, "value");
            paramXmlSerializer.endTag(null, "member");
          }
          paramXmlSerializer.endTag(null, "struct");
        }
      }
    }
    throw new IOException("Cannot serialize " + paramObject);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.toolkit.b.l
 * JD-Core Version:    0.6.2
 */