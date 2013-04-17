import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.database.Cursor;
import com.tencent.qqpimsecure.service.QQPimApplication;
import java.util.List;

public final class jo
{
  private static jo e;
  public SharedPreferences a = this.d.getSharedPreferences("smscheck", 0);
  public SharedPreferences.Editor b = this.a.edit();
  public hs c = hs.a();
  private Context d = QQPimApplication.a();

  public static jo a()
  {
    try
    {
      if (e == null)
        e = new jo();
      jo localjo = e;
      return localjo;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final List<mk> a(String paramString)
  {
    String str = "SELECT * FROM " + paramString + " ORDER BY date DESC";
    Cursor localCursor = this.c.a(str);
    localCursor.moveToFirst();
    List localList = gu.a(localCursor, false);
    this.c.b();
    return localList;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     jo
 * JD-Core Version:    0.6.2
 */