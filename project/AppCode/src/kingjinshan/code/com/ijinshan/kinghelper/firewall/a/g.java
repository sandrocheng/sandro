package com.ijinshan.kinghelper.firewall.a;

import android.database.Cursor;

public final class g
  implements h
{
  private static final long K = 1L;
  static final String[] j;
  static final String[] k = arrayOfString2;
  public boolean a = false;
  public int b = 0;
  public int c;
  public int d;
  public int e;
  public String f;
  public String g;
  public String h;
  public int i;

  static
  {
    String[] arrayOfString1 = new String[2];
    arrayOfString1[0] = String.valueOf(1);
    arrayOfString1[1] = String.valueOf(2);
    j = arrayOfString1;
    String[] arrayOfString2 = new String[2];
    arrayOfString2[0] = String.valueOf(1);
    arrayOfString2[1] = String.valueOf(3);
  }

  public static g a(Cursor paramCursor)
  {
    g localg = new g();
    int m = paramCursor.getColumnIndex("_id");
    int n;
    int i2;
    label77: int i4;
    label108: String str1;
    label139: String str2;
    label170: int i7;
    if (m >= 0)
    {
      n = paramCursor.getInt(m);
      localg.i = n;
      localg.c = paramCursor.getInt(paramCursor.getColumnIndex("rule_type"));
      int i1 = paramCursor.getColumnIndex("apply_mode");
      if (i1 < 0)
        break label251;
      i2 = paramCursor.getInt(i1);
      localg.d = i2;
      int i3 = paramCursor.getColumnIndex("match_mode");
      if (i3 < 0)
        break label257;
      i4 = paramCursor.getInt(i3);
      localg.e = i4;
      int i5 = paramCursor.getColumnIndex("matcher");
      if (i5 < 0)
        break label263;
      str1 = paramCursor.getString(i5);
      localg.f = str1;
      int i6 = paramCursor.getColumnIndex("owner");
      if (i6 < 0)
        break label270;
      str2 = paramCursor.getString(i6);
      localg.g = str2;
      i7 = paramCursor.getColumnIndex("desc");
      if (i7 < 0)
        break label277;
    }
    label257: label263: label270: label277: for (String str3 = paramCursor.getString(i7); ; str3 = "")
    {
      localg.h = str3;
      if ((localg.g == null) || (localg.g.equals("")) || (localg.g.equals("???")))
        localg.g = "";
      return localg;
      n = 0;
      break;
      label251: i2 = 1;
      break label77;
      i4 = 1;
      break label108;
      str1 = "";
      break label139;
      str2 = "";
      break label170;
    }
  }

  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("FirewallRule[");
    localStringBuilder.append("ruleType:").append(this.c).append(",");
    localStringBuilder.append("applyMode:").append(this.d).append(",");
    localStringBuilder.append("matchMode:").append(this.e).append(",");
    localStringBuilder.append("matcher:").append(this.f).append(",");
    localStringBuilder.append("owner:").append(this.g).append(",");
    localStringBuilder.append("description:").append(this.h);
    localStringBuilder.append("]");
    return localStringBuilder.toString();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.a.g
 * JD-Core Version:    0.6.2
 */