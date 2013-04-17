package QQPIM;

public final class emBindCmds
{
  public static final emBindCmds EM_BINDCMD_Activate;
  public static final emBindCmds EM_BINDCMD_BindAndActivate;
  public static final emBindCmds EM_BINDCMD_MIN;
  public static final emBindCmds EM_BINDCMD_Shutdown;
  public static final emBindCmds EM_BINDCMD_Unbind;
  public static final int _EM_BINDCMD_Activate = 2;
  public static final int _EM_BINDCMD_BindAndActivate = 1;
  public static final int _EM_BINDCMD_MIN = 0;
  public static final int _EM_BINDCMD_Shutdown = 3;
  public static final int _EM_BINDCMD_Unbind = 4;
  private static emBindCmds[] __values;
  private String __T = new String();
  private int __value;

  static
  {
    if (!emBindCmds.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      __values = new emBindCmds[5];
      EM_BINDCMD_MIN = new emBindCmds(0, 0, "EM_BINDCMD_MIN");
      EM_BINDCMD_BindAndActivate = new emBindCmds(1, 1, "EM_BINDCMD_BindAndActivate");
      EM_BINDCMD_Activate = new emBindCmds(2, 2, "EM_BINDCMD_Activate");
      EM_BINDCMD_Shutdown = new emBindCmds(3, 3, "EM_BINDCMD_Shutdown");
      EM_BINDCMD_Unbind = new emBindCmds(4, 4, "EM_BINDCMD_Unbind");
      return;
    }
  }

  private emBindCmds(int paramInt1, int paramInt2, String paramString)
  {
    this.__T = paramString;
    this.__value = paramInt2;
    __values[paramInt1] = this;
  }

  public static emBindCmds convert(int paramInt)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (__values[i].value() != paramInt);
    for (emBindCmds localemBindCmds = __values[i]; ; localemBindCmds = null)
    {
      return localemBindCmds;
      i++;
      break;
    }
  }

  public static emBindCmds convert(String paramString)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (!__values[i].toString().equals(paramString));
    for (emBindCmds localemBindCmds = __values[i]; ; localemBindCmds = null)
    {
      return localemBindCmds;
      i++;
      break;
    }
  }

  public final String toString()
  {
    return this.__T;
  }

  public final int value()
  {
    return this.__value;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.emBindCmds
 * JD-Core Version:    0.6.2
 */