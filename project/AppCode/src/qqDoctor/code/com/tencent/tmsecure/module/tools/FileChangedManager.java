package com.tencent.tmsecure.module.tools;

import android.content.Context;
import byq;
import com.tencent.tmsecure.common.BaseManager;

public final class FileChangedManager extends BaseManager
{
  public static final int ACCESS = 1;
  public static final int ALL_EVENTS = 4095;
  public static final int ATTRIB = 4;
  public static final int CLOSE_NOWRITE = 16;
  public static final int CLOSE_WRITE = 8;
  public static final int CREATE = 256;
  public static final int DELETE = 512;
  public static final int DELETE_SELF = 1024;
  public static final int MODIFY = 2;
  public static final int MOVED_FROM = 64;
  public static final int MOVED_TO = 128;
  public static final int MOVE_SELF = 2048;
  public static final int OPEN = 32;
  private byq a;

  public final void addListener(String paramString, int paramInt, IFileChangedListener paramIFileChangedListener)
  {
    if (isExpired());
    while (true)
    {
      return;
      this.a.a(paramString, paramInt, paramIFileChangedListener);
    }
  }

  public final void onCreate(Context paramContext)
  {
    this.a = new byq();
    this.a.onCreate(paramContext);
    setImpl(this.a);
  }

  public final void removeListener(String paramString)
  {
    if (isExpired());
    while (true)
    {
      return;
      this.a.a(paramString);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.tools.FileChangedManager
 * JD-Core Version:    0.6.2
 */