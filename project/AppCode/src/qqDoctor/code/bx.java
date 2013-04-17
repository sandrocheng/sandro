import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

public final class bx extends SQLiteOpenHelper
{
  public bx(Context paramContext, String paramString)
  {
    super(paramContext, paramString, null, 4);
  }

  public final void onCreate(SQLiteDatabase paramSQLiteDatabase)
  {
    try
    {
      paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS sync_log (_id INTEGER PRIMARY KEY,qq_account VARCHAR,type INTEGER,start INT64,end INT64,add_num INTEGER,modify_num INTEGER,delete_num INTEGER,backup_or_restore INTEGER,upload INT64,download INT64, succeed INTEGER,client_add_num INTEGER,client_modify_num INTEGER,client_delete_num INTEGER,server_add_num INTEGER,server_modify_num INTEGER,server_delete_num INTEGER,sync_method INTEGER,local_backup_id INTEGER,sim_sync_state INTEGER)");
      return;
    }
    catch (Exception localException)
    {
      while (true)
        dk.c("SyncLogHelper", "onCreate(), " + localException.toString());
    }
  }

  public final void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
    if (paramInt1 < 3);
    try
    {
      paramSQLiteDatabase.execSQL("ALTER TABLE sync_log ADD client_add_num INTEGER");
      paramSQLiteDatabase.execSQL("ALTER TABLE sync_log ADD client_modify_num INTEGER");
      paramSQLiteDatabase.execSQL("ALTER TABLE sync_log ADD client_delete_num INTEGER");
      paramSQLiteDatabase.execSQL("ALTER TABLE sync_log ADD server_add_num INTEGER");
      paramSQLiteDatabase.execSQL("ALTER TABLE sync_log ADD server_modify_num INTEGER");
      paramSQLiteDatabase.execSQL("ALTER TABLE sync_log ADD server_delete_num INTEGER");
      paramSQLiteDatabase.execSQL("ALTER TABLE sync_log ADD sync_method INTEGER");
      paramSQLiteDatabase.execSQL("ALTER TABLE sync_log ADD local_backup_id INTEGER");
      if (paramInt1 < 4)
        paramSQLiteDatabase.execSQL("ALTER TABLE sync_log ADD sim_sync_state INTEGER");
      onCreate(paramSQLiteDatabase);
      return;
    }
    catch (Exception localException)
    {
      while (true)
        dk.c("SyncLogHelper", "onUpgrade(), " + localException.toString());
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bx
 * JD-Core Version:    0.6.2
 */