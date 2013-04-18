package com.keniu.security.sync.b;

import com.keniu.security.sync.i;
import java.io.FileInputStream;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

public final class a
{
  private String a;
  private boolean b = true;

  public a(String paramString, boolean paramBoolean)
  {
    this.a = paramString;
    this.b = paramBoolean;
  }

  private InputStream b()
  {
    return new FileInputStream(this.a);
  }

  public final List a()
  {
    ArrayList localArrayList = new ArrayList();
    while (true)
    {
      int i;
      int j;
      Node localNode;
      String str1;
      Object localObject;
      try
      {
        NodeList localNodeList1 = DocumentBuilderFactory.newInstance().newDocumentBuilder().parse(new FileInputStream(this.a)).getDocumentElement().getElementsByTagName("map");
        i = 0;
        if (i >= localNodeList1.getLength())
          break label316;
        NodeList localNodeList2 = localNodeList1.item(i).getChildNodes();
        j = 0;
        int k = localNodeList2.getLength();
        if (j >= k)
          break label310;
        try
        {
          localNode = localNodeList2.item(j);
          str1 = localNode.getNodeName();
          if (localNode.getNodeType() != 1)
            break label347;
          String str2 = localNode.getAttributes().getNamedItem("name").getNodeValue();
          if ((this.b) && (!c.a(str2)))
            break label347;
          b localb = new b();
          if (str1.equals("string"))
          {
            if (localNode.getChildNodes() == null)
              break label353;
            if (localNode.getChildNodes().item(0) == null)
            {
              break label353;
              localb.a(str1, str2, (String)localObject);
              localArrayList.add(localb);
            }
          }
        }
        catch (Exception localException2)
        {
          localException2.printStackTrace();
        }
      }
      catch (Exception localException1)
      {
        localException1.printStackTrace();
        localArrayList = null;
        return localArrayList;
      }
      if (str1.equals("string"))
      {
        localObject = localNode.getChildNodes().item(0).getNodeValue();
      }
      else
      {
        String str3 = localNode.getAttributes().getNamedItem("value").getNodeValue();
        localObject = str3;
        continue;
        label310: i++;
        continue;
        label316: i.a(this, ">>>>> the size of message " + localArrayList.size());
        continue;
        label347: j++;
        continue;
        label353: localObject = "";
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.b.a
 * JD-Core Version:    0.6.2
 */