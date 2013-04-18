package com.keniu.security.sync;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Message;
import com.keniu.security.MoSecurityApplication;
import com.keniu.security.sync.c.b;
import com.keniu.security.sync.c.l;
import com.keniu.security.sync.ui.DialogAct;
import com.keniu.security.sync.ui.HelperBaseTitleAct;
import com.keniu.security.sync.ui.LoginAct;
import com.keniu.security.traffic.y;
import java.text.SimpleDateFormat;
import java.util.Date;

public final class j extends Handler
{
  public int[] a = { -11, -11, -11, -11 };
  private HelperBaseTitleAct b;
  private int c = 0;
  private int d = 0;
  private int e = 0;

  public j(HelperBaseTitleAct paramHelperBaseTitleAct)
  {
    this.b = paramHelperBaseTitleAct;
    this.e = 1;
  }

  public j(HelperBaseTitleAct paramHelperBaseTitleAct, byte paramByte)
  {
    this.b = paramHelperBaseTitleAct;
  }

  private void a()
  {
    if ((this.e == 1) && (this.a[2] == 0))
      new l(this, this.b).execute(new String[0]);
    while (true)
    {
      return;
      b();
    }
  }

  private void a(int[] paramArrayOfInt)
  {
    if (paramArrayOfInt[0] == 0)
      new b(this, this.b, this.e).execute(new String[0]);
    while (true)
    {
      return;
      if (paramArrayOfInt[1] == 0)
        new com.keniu.security.sync.c.j(this, this.b, this.e).execute(new String[0]);
      else if ((paramArrayOfInt[2] == 0) && ((paramArrayOfInt[3] == 0) || (paramArrayOfInt[3] == 10005)))
        a();
      else
        this.b.b(18);
    }
  }

  private boolean a(int paramInt1, int paramInt2, boolean[] paramArrayOfBoolean)
  {
    Message localMessage = Message.obtain();
    localMessage.what = paramInt1;
    localMessage.arg1 = paramInt2;
    localMessage.obj = paramArrayOfBoolean;
    return sendMessage(localMessage);
  }

  private void b()
  {
    if ((this.a[0] != 0) && (this.a[1] != 0) && (this.a[2] != 0) && (this.a[3] != 0))
    {
      this.b.b(18);
      return;
    }
    if ((this.a[0] == 0) || (this.a[1] == 0))
    {
      StringBuilder localStringBuilder1 = new StringBuilder();
      String str1 = this.b.getString(2131429537);
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = r.aO.format(new Date());
      StringBuilder localStringBuilder2 = localStringBuilder1.append(String.format(str1, arrayOfObject1)).append(";");
      String str2 = this.b.getString(2131429539);
      Object[] arrayOfObject2 = new Object[2];
      arrayOfObject2[0] = Integer.valueOf(this.c);
      arrayOfObject2[1] = Integer.valueOf(this.d);
      r.a(String.format(str2, arrayOfObject2));
    }
    HelperBaseTitleAct localHelperBaseTitleAct1 = this.b;
    StringBuffer localStringBuffer = new StringBuffer();
    label238: String str6;
    if (this.a[0] == 0)
    {
      HelperBaseTitleAct localHelperBaseTitleAct3 = this.b;
      Object[] arrayOfObject4 = new Object[1];
      arrayOfObject4[0] = Integer.valueOf(this.c);
      localStringBuffer.append(localHelperBaseTitleAct3.getString(2131429560, arrayOfObject4));
      if (this.a[1] != 0)
        break label530;
      if (this.a[0] == -11)
        break label523;
      str6 = "<br>";
      label262: localStringBuffer.append(str6);
      HelperBaseTitleAct localHelperBaseTitleAct2 = this.b;
      Object[] arrayOfObject3 = new Object[1];
      arrayOfObject3[0] = Integer.valueOf(this.d);
      localStringBuffer.append(localHelperBaseTitleAct2.getString(2131429561, arrayOfObject3));
      label308: if ((this.a[2] != 0) && ((this.a[3] != 0) || (this.e != 0)))
        break label619;
      if ((this.a[0] == -11) && (this.a[1] == -11))
        break label612;
      str4 = "<br>";
      localStringBuffer.append(str4);
      localStringBuffer.append(this.b.getString(2131429562));
      y.a();
      this.b.sendBroadcast(new Intent("com.keniu.security.traffic.UPDATE_XUANFUCHUANG"));
    }
    label523: label530: label612: label619: 
    while (this.a[2] == -11)
      while (true)
      {
        localHelperBaseTitleAct1.b(localStringBuffer.toString());
        int[] arrayOfInt1 = this.a;
        int[] arrayOfInt2 = this.a;
        int[] arrayOfInt3 = this.a;
        this.a[3] = -11;
        arrayOfInt3[2] = -11;
        arrayOfInt2[1] = -11;
        arrayOfInt1[0] = -11;
        com.jxphone.mosecurity.a.a.a(this.b, "synco", "4", "");
        break;
        if (this.a[0] == -11)
          break label238;
        localStringBuffer.append("<font color='red'>" + this.b.getString(2131429557) + "</font>");
        break label238;
        str6 = "";
        break label262;
        if (this.a[1] == -11)
          break label308;
        if (this.a[0] != -11);
        for (String str3 = "<br>"; ; str3 = "")
        {
          localStringBuffer.append(str3);
          localStringBuffer.append("<font color='red'>" + this.b.getString(2131429558) + "</font>");
          break;
        }
        String str4 = "";
      }
    if ((this.a[0] != -11) || (this.a[1] != -11));
    for (String str5 = "<br>"; ; str5 = "")
    {
      localStringBuffer.append(str5);
      localStringBuffer.append("<font color='red'>" + this.b.getString(2131429559) + "</font>");
      break;
    }
  }

