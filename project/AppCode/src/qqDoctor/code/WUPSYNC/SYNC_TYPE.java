package WUPSYNC;

public final class SYNC_TYPE
{
  public static final SYNC_TYPE ST_BACKUP_FAST;
  public static final SYNC_TYPE ST_BACKUP_MERGE;
  public static final SYNC_TYPE ST_BACKUP_OVER;
  public static final SYNC_TYPE ST_RESTORE_FAST;
  public static final SYNC_TYPE ST_RESTORE_MERGE;
  public static final SYNC_TYPE ST_RESTORE_OVER;
  public static final SYNC_TYPE ST_SYNC_ALL;
  public static final SYNC_TYPE ST_SYNC_FAST;
  public static final int _ST_BACKUP_FAST = 202;
  public static final int _ST_BACKUP_MERGE = 203;
  public static final int _ST_BACKUP_OVER = 215;
  public static final int _ST_RESTORE_FAST = 204;
  public static final int _ST_RESTORE_MERGE = 213;
  public static final int _ST_RESTORE_OVER = 217;
  public static final int _ST_SYNC_ALL = 201;
  public static final int _ST_SYNC_FAST = 200;
  private static SYNC_TYPE[] __values;
  private String __T = new String();
  private int __value;

  static
  {
    if (!SYNC_TYPE.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      __values = new SYNC_TYPE[8];
      ST_SYNC_FAST = new SYNC_TYPE(0, 200, "ST_SYNC_FAST");
      ST_SYNC_ALL = new SYNC_TYPE(1, 201, "ST_SYNC_ALL");
      ST_BACKUP_FAST = new SYNC_TYPE(2, 202, "ST_BACKUP_FAST");
      ST_BACKUP_MERGE = new SYNC_TYPE(3, 203, "ST_BACKUP_MERGE");
      ST_BACKUP_OVER = new SYNC_TYPE(4, 215, "ST_BACKUP_OVER");
      ST_RESTORE_FAST = new SYNC_TYPE(5, 204, "ST_RESTORE_FAST");
      ST_RESTORE_MERGE = new SYNC_TYPE(6, 213, "ST_RESTORE_MERGE");
      ST_RESTORE_OVER = new SYNC_TYPE(7, 217, "ST_RESTORE_OVER");
      return;
    }
  }

  private SYNC_TYPE(int paramInt1, int paramInt2, String paramString)
  {
    this.__T = paramString;
    this.__value = paramInt2;
    __values[paramInt1] = this;
  }

  public static SYNC_TYPE convert(int paramInt)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (__values[i].value() != paramInt);
    for (SYNC_TYPE localSYNC_TYPE = __values[i]; ; localSYNC_TYPE = null)
    {
      return localSYNC_TYPE;
      i++;
      break;
    }
  }

  public static SYNC_TYPE convert(String paramString)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (!__values[i].toString().equals(paramString));
    for (SYNC_TYPE localSYNC_TYPE = __values[i]; ; localSYNC_TYPE = null)
    {
      return localSYNC_TYPE;
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
 * Qualified Name:     WUPSYNC.SYNC_TYPE
 * JD-Core Version:    0.6.2
 */