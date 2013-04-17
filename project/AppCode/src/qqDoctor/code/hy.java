import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import java.io.File;

final class hy extends jn
{
  hy(hx paramhx, Context paramContext, String paramString)
  {
    super(paramString, null, 30);
  }

  public final File a(String paramString)
  {
    File localFile1 = new File(lm.c);
    File localFile2 = new File(localFile1, paramString);
    if (localFile2.exists());
    while (true)
    {
      return localFile2;
      if (!localFile1.exists())
        localFile1.mkdirs();
    }
  }

  public final void a(SQLiteDatabase paramSQLiteDatabase)
  {
    hx.a(paramSQLiteDatabase);
  }

  public final void a(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
    hx.a(paramSQLiteDatabase, paramInt1, paramInt2);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     hy
 * JD-Core Version:    0.6.2
 */