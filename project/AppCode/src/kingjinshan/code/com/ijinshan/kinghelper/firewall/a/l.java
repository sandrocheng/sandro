package com.ijinshan.kinghelper.firewall.a;

import android.database.sqlite.SQLiteDatabase;
import com.keniu.security.f.f;
import com.keniu.security.f.w;
import com.keniu.security.monitor.a;
import com.keniu.security.monitor.b;
import java.io.File;

final class l
  implements b
{
  private l(byte paramByte)
  {
  }

  public final int a(int paramInt, Object paramObject1, Object paramObject2)
  {
    SQLiteDatabase localSQLiteDatabase1;
    if ((paramInt == a.q) && (((Integer)paramObject1).intValue() == 3) && (((w)paramObject2).i() == 8))
      localSQLiteDatabase1 = SQLiteDatabase.openOrCreateDatabase(new File(f.c()), null);
    synchronized (e.c)
    {
      SQLiteDatabase localSQLiteDatabase2 = e.c();
      e.a(localSQLiteDatabase1);
      localSQLiteDatabase2.close();
      return 0;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.a.l
 * JD-Core Version:    0.6.2
 */