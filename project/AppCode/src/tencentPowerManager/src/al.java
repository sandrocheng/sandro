final class al extends Thread
{
  public final void run()
  {
    an localan;
    String[] arrayOfString;
    try
    {
      if (aj.f() != 1)
        break label130;
      localan = an.a();
      arrayOfString = localan.b();
      String str = an.d();
      if (str != null)
        if (!str.equals("pegasusq"))
          break label57;
    }
    finally
    {
    }
    try
    {
      label57: if (aj.a(arrayOfString, "powersave"))
        localan.a("powersave");
      while (true)
      {
        label72: break;
        if (aj.a(arrayOfString, "userspace"))
        {
          localan.a("userspace");
          int i = an.e();
          if (i > 0)
            localan.a(i);
        }
        else if (aj.a(arrayOfString, "ondemand"))
        {
          localan.a("ondemand");
        }
      }
      label130: return;
    }
    catch (Exception localException)
    {
      break label72;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     al
 * JD-Core Version:    0.6.2
 */