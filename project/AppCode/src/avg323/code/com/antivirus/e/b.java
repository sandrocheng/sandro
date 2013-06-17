package com.antivirus.e;

import android.content.Context;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import com.antivirus.AVService;
import com.avg.toolkit.e;
import java.io.File;
import java.util.List;

public class b
  implements e
{
  private g a;
  private Handler b;
  private Context c;

  public b(Context paramContext, Handler paramHandler)
  {
    this.b = paramHandler;
    this.c = paramContext;
    if ((paramContext == null) || (paramHandler == null))
    {
      com.avg.toolkit.f.a.a();
      throw new NullPointerException("bad init");
    }
  }

  private void a()
  {
    if (this.a != null)
      this.a.a();
  }

  public static void a(Context paramContext)
  {
    b(paramContext.getFilesDir());
    if ("mounted".equals(Environment.getExternalStorageState()))
      b(new File(Environment.getExternalStorageDirectory(), "/Android/data/" + paramContext.getPackageName() + "/files/"));
  }

  private static void b(File paramFile)
  {
    File[] arrayOfFile = paramFile.listFiles(new c());
    if (arrayOfFile != null)
    {
      int i = arrayOfFile.length;
      for (int j = 0; j < i; j++)
        arrayOfFile[j].delete();
    }
  }

  public void a(Bundle paramBundle)
  {
  }

  public void a(Messenger paramMessenger)
  {
    if (paramMessenger == null)
      com.avg.toolkit.f.a.a();
    if (this.a != null)
      this.a.a(paramMessenger);
    while (true)
    {
      return;
      Message localMessage = Message.obtain();
      localMessage.what = 4;
      try
      {
        paramMessenger.send(localMessage);
      }
      catch (RemoteException localRemoteException)
      {
        com.avg.toolkit.f.a.a(localRemoteException);
      }
    }
  }

  public void a(com.avg.toolkit.e.a parama)
  {
    try
    {
      AVService.a(this.c, 4000, 6001, null);
      return;
    }
    catch (Exception localException)
    {
      while (true)
        com.avg.toolkit.f.a.a(localException);
    }
  }

  public void a(List paramList)
  {
    paramList.add(i.class);
  }

  public void a(boolean paramBoolean)
  {
  }

  public int b()
  {
    return 6000;
  }

  public void b(Bundle paramBundle)
  {
    if ((this.c == null) || (this.b == null));
    while (true)
    {
      return;
      switch (paramBundle.getInt("__SAC2"))
      {
      default:
        break;
      case 1:
        this.b.post(new d(this, paramBundle));
        break;
      case 2:
        a((Messenger)paramBundle.getParcelable("__SAH"));
      }
    }
  }

  public void b(com.avg.toolkit.e.a parama)
  {
  }

  public void onDestroy()
  {
    a();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.e.b
 * JD-Core Version:    0.6.2
 */