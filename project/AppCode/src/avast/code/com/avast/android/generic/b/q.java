package com.avast.android.generic.b;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.text.TextUtils;
import com.avast.android.generic.ac;
import com.avast.android.generic.util.t;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;

public class q
{
  private static HashMap a = null;

  private static void a(Context paramContext)
  {
    while (true)
    {
      XmlResourceParser localXmlResourceParser;
      LinkedList localLinkedList;
      int i;
      int j;
      int k;
      try
      {
        localXmlResourceParser = paramContext.getResources().getXml(ac.a);
        localLinkedList = null;
        a = new HashMap();
        i = -1;
        j = 0;
        try
        {
          localXmlResourceParser.next();
          k = localXmlResourceParser.getEventType();
          if ((k == 2) && ("tag".equals(localXmlResourceParser.getName())))
          {
            i = localXmlResourceParser.getIdAttributeResourceValue(-1);
            if (i > -1)
            {
              localLinkedList = new LinkedList();
              j = 1;
            }
            if (k != 1)
              continue;
            return;
          }
        }
        catch (Exception localException)
        {
          throw new Exception("Invalid tag resource XML");
        }
      }
      finally
      {
      }
      if ((j != 0) && (k == 4))
      {
        localLinkedList.add(localXmlResourceParser.getText());
      }
      else if ((j != 0) && (k == 3) && ("tag".equals(localXmlResourceParser.getName())))
      {
        a.put(Integer.valueOf(i), localLinkedList);
        j = 0;
      }
    }
  }

  public static boolean a(Context paramContext, int paramInt, String paramString)
  {
    boolean bool;
    if ((TextUtils.isEmpty(paramString)) || (paramInt <= 0))
      bool = false;
    while (true)
    {
      return bool;
      try
      {
        if (a == null)
          a(paramContext);
        LinkedList localLinkedList = (LinkedList)a.get(Integer.valueOf(paramInt));
        if (localLinkedList == null)
          break label100;
        Iterator localIterator = localLinkedList.iterator();
        do
          if (!localIterator.hasNext())
            break;
        while (!((String)localIterator.next()).equalsIgnoreCase(paramString));
        bool = true;
      }
      catch (Exception localException)
      {
        t.a("AvastGeneric", "Error in initializing tag collection", localException);
        bool = false;
      }
      continue;
      label100: bool = false;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.b.q
 * JD-Core Version:    0.6.2
 */