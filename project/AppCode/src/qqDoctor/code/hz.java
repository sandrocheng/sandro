import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.Handler;

public abstract class hz
{
  private static Object a = new Object();
  protected jn b;
  private Handler c;
  private Runnable d = new ia(this);

  public hz(Context paramContext)
  {
    this.c = new Handler(paramContext.getMainLooper());
  }

  private void a()
  {
    try
    {
      this.c.removeCallbacks(this.d);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final int a(String paramString1, ContentValues paramContentValues, String paramString2, String[] paramArrayOfString)
  {
    synchronized (a)
    {
      SQLiteDatabase localSQLiteDatabase = this.b.a();
      if (localSQLiteDatabase != null)
      {
        i = localSQLiteDatabase.update(paramString1, paramContentValues, paramString2, paramArrayOfString);
        return i;
      }
      int i = -1;
    }
  }

  public final int a(String paramString1, String paramString2, String[] paramArrayOfString)
  {
    synchronized (a)
    {
      SQLiteDatabase localSQLiteDatabase = this.b.a();
      if (localSQLiteDatabase != null)
      {
        i = localSQLiteDatabase.delete(paramString1, paramString2, paramArrayOfString);
        return i;
      }
      int i = -1;
    }
  }

  public final long a(String paramString, ContentValues paramContentValues)
  {
    synchronized (a)
    {
      SQLiteDatabase localSQLiteDatabase = this.b.a();
      if (localSQLiteDatabase != null)
      {
        l = localSQLiteDatabase.insert(paramString, null, paramContentValues);
        return l;
      }
      long l = -1L;
    }
  }

  public final Cursor a(String paramString)
  {
    synchronized (a)
    {
      a();
      SQLiteDatabase localSQLiteDatabase = this.b.b();
      if (localSQLiteDatabase != null)
      {
        localCursor = localSQLiteDatabase.rawQuery(paramString, null);
        return localCursor;
      }
      Cursor localCursor = null;
    }
  }

  public final Cursor a(String paramString1, String[] paramArrayOfString1, String paramString2, String[] paramArrayOfString2, String paramString3, String paramString4, String paramString5)
  {
    synchronized (a)
    {
      a();
      SQLiteDatabase localSQLiteDatabase = this.b.b();
      if (localSQLiteDatabase != null)
      {
        localCursor = localSQLiteDatabase.query(paramString1, null, paramString2, paramArrayOfString2, null, null, paramString5);
        return localCursor;
      }
      Cursor localCursor = null;
    }
  }

  public final boolean a(dv paramdv)
  {
    synchronized (a)
    {
      SQLiteDatabase localSQLiteDatabase = this.b.a();
      boolean bool = false;
      if (localSQLiteDatabase != null)
        localSQLiteDatabase.beginTransaction();
      try
      {
        paramdv.a(this);
        localSQLiteDatabase.setTransactionSuccessful();
        bool = true;
        localSQLiteDatabase.endTransaction();
        d();
        return bool;
      }
      finally
      {
        localObject3 = finally;
        localSQLiteDatabase.endTransaction();
        d();
        throw localObject3;
      }
    }
  }

  public final long b(String paramString, ContentValues paramContentValues)
  {
    synchronized (a)
    {
      SQLiteDatabase localSQLiteDatabase = this.b.a();
      if (localSQLiteDatabase != null)
      {
        l = localSQLiteDatabase.replace(paramString, null, paramContentValues);
        return l;
      }
      long l = -1L;
    }
  }

  public final void d()
  {
    try
    {
      a();
      this.c.postDelayed(this.d, 3000L);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     hz
 * JD-Core Version:    0.6.2
 */