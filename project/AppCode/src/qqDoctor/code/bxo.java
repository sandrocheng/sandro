import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.os.Handler;
import com.tencent.tmsecure.module.plugin.AbsPluginDatabaseFactor;
import com.tencent.tmsecure.module.plugin.IPluginDatabase;

final class bxo
  implements IPluginDatabase
{
  private AbsPluginDatabaseFactor a;
  private Handler b;
  private SQLiteOpenHelper c;
  private Runnable d = new bxp(this);

  public bxo(Context paramContext, AbsPluginDatabaseFactor paramAbsPluginDatabaseFactor)
  {
    this.a = paramAbsPluginDatabaseFactor;
    this.b = new Handler(paramContext.getApplicationContext().getMainLooper());
    this.c = new bxq(this, paramContext, this.a.getName(), this.a.getVersion());
  }

  public final void close()
  {
    this.b.removeCallbacks(this.d);
    this.b.postDelayed(this.d, 3000L);
  }

  public final int delete(String paramString1, String paramString2, String[] paramArrayOfString)
  {
    synchronized (this.a)
    {
      int i = this.c.getWritableDatabase().delete(paramString1, paramString2, paramArrayOfString);
      return i;
    }
  }

  public final boolean deleteTable(String paramString)
  {
    synchronized (this.a)
    {
      this.c.getWritableDatabase().delete(paramString, null, null);
      return true;
    }
  }

  public final void execSQL(String paramString)
  {
    synchronized (this.a)
    {
      this.c.getWritableDatabase().execSQL(paramString);
      return;
    }
  }

  public final void execTransaction(Runnable paramRunnable)
  {
    synchronized (this.a)
    {
      SQLiteDatabase localSQLiteDatabase = this.c.getWritableDatabase();
      localSQLiteDatabase.beginTransaction();
      try
      {
        paramRunnable.run();
        localSQLiteDatabase.setTransactionSuccessful();
        localSQLiteDatabase.endTransaction();
        this.b.removeCallbacks(this.d);
        this.b.postDelayed(this.d, 3000L);
        return;
      }
      finally
      {
        localObject2 = finally;
        localSQLiteDatabase.endTransaction();
        this.b.removeCallbacks(this.d);
        this.b.postDelayed(this.d, 3000L);
        throw localObject2;
      }
    }
  }

  public final long insert(String paramString1, String paramString2, ContentValues paramContentValues)
  {
    synchronized (this.a)
    {
      long l = this.c.getWritableDatabase().insert(paramString1, paramString2, paramContentValues);
      return l;
    }
  }

  public final Cursor query(String paramString1, String[] paramArrayOfString1, String paramString2, String[] paramArrayOfString2, String paramString3, String paramString4, String paramString5)
  {
    synchronized (this.a)
    {
      Cursor localCursor = this.c.getWritableDatabase().query(paramString1, paramArrayOfString1, paramString2, paramArrayOfString2, paramString3, paramString4, paramString5);
      return localCursor;
    }
  }

  public final int update(String paramString1, ContentValues paramContentValues, String paramString2, String[] paramArrayOfString)
  {
    synchronized (this.a)
    {
      int i = this.c.getWritableDatabase().update(paramString1, paramContentValues, paramString2, paramArrayOfString);
      return i;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bxo
 * JD-Core Version:    0.6.2
 */