package com.keniu.security.commumgr.a;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Handler;
import android.os.Message;
import android.widget.Toast;
import com.ijinshan.kpref.t;
import com.keniu.security.util.af;
import com.keniu.security.util.at;
import com.keniu.security.util.aw;
import java.util.ArrayList;
import java.util.Iterator;

public class r extends Handler
{
  private static final String c = r.class.getName() + ".isPopedReportSettingDialog";
  private s a = new l();
  private aw b = new aw();

  private com.keniu.security.util.a a(d paramd, int paramInt)
  {
    com.keniu.security.util.a locala = new com.keniu.security.util.a(paramd, this, paramInt);
    locala.start();
    return locala;
  }

  private static boolean a(String paramString)
  {
    return t.b(e.z).getBoolean(paramString, false);
  }

  private static void b(String paramString)
  {
    SharedPreferences.Editor localEditor = t.b(e.z).edit();
    localEditor.putBoolean(paramString, true);
    localEditor.commit();
  }

  private static boolean b()
  {
    String str = c;
    return t.b(e.z).getBoolean(str, false);
  }

  private static void c()
  {
    String str = c;
    SharedPreferences.Editor localEditor = t.b(e.z).edit();
    localEditor.putBoolean(str, true);
    localEditor.commit();
  }

  public final void a()
  {
    a(new c(), 1);
  }

  public final void a(int paramInt)
  {
    Message localMessage = Message.obtain();
    localMessage.what = paramInt;
    handleMessage(localMessage);
  }

  public void handleMessage(Message paramMessage)
  {
    if (paramMessage.what == 2)
    {
      this.b.a();
      if ((e.w) && (e.x) && (e.y != null))
        e.y.a();
      paramMessage.obj = null;
    }
    while (true)
    {
      return;
      if (paramMessage.what == 3)
      {
        p localp = p.a(paramMessage.getData());
        String str3 = e.z.getText(localp.a.d).toString();
        if (localp.b.size() > 0)
        {
          Iterator localIterator = localp.b.iterator();
          while (localIterator.hasNext())
          {
            String str5 = (String)localIterator.next();
            str3 = str3 + "/" + str5;
          }
        }
        String str4 = str3;
        Toast.makeText(e.z, str4, 1).show();
        e.t = true;
        a(new a(true), 2);
        paramMessage.obj = null;
      }
      else
      {
        if (!e.t)
          break;
        a(new a(true), 2);
        paramMessage.obj = null;
      }
    }
    com.keniu.security.commumgr.e locale = new com.keniu.security.commumgr.e(e.z);
    switch (paramMessage.what)
    {
    default:
      a(new a(true), 2);
      Toast.makeText(e.z, "ERROR-" + paramMessage.what, 1).show();
    case 0:
    case 6:
    case 1:
    case 256:
    case 257:
    case 263:
    case 264:
    case 273:
    case 272:
    case 265:
    case 262:
    case 259:
    case 4:
    case 5:
    case 261:
    }
    while (true)
    {
      paramMessage.obj = null;
      break;
      a(new a(true), 2);
      continue;
      if (!e.a())
      {
        this.a.a();
      }
      else
      {
        a(257);
        continue;
        a(257);
        continue;
        if (!at.c(e.z))
        {
          this.a.b();
        }
        else if (!at.b(e.z))
        {
          e.v = false;
          this.a.c();
        }
        else
        {
          e.v = true;
          if (e.B)
          {
            this.a.f();
          }
          else
          {
            a(265);
            continue;
            locale.a(true);
            this.b.a(e.z);
            a(new b(), 4);
            continue;
            locale.a(false);
            this.b.a(e.z);
            a(new b(), 4);
            continue;
            locale.a(true);
            this.a.e();
            continue;
            locale.a(false);
            this.a.e();
            continue;
            this.b.a(e.z);
            a(new b(), 4);
            continue;
            if (e.B)
            {
              this.a.f();
            }
            else
            {
              a(265);
              continue;
              af.b(e.z);
              a(new a(false), 2);
              continue;
              if (e.v)
              {
                a(5);
              }
              else
              {
                a(new a(true), 2);
                continue;
                String str1 = c;
                if ((!t.b(e.z).getBoolean(str1, false)) && (!locale.c()))
                {
                  String str2 = c;
                  SharedPreferences.Editor localEditor = t.b(e.z).edit();
                  localEditor.putBoolean(str2, true);
                  localEditor.commit();
                  this.a.d();
                }
                else
                {
                  a(new a(true), 2);
                  continue;
                  locale.d();
                  a(new a(true), 2);
                }
              }
            }
          }
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.commumgr.a.r
 * JD-Core Version:    0.6.2
 */