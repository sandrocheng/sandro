package com.keniu.security.commumgr.a;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.Iterator;

public final class p extends Exception
{
  private static final long c = -4827001166358356173L;
  private static final String d = "code";
  private static final String e = "msgs";
  public final q a;
  public final ArrayList b;

  public p(q paramq)
  {
    this.a = paramq;
    this.b = new ArrayList();
  }

  public p(q paramq, String[] paramArrayOfString)
  {
    this.a = paramq;
    this.b = new ArrayList();
    int i = paramArrayOfString.length;
    for (int j = 0; j < i; j++)
    {
      String str = paramArrayOfString[j];
      this.b.add(str);
    }
  }

  public static p a(Bundle paramBundle)
  {
    return new p(q.a(paramBundle.getInt("code")), paramBundle.getStringArray("msgs"));
  }

  public final Bundle a()
  {
    Bundle localBundle = new Bundle();
    localBundle.putInt("code", this.a.d);
    int i = this.b.size();
    String[] arrayOfString = new String[i];
    for (int j = 0; j < i; j++)
      arrayOfString[j] = ((String)this.b.get(j));
    localBundle.putStringArray("msgs", arrayOfString);
    return localBundle;
  }

  public final String toString()
  {
    String str1 = this.a.toString();
    Iterator localIterator = this.b.iterator();
    while (localIterator.hasNext())
    {
      String str2 = (String)localIterator.next();
      str1 = str1 + "/" + str2.toString();
    }
    return str1;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.commumgr.a.p
 * JD-Core Version:    0.6.2
 */