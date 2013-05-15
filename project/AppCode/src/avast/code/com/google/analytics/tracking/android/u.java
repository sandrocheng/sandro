package com.google.analytics.tracking.android;

public class u
  implements Thread.UncaughtExceptionHandler
{
  private final Thread.UncaughtExceptionHandler a;
  private final bo b;
  private final bk c;
  private t d;

  public u(bo parambo, bk parambk, Thread.UncaughtExceptionHandler paramUncaughtExceptionHandler)
  {
    if (parambo == null)
      throw new NullPointerException("tracker cannot be null");
    if (parambk == null)
      throw new NullPointerException("serviceManager cannot be null");
    this.a = paramUncaughtExceptionHandler;
    this.b = parambo;
    this.c = parambk;
    StringBuilder localStringBuilder = new StringBuilder().append("ExceptionReporter created, original handler is ");
    if (paramUncaughtExceptionHandler == null);
    for (String str = "null"; ; str = paramUncaughtExceptionHandler.getClass().getName())
    {
      ay.e(str);
      return;
    }
  }

  public void uncaughtException(Thread paramThread, Throwable paramThrowable)
  {
    String str2;
    if (this.d == null)
    {
      str2 = paramThrowable.getMessage();
      ay.e("Tracking Exception: " + str2);
      this.b.a(str2, true);
      this.c.c();
      if (this.a != null)
      {
        ay.e("Passing exception to original handler.");
        this.a.uncaughtException(paramThread, paramThrowable);
      }
      return;
    }
    if (paramThread != null);
    for (String str1 = paramThread.getName(); ; str1 = null)
    {
      str2 = this.d.a(str1, paramThrowable);
      break;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.analytics.tracking.android.u
 * JD-Core Version:    0.6.2
 */