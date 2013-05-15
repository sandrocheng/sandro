package com.avast.android.mobilesecurity.app.fileshield;

import android.os.FileObserver;
import android.os.Handler;
import android.os.Message;
import java.io.File;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.Semaphore;

public class d extends FileObserver
{
  private static final Semaphore a = new Semaphore(0);
  private String b;
  private final Handler c;
  private String d = null;

  public d(Handler paramHandler, String paramString, int paramInt)
  {
    super(paramString, paramInt | 0x5C0);
    this.b = paramString;
    this.c = paramHandler;
  }

  public static void a()
  {
    a.release();
  }

  public void a(String paramString)
  {
    this.b = paramString;
  }

  public void onEvent(int paramInt, String paramString)
  {
    int i = -1;
    if ((paramInt & 0x1) != 0)
      i = 1;
    if ((paramInt & 0x8) != 0)
      i = 8;
    if ((paramInt & 0x100) != 0)
      i = 256;
    if ((paramInt & 0x400) != 0)
      i = 1024;
    if ((paramInt & 0x40) != 0)
      i = 64;
    if ((paramInt & 0x80) != 0)
      i = 128;
    File localFile = new File(this.b + "/" + paramString);
    switch (i)
    {
    default:
    case 1:
    case 8:
    case 256:
    case 1024:
    case 64:
    case 128:
    }
    while (true)
    {
      return;
      if (!localFile.isFile())
        continue;
      Message.obtain(this.c, 1, this.b + "/" + paramString).sendToTarget();
      continue;
      if (!localFile.isFile())
        continue;
      Message.obtain(this.c, 0, this.b + "/" + paramString).sendToTarget();
      continue;
      if (!localFile.isDirectory())
        continue;
      Message.obtain(this.c, 2, this.b + "/" + paramString).sendToTarget();
      continue;
      Message.obtain(this.c, 3, this.b).sendToTarget();
      continue;
      this.d = (this.b + "/" + paramString);
      continue;
      if (!localFile.isDirectory())
      {
        this.d = null;
        continue;
      }
      LinkedList localLinkedList = new LinkedList();
      localLinkedList.add(this.d);
      localLinkedList.add(this.b + "/" + paramString);
      Message.obtain(this.c, 4, localLinkedList).sendToTarget();
      try
      {
        a.acquire();
        label446: this.d = null;
      }
      catch (InterruptedException localInterruptedException)
      {
        break label446;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.fileshield.d
 * JD-Core Version:    0.6.2
 */