  private String c()
  {
    StringBuffer localStringBuffer = new StringBuffer();
    String str4;
    if (this.a[0] == 0)
    {
      HelperBaseTitleAct localHelperBaseTitleAct2 = this.b;
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = Integer.valueOf(this.c);
      localStringBuffer.append(localHelperBaseTitleAct2.getString(2131429560, arrayOfObject2));
      if (this.a[1] != 0)
        break label276;
      if (this.a[0] == -11)
        break label269;
      str4 = "<br>";
      label78: localStringBuffer.append(str4);
      HelperBaseTitleAct localHelperBaseTitleAct1 = this.b;
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = Integer.valueOf(this.d);
      localStringBuffer.append(localHelperBaseTitleAct1.getString(2131429561, arrayOfObject1));
      label122: if ((this.a[2] != 0) && ((this.a[3] != 0) || (this.e != 0)))
        break label360;
      if ((this.a[0] == -11) && (this.a[1] == -11))
        break label353;
      str2 = "<br>";
      localStringBuffer.append(str2);
      localStringBuffer.append(this.b.getString(2131429562));
      y.a();
      this.b.sendBroadcast(new Intent("com.keniu.security.traffic.UPDATE_XUANFUCHUANG"));
    }
    label269: label276: label353: label360: 
    while (this.a[2] == -11)
      while (true)
      {
        return localStringBuffer.toString();
        if (this.a[0] == -11)
          break;
        localStringBuffer.append("<font color='red'>" + this.b.getString(2131429557) + "</font>");
        break;
        str4 = "";
        break label78;
        if (this.a[1] == -11)
          break label122;
        if (this.a[0] != -11);
        for (String str1 = "<br>"; ; str1 = "")
        {
          localStringBuffer.append(str1);
          localStringBuffer.append("<font color='red'>" + this.b.getString(2131429558) + "</font>");
          break;
        }
        String str2 = "";
      }
    if ((this.a[0] != -11) || (this.a[1] != -11));
    for (String str3 = "<br>"; ; str3 = "")
    {
      localStringBuffer.append(str3);
      localStringBuffer.append("<font color='red'>" + this.b.getString(2131429559) + "</font>");
      break;
    }
  }

  public final void handleMessage(Message paramMessage)
  {
    if (this.b == null)
      return;
    switch (paramMessage.what)
    {
    default:
    case 16:
    case 17:
    case 123:
    case 10001:
    case 8:
    case 9:
    case 11:
    case 7:
    case 10:
    case 12:
    case 13:
    case 24:
    }
    while (true)
    {
      super.handleMessage(paramMessage);
      break;
      i.a(this, ">>>>> check the verify");
      if (!a.b())
      {
        MoSecurityApplication localMoSecurityApplication = MoSecurityApplication.a();
        Intent localIntent = new Intent(localMoSecurityApplication, DialogAct.class);
        localIntent.setFlags(268435456);
        localIntent.putExtra("dialog_type", 1);
        localMoSecurityApplication.startActivity(localIntent);
        continue;
        ((LoginAct)this.b).a();
        continue;
        this.b.a(paramMessage.what);
        continue;
        this.b.b(paramMessage.what);
        continue;
        this.b.a(String.valueOf(paramMessage.obj));
        continue;
        int[] arrayOfInt = (int[])paramMessage.obj;
        this.a = arrayOfInt;
        if (arrayOfInt[0] == 0)
        {
          new b(this, this.b, this.e).execute(new String[0]);
        }
        else if (arrayOfInt[1] == 0)
        {
          new com.keniu.security.sync.c.j(this, this.b, this.e).execute(new String[0]);
        }
        else if ((arrayOfInt[2] == 0) && ((arrayOfInt[3] == 0) || (arrayOfInt[3] == 10005)))
        {
          a();
        }
        else
        {
          this.b.b(18);
          continue;
          int j = ((Integer)paramMessage.obj).intValue();
          this.c = j;
          if (j < 0)
            this.a[0] = this.c;
          if (this.a[1] == 0)
          {
            new com.keniu.security.sync.c.j(this, this.b, this.e).execute(new String[0]);
          }
          else
          {
            a();
            continue;
            int i = ((Integer)paramMessage.obj).intValue();
            this.d = i;
            if (i < 0)
              this.a[1] = this.d;
            a();
            continue;
            if (((Integer)paramMessage.obj).intValue() == -1)
              this.a[2] = -11;
            b();
          }
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.j
 * JD-Core Version:    0.6.2
 */