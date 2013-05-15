package com.avast.android.mobilesecurity.app.scanner;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.database.Cursor;
import android.net.Uri;
import android.os.Handler;
import android.text.TextUtils;
import com.avast.android.generic.ad;
import com.avast.android.generic.internet.c.a.av;
import com.avast.android.mobilesecurity.app.account.e;
import com.avast.android.mobilesecurity.app.globalactivitylog.y;
import com.avast.android.mobilesecurity.app.locking.core.App;
import com.avast.android.mobilesecurity.app.widget.WidgetControlProvider;
import com.avast.android.mobilesecurity.engine.s;
import com.avast.android.mobilesecurity.engine.x;
import com.avast.android.mobilesecurity.t;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class o
{
  private Context a;
  private t b;
  private Handler c;

  public o(Context paramContext, Handler paramHandler)
  {
    this.a = paramContext.getApplicationContext();
    this.b = ((t)ad.a(this.a, t.class));
    this.c = paramHandler;
  }

  private void a(ApplicationInfo paramApplicationInfo)
  {
    ContentResolver localContentResolver1 = this.a.getContentResolver();
    Uri localUri1 = com.avast.android.mobilesecurity.q.a();
    String[] arrayOfString1 = { "result" };
    String[] arrayOfString2 = new String[1];
    arrayOfString2[0] = paramApplicationInfo.packageName;
    Cursor localCursor = localContentResolver1.query(localUri1, arrayOfString1, "packageName = ?", arrayOfString2, null);
    if ((localCursor != null) && (localCursor.moveToFirst()))
    {
      if (x.a(localCursor.getInt(localCursor.getColumnIndex("result"))) != x.l)
        break label151;
      this.b.ao();
    }
    while (true)
    {
      ContentResolver localContentResolver2 = this.a.getContentResolver();
      Uri localUri2 = com.avast.android.mobilesecurity.q.a();
      String[] arrayOfString3 = new String[1];
      arrayOfString3[0] = paramApplicationInfo.packageName;
      localContentResolver2.delete(localUri2, "packageName = ?", arrayOfString3);
      if (localCursor != null)
        localCursor.close();
      return;
      label151: this.b.aq();
    }
  }

  private void a(x paramx, boolean paramBoolean)
  {
    if (paramBoolean)
      if (paramx == x.l)
        this.b.an();
    while (true)
    {
      return;
      this.b.ap();
      continue;
      if (paramx == x.l)
        this.b.c(1 + this.b.as());
      else
        this.b.e(1 + this.b.au());
    }
  }

  private void a(String paramString1, String paramString2, s params, int paramInt)
  {
    int i = 1;
    int j;
    int k;
    label24: int m;
    label38: ContentValues localContentValues;
    x localx2;
    if (paramInt == i)
    {
      j = i;
      if (paramInt != 2)
        break label225;
      k = i;
      if ((j == 0) && (k == 0))
        break label231;
      m = i;
      if (params.d == null)
        params.d = com.avast.android.mobilesecurity.engine.u.a;
      if (params.c == null)
        params.c = com.avast.android.mobilesecurity.engine.v.a;
      localContentValues = new ContentValues();
      localContentValues.put("name", paramString2);
      localContentValues.put("packageName", paramString1);
      localContentValues.put("infection", params.b);
      localContentValues.put("result", Integer.valueOf(params.a.a()));
      localContentValues.put("detection_category", Integer.valueOf(params.d.a()));
      localContentValues.put("detection_type", Integer.valueOf(params.c.a()));
      if (params.a == x.l)
        this.b.l(i);
      if (m == 0)
        break label243;
      if (this.a.getContentResolver().update(com.avast.android.mobilesecurity.q.b(), localContentValues, null, null) < 0)
      {
        localx2 = params.a;
        if (TextUtils.isEmpty(paramString1))
          break label237;
      }
    }
    while (true)
    {
      a(localx2, i);
      return;
      j = 0;
      break;
      label225: k = 0;
      break label24;
      label231: m = 0;
      break label38;
      label237: i = 0;
    }
    label243: this.a.getContentResolver().insert(com.avast.android.mobilesecurity.q.a(), localContentValues);
    x localx1 = params.a;
    if (!TextUtils.isEmpty(paramString1));
    while (true)
    {
      a(localx1, i);
      break;
      i = 0;
    }
  }

  /**
   * mark jump to VirusShieldActivity
   * @param paramList
   * @param paramUri
   * @param paramInt
   * @param paramApp
   */
  private void a(List paramList, Uri paramUri, int paramInt, App paramApp)
  {
    ArrayList localArrayList1;
    ArrayList localArrayList2;
    ArrayList localArrayList3;
    ao localao;
    if (((s)paramList.get(0)).a == x.l)
    {
      localArrayList1 = new ArrayList();
      localArrayList2 = new ArrayList();
      localArrayList3 = new ArrayList();
      Iterator localIterator = paramList.iterator();
      while (localIterator.hasNext())
      {
        s locals = (s)localIterator.next();
        localArrayList1.add(locals.a);
        localArrayList2.add(locals.b);
        localArrayList3.add(locals.d);
      }
      if ((paramInt & 0x2) == 0)
        break label192;
      localao = ao.a;
    }
    while (true)
    {
      VirusShieldActivity.call(this.a, paramUri, paramApp, localArrayList1, localArrayList3, localArrayList2, localao, 268435456);
      a(this.b.ar() + this.b.as() + this.b.at() + this.b.au());
      WidgetControlProvider.a(this.a);
      return;
      label192: int i = paramInt & 0x8;
      localao = null;
      if (i != 0)
        localao = ao.b;
    }
  }

  private void b(List paramList, ApplicationInfo paramApplicationInfo, String paramString, App paramApp, int paramInt)
  {
    s locals = (s)paramList.get(0);
    com.avast.android.mobilesecurity.app.globalactivitylog.u localu = com.avast.android.mobilesecurity.app.globalactivitylog.u.a(this.a);
    y localy;
    String str;
    if ((paramInt & 0x1) != 0)
    {
      localy = y.a;
      str = paramApplicationInfo.packageName;
    }
    while (true)
    {
      if (localy != null)
        localu.a(localy, null, paramString, str, null, Long.valueOf(locals.a.a()), null);
      if (locals.a.equals(x.l))
        localu.a(y.j, null, paramString, str, Long.valueOf(1L), null, null);
      return;
      if (((paramInt & 0x2) != 0) && (!locals.e))
      {
        localy = y.b;
        str = paramApplicationInfo.packageName;
      }
      else
      {
        localy = null;
        str = null;
      }
    }
  }

  public void a(int paramInt)
  {
    if (paramInt > 0)
      this.c.post(new p(this, paramInt));
    while (true)
    {
      return;
      this.c.post(new q(this));
    }
  }

  /**
   * mark call VirusShieldActivity
   * @param paramList
   * @param paramApplicationInfo
   * @param paramString
   * @param paramApp
   * @param paramInt
   */
  public void a(List paramList, ApplicationInfo paramApplicationInfo, String paramString, App paramApp, int paramInt)
  {
    if ((paramList == null) || (paramList.isEmpty()));
    label389: 
    while (true)
    {
      return;
      int i;
      label24: int j;
      label34: int k;
      label45: int m;
      label58: e locale;
      if ((paramInt & 0x1) != 0)
      {
        i = 1;
        if ((paramInt & 0x2) == 0)
          break label153;
        j = 1;
        if ((paramInt & 0x8) == 0)
          break label159;
        k = 1;
        if ((i == 0) && (j == 0))
          break label165;
        m = 1;
        locale = new e(this.a);
        s locals1 = (s)paramList.get(0);
        if ((locals1.a != x.j) && (locals1.a != x.d))
          break label171;
        if (m != 0)
        {
          a(paramApplicationInfo);
          locale.a(0, 1, av.a);
        }
      }
      while (true)
      {
        if ((paramInt & 0x10) != 0)
          break label389;
        b(paramList, paramApplicationInfo, paramString, paramApp, paramInt);
        break;
        i = 0;
        break label24;
        label153: j = 0;
        break label34;
        label159: k = 0;
        break label45;
        label165: m = 0;
        break label58;
        label171: String str1;
        if (paramApplicationInfo == null)
        {
          str1 = null;
          int n;
          if ((paramInt & 0x4) != 4)
          {
            n = 0;
            if (k == 0);
          }
          else
          {
            n = 1;
          }
          if (n == 0)
            break label299;
        }
        Uri localUri;
        label299: for (String str2 = "file://" + paramString; ; str2 = "package://" + paramApplicationInfo.packageName)
        {
          localUri = Uri.parse(str2);
          Iterator localIterator = paramList.iterator();
          while (localIterator.hasNext())
          {
            s locals2 = (s)localIterator.next();
            a(str1, paramString, locals2, paramInt);
            locale.a(localUri, locals2.b, av.a);
          }
          str1 = paramApplicationInfo.packageName;
          break;
        }
        if ((m != 0) || (k != 0))
          locale.a(1, 1, av.a);
        if (((m != 0) && (!TextUtils.isEmpty(str1))) || (k != 0))
        {
          if (k != 0)
            com.avast.android.mobilesecurity.app.fileshield.v.a().b(paramString);
          a(paramList, localUri, paramInt, paramApp);
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.scanner.o
 * JD-Core Version:    0.6.2
 */