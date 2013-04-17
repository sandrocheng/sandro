import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import com.tencent.tmsecure.common.TMSApplication;

public class hx extends hz
{
  public static final String a = lm.c + "filesafe_db.sqlite";
  private static hx c = null;

  private hx(Context paramContext)
  {
    super(paramContext);
    this.b = new hy(this, paramContext, "filesafe_db.sqlite");
  }

  public static hx a()
  {
    return a(TMSApplication.getApplicaionContext());
  }

  private static hx a(Context paramContext)
  {
    if (c == null);
    try
    {
      if (c == null)
        c = new hx(paramContext);
      return c;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public static void a(SQLiteDatabase paramSQLiteDatabase)
  {
    paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS file_safe_file_info (id INTEGER PRIMARY KEY,mFileSrcPath TEXT,mFileDstPath TEXT,mFileType TEXT,mFileState BOOLEAN,mFileSuffix TEXT,mReserved1 TEXT,mReserved2 TEXT,mReserved3 TEXT )");
    paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS privacy_secret_info (Module TEXT PRIMARY KEY,PP TEXT,PQ TEXT )");
  }

  public static void a(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
    if (paramInt2 > paramInt1)
    {
      paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS file_safe_file_info (id INTEGER PRIMARY KEY,mFileSrcPath TEXT,mFileDstPath TEXT,mFileType TEXT,mFileState BOOLEAN,mFileSuffix TEXT,mReserved1 TEXT,mReserved2 TEXT,mReserved3 TEXT )");
      paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS privacy_secret_info (Module TEXT PRIMARY KEY,PP TEXT,PQ TEXT )");
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     hx
 * JD-Core Version:    0.6.2
 */