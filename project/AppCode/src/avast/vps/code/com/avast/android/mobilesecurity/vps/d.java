package com.avast.android.mobilesecurity.vps;

import java.lang.reflect.Method;

public final class d
{
  private final Class a;
  private final Method b;
  private final Method c;
  private final Method d;
  private final Method e;
  private final Method f;
  private final Method g;

  public d(Class paramClass)
  {
    this.a = paramClass;
    Class localClass1 = Class.forName("[B");
    Class localClass2 = this.a;
    Class[] arrayOfClass1 = new Class[1];
    arrayOfClass1[0] = Integer.TYPE;
    this.b = localClass2.getMethod("initializeStorage", arrayOfClass1);
    Class localClass3 = this.a;
    Class[] arrayOfClass2 = new Class[1];
    arrayOfClass2[0] = Integer.TYPE;
    this.c = localClass3.getMethod("clearStorage", arrayOfClass2);
    Class localClass4 = this.a;
    Class[] arrayOfClass3 = new Class[3];
    arrayOfClass3[0] = Integer.TYPE;
    arrayOfClass3[1] = String.class;
    arrayOfClass3[2] = localClass1;
    this.d = localClass4.getMethod("setByteArray", arrayOfClass3);
    Class localClass5 = this.a;
    Class[] arrayOfClass4 = new Class[2];
    arrayOfClass4[0] = Integer.TYPE;
    arrayOfClass4[1] = String.class;
    this.e = localClass5.getMethod("getByteArray", arrayOfClass4);
    Class localClass6 = this.a;
    Class[] arrayOfClass5 = new Class[3];
    arrayOfClass5[0] = Integer.TYPE;
    arrayOfClass5[1] = String.class;
    arrayOfClass5[2] = Object.class;
    this.f = localClass6.getMethod("setObject", arrayOfClass5);
    Class localClass7 = this.a;
    Class[] arrayOfClass6 = new Class[2];
    arrayOfClass6[0] = Integer.TYPE;
    arrayOfClass6[1] = String.class;
    this.g = localClass7.getMethod("getObject", arrayOfClass6);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.vps.d
 * JD-Core Version:    0.6.2
 */