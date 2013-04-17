import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

final class hu extends SQLiteOpenHelper
{
  hu(hs paramhs, Context paramContext, String paramString)
  {
    super(paramContext, paramString, null, 51);
  }

  public final void onCreate(SQLiteDatabase paramSQLiteDatabase)
  {
    hs.a(paramSQLiteDatabase);
  }

  public final void onDowngrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
  }

  public final void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
    hs.a(this.a, paramSQLiteDatabase, paramInt1, paramInt2);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     hu
 * JD-Core Version:    0.6.2
 */