package com.keniu.security.sync;

import android.os.Environment;
import android.util.Xml;
import java.io.File;
import java.io.FileInputStream;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xmlpull.v1.XmlSerializer;

public final class y
{
  private static final String a = Environment.getExternalStorageDirectory() + "/mosecurity/Backup/contactHistory.cache";
  private static final String b = Environment.getExternalStorageDirectory() + "/mosecurity/Backup/messageHistory.cache";
  private static final int c = 0;
  private static final String d = "MessageHistory";
  private static final String e = "ContactHistory";
  private static final String f = "HistoryRecord";
  private static final String g = "FileName";
  private static final String h = "FileSize";
  private static final String i = "CreateTime";

  public static List a(int paramInt)
  {
    ArrayList localArrayList = new ArrayList();
    try
    {
      DocumentBuilder localDocumentBuilder = DocumentBuilderFactory.newInstance().newDocumentBuilder();
      if (paramInt == 0);
      for (String str = a; ; str = b)
      {
        NodeList localNodeList1 = localDocumentBuilder.parse(new FileInputStream(str)).getDocumentElement().getElementsByTagName("HistoryRecord");
        int j = localNodeList1.getLength();
        for (int k = 0; k < j; k++)
        {
          HistoryRecord localHistoryRecord = new HistoryRecord();
          NodeList localNodeList2 = localNodeList1.item(k).getChildNodes();
          localHistoryRecord.a(localNodeList2.item(0).getTextContent());
          localHistoryRecord.c(localNodeList2.item(1).getTextContent());
          localHistoryRecord.b(localNodeList2.item(2).getTextContent());
          localArrayList.add(localHistoryRecord);
        }
      }
    }
    catch (Exception localException)
    {
      localArrayList = null;
    }
    return localArrayList;
  }

  public static boolean a(List paramList, int paramInt)
  {
    boolean bool;
    if ((paramList == null) || (paramList.size() == 0))
    {
      bool = false;
      return bool;
    }
    while (true)
    {
      String str2;
      try
      {
        XmlSerializer localXmlSerializer = Xml.newSerializer();
        StringWriter localStringWriter = new StringWriter();
        localXmlSerializer.setOutput(localStringWriter);
        localXmlSerializer.startDocument("UTF-8", Boolean.valueOf(true));
        if (paramInt != 0)
          break label301;
        str1 = "ContactHistory";
        localXmlSerializer.startTag("", str1);
        Iterator localIterator = paramList.iterator();
        if (!localIterator.hasNext())
          break label308;
        HistoryRecord localHistoryRecord = (HistoryRecord)localIterator.next();
        localXmlSerializer.startTag("", "HistoryRecord");
        localXmlSerializer.startTag("", "FileName");
        localXmlSerializer.text(localHistoryRecord.a());
        localXmlSerializer.endTag("", "FileName");
        localXmlSerializer.startTag("", "FileSize");
        localXmlSerializer.text(localHistoryRecord.c());
        localXmlSerializer.endTag("", "FileSize");
        localXmlSerializer.startTag("", "CreateTime");
        localXmlSerializer.text(localHistoryRecord.b());
        localXmlSerializer.endTag("", "CreateTime");
        localXmlSerializer.endTag("", "HistoryRecord");
        continue;
        localXmlSerializer.endTag("", str2);
        localXmlSerializer.endDocument();
        String str3 = localStringWriter.toString();
        if (paramInt == 0)
        {
          str4 = a;
          bool = l.a(str3, str4);
          break;
        }
        String str4 = b;
        continue;
      }
      catch (Exception localException)
      {
        bool = false;
      }
      break;
      label301: String str1 = "MessageHistory";
      continue;
      label308: if (paramInt == 0)
        str2 = "ContactHistory";
      else
        str2 = "MessageHistory";
    }
  }

  public static boolean b(int paramInt)
  {
    if (paramInt == 0);
    for (String str = a; ; str = b)
      return new File(str).exists();
  }

  private static boolean b(List paramList, int paramInt)
  {
    if (c(paramInt));
    for (boolean bool = a(paramList, paramInt); ; bool = false)
      return bool;
  }

  public static boolean c(int paramInt)
  {
    String str;
    if (b(paramInt))
      if (paramInt == 0)
        str = a;
    for (boolean bool = new File(str).delete(); ; bool = true)
    {
      return bool;
      str = b;
      break;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.y
 * JD-Core Version:    0.6.2
 */