package com.avast.android.generic.service;

import android.app.Notification;
import android.app.Service;

public abstract class ForegroundService extends Service
{
  private static final Class[] a;
  private static final Class[] b;
  private static final Class[] c = arrayOfClass3;
  private Object[] d = new Object[1];
  private Object[] e = new Object[2];
  private Object[] f = new Object[1];
  private int g = 0;

  static
  {
    Class[] arrayOfClass1 = new Class[1];
    arrayOfClass1[0] = Boolean.TYPE;
    a = arrayOfClass1;
    Class[] arrayOfClass2 = new Class[2];
    arrayOfClass2[0] = Integer.TYPE;
    arrayOfClass2[1] = Notification.class;
    b = arrayOfClass2;
    Class[] arrayOfClass3 = new Class[1];
    arrayOfClass3[0] = Boolean.TYPE;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.service.ForegroundService
 * JD-Core Version:    0.6.2
 */