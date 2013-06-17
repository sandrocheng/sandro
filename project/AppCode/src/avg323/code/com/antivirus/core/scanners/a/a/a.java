package com.antivirus.core.scanners.a.a;

import java.util.ArrayList;
import java.util.Iterator;

public class a
{
  public String a;
  public String b;
  public ArrayList c = new ArrayList();
  public ArrayList d = new ArrayList();

  private String a(ArrayList paramArrayList)
  {
    if ((paramArrayList == null) || (paramArrayList.size() == 0));
    StringBuilder localStringBuilder;
    for (String str = ""; ; str = localStringBuilder.toString())
    {
      return str;
      localStringBuilder = new StringBuilder();
      localStringBuilder.append("{");
      Iterator localIterator = paramArrayList.iterator();
      while (localIterator.hasNext())
      {
        localStringBuilder.append((String)localIterator.next());
        localStringBuilder.append(",");
      }
      localStringBuilder.deleteCharAt(-1 + localStringBuilder.length());
      localStringBuilder.append("}");
    }
  }

  public String toString()
  {
    return "ManifestDataItem [name=" + this.a + ", intent_filter=" + this.b + ", action=" + a(this.c) + ", data=" + this.d + "]";
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.core.scanners.a.a.a
 * JD-Core Version:    0.6.2
 */