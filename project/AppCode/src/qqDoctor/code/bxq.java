import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.tencent.tmsecure.module.plugin.AbsPluginDatabaseFactor;

final class bxq extends SQLiteOpenHelper
{
  bxq(bxo parambxo, Context paramContext, String paramString, int paramInt)
  {
    super(paramContext, paramString, null, paramInt);
  }

  public final void onCreate(SQLiteDatabase paramSQLiteDatabase)
  {
    bxo.b(this.a).onCreate(this.a, paramSQLiteDatabase);
  }

  public final void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
    bxo.b(this.a).onUpgrade(this.a, paramSQLiteDatabase, paramInt1, paramInt2);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bxq
 * JD-Core Version:    0.6.2
 */