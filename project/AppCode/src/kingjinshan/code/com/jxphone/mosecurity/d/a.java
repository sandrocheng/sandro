package com.jxphone.mosecurity.d;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.ijinshan.kinghelper.firewall.a.e;
import java.io.IOException;
import java.util.WeakHashMap;

public final class a
{
  private static Context a;
  private final WeakHashMap b = new WeakHashMap();
  private final WeakHashMap c = new WeakHashMap();
  private com.keniu.security.mydb.opt.i d;

  private a(Context paramContext, byte paramByte)
  {
    this.d = new com.keniu.security.mydb.opt.i(paramContext, paramContext.getString(2131429013), paramContext.getString(2131429014));
  }

  public static a a(Context paramContext)
  {
    a = paramContext.getApplicationContext();
    return c.a();
  }

  private static String a(int paramInt)
  {
    String str;
    switch (paramInt)
    {
    default:
      str = "";
    case 0:
    case 1:
    case 2:
    }
    while (true)
    {
      return str;
      str = a.getString(2131429025);
      continue;
      str = a.getString(2131429026);
      continue;
      str = a.getString(2131429027);
    }
  }

  public static String c(String paramString1, String paramString2)
  {
    e.a(a);
    String str = e.d(com.ijinshan.kinghelper.a.i.a(paramString1));
    if (TextUtils.isEmpty(str))
      str = paramString2;
    return str;
  }

  public final String a(String paramString)
  {
    Object localObject1 = (String)this.c.get(paramString);
    if (localObject1 != null);
    while (true)
    {
      return localObject1;
      try
      {
        localObject1 = c(paramString, null);
        if ((localObject1 == null) || (((String)localObject1).equals(null)))
          localObject1 = this.d.a(paramString, null);
        this.c.put(paramString, localObject1);
      }
      catch (IOException localIOException)
      {
        Object localObject4 = localObject1;
        Log.e(getClass().getSimpleName(), "", localIOException);
        localObject1 = localObject4;
      }
      catch (NullPointerException localNullPointerException)
      {
        Object localObject3 = localObject1;
        Log.e(getClass().getSimpleName(), "", localNullPointerException);
        localObject1 = localObject3;
      }
      catch (NumberFormatException localNumberFormatException)
      {
        Object localObject2 = localObject1;
        Log.e(getClass().getSimpleName(), "", localNumberFormatException);
        localObject1 = localObject2;
      }
    }
  }

  public final String a(String paramString1, String paramString2)
  {
    Object localObject1 = (String)this.b.get(paramString1);
    if (localObject1 != null);
    Object localObject5;
    while (true)
    {
      return localObject1;
      try
      {
        localObject1 = c(paramString1, paramString2);
        if ((localObject1 == null) || (((String)localObject1).equals(paramString2)))
        {
          localObject1 = this.d.a(paramString1, paramString2);
          if ((paramString1.length() < 7) || (paramString1.length() > 11));
        }
        switch (Integer.parseInt(paramString1.substring(0, 3)))
        {
        case 140:
          while (true)
          {
            if ((localObject1 != null) && (!((String)localObject1).equals(paramString2)))
              localObject1 = ((String)localObject1).concat((String)localObject5);
            this.b.put(paramString1, localObject1);
            if (!TextUtils.isEmpty((CharSequence)localObject1))
              break;
            localObject1 = paramString2;
            break;
            localObject5 = a.getString(2131429025);
            continue;
            localObject5 = a.getString(2131429026);
            continue;
            String str = a.getString(2131429027);
            localObject5 = str;
          }
        case 141:
        case 142:
        case 143:
        case 144:
        case 146:
        case 148:
        case 149:
        case 154:
        case 160:
        case 161:
        case 162:
        case 163:
        case 164:
        case 165:
        case 166:
        case 167:
        case 168:
        case 169:
        case 170:
        case 171:
        case 172:
        case 173:
        case 174:
        case 175:
        case 176:
        case 177:
        case 178:
        case 179:
        case 181:
        case 184:
        default:
        case 134:
        case 135:
        case 136:
        case 137:
        case 138:
        case 139:
        case 147:
        case 150:
        case 151:
        case 152:
        case 157:
        case 158:
        case 159:
        case 182:
        case 183:
        case 187:
        case 188:
        case 130:
        case 131:
        case 132:
        case 145:
        case 155:
        case 156:
        case 185:
        case 186:
        case 133:
        case 153:
        case 180:
        case 189:
        }
      }
      catch (IOException localIOException)
      {
        Object localObject4 = localObject1;
        Log.e(getClass().getSimpleName(), "", localIOException);
        localObject1 = localObject4;
      }
      catch (NullPointerException localNullPointerException)
      {
        Object localObject3 = localObject1;
        Log.e(getClass().getSimpleName(), "", localNullPointerException);
        localObject1 = localObject3;
      }
      catch (NumberFormatException localNumberFormatException)
      {
        Object localObject2 = localObject1;
        Log.e(getClass().getSimpleName(), "", localNumberFormatException);
        localObject1 = localObject2;
      }
    }
    int i = -1;
    while (true)
    {
      switch (i)
      {
      case 0:
      case 1:
      case 2:
      }
      localObject5 = "";
      break;
      i = 0;
      continue;
      i = 1;
      continue;
      i = 2;
    }
  }

  public final String b(String paramString1, String paramString2)
  {
    Object localObject1 = (String)this.c.get(paramString1);
    if (localObject1 != null);
    while (true)
    {
      return localObject1;
      try
      {
        localObject1 = this.d.a(paramString1, paramString2);
        this.c.put(paramString1, localObject1);
      }
      catch (IOException localIOException)
      {
        Object localObject4 = localObject1;
        Log.e(getClass().getSimpleName(), "", localIOException);
        localObject1 = localObject4;
      }
      catch (NullPointerException localNullPointerException)
      {
        Object localObject3 = localObject1;
        Log.e(getClass().getSimpleName(), "", localNullPointerException);
        localObject1 = localObject3;
      }
      catch (NumberFormatException localNumberFormatException)
      {
        Object localObject2 = localObject1;
        Log.e(getClass().getSimpleName(), "", localNumberFormatException);
        localObject1 = localObject2;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.d.a
 * JD-Core Version:    0.6.2
 */