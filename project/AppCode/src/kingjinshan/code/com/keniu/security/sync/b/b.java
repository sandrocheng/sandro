package com.keniu.security.sync.b;

import org.json.JSONException;
import org.json.JSONObject;

public final class b
{
  private static final long a = -8805312923262212954L;
  private String b;
  private String c;
  private String d;

  public static b a(JSONObject paramJSONObject)
  {
    b localb = new b();
    try
    {
      if ((paramJSONObject.getString("type") != null) && (paramJSONObject.getString("key") != null) && (paramJSONObject.getString("value") != null))
      {
        localb.b = paramJSONObject.getString("type");
        localb.c = paramJSONObject.getString("key");
        localb.d = paramJSONObject.getString("value");
      }
    }
    catch (JSONException localJSONException)
    {
      localb = null;
    }
    localb = null;
    return localb;
  }

  private void a(String paramString)
  {
    this.b = paramString;
  }

  private void b(String paramString)
  {
    this.c = paramString;
  }

  private void c(String paramString)
  {
    this.d = paramString;
  }

  private b d()
  {
    b localb = new b();
    localb.b = this.b;
    localb.c = this.c;
    localb.d = this.d;
    return localb;
  }

  private JSONObject e()
  {
    return new JSONObject(toString());
  }

  public final String a()
  {
    return this.b;
  }

  public final void a(String paramString1, String paramString2, String paramString3)
  {
    this.b = paramString1;
    this.c = paramString2;
    this.d = paramString3;
  }

  public final String b()
  {
    return this.c;
  }

  public final String c()
  {
    return this.d;
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool;
    if (this == paramObject)
      bool = true;
    while (true)
    {
      return bool;
      if (paramObject == null)
      {
        bool = false;
      }
      else if (getClass() != paramObject.getClass())
      {
        bool = false;
      }
      else
      {
        b localb = (b)paramObject;
        if (this.b == null)
        {
          if (localb.b != null)
            bool = false;
        }
        else if (!this.b.equals(localb.b))
          bool = false;
        else if (this.c == null)
        {
          if (localb.c != null)
            bool = false;
        }
        else if (!this.c.equals(localb.c))
          bool = false;
        else if (this.d == null)
        {
          if (localb.d != null)
            bool = false;
        }
        else if (!this.d.equals(localb.d))
          bool = false;
        else
          bool = true;
      }
    }
  }

  public final int hashCode()
  {
    int i;
    int k;
    label26: int m;
    if (this.b == null)
    {
      i = 0;
      int j = 31 * (i + 31);
      if (this.c != null)
        break label61;
      k = 0;
      m = 31 * (j + k);
      if (this.d != null)
        break label72;
    }
    label61: label72: for (int n = 0; ; n = this.d.hashCode())
    {
      return m + n;
      i = this.b.hashCode();
      break;
      k = this.c.hashCode();
      break label26;
    }
  }

  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("{ type:");
    localStringBuilder.append(this.b);
    localStringBuilder.append(", key:");
    localStringBuilder.append(this.c);
    localStringBuilder.append(", value: ");
    localStringBuilder.append(this.d);
    localStringBuilder.append(" }");
    return localStringBuilder.toString();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.b.b
 * JD-Core Version:    0.6.2
 */