import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;

public class af extends ad
{
  public final y a(Context paramContext, boolean paramBoolean)
    throws s
  {
    int i;
    Cursor localCursor;
    if (this.b != null)
    {
      Uri localUri = gu.b;
      String str = this.b;
      i = 1;
      if ((localUri != null) && (str != null))
      {
        localCursor = paramContext.getContentResolver().query(localUri, null, null, null, null);
        if (localCursor != null)
          if (localCursor.getColumnIndex(str) < 0)
            break label86;
      }
    }
    label86: for (int j = 0; ; j = i)
    {
      localCursor.close();
      i = j;
      if (i == 0);
      while (true)
      {
        return this;
        this = null;
      }
    }
  }

  public final boolean b()
  {
    return false;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     af
 * JD-Core Version:    0.6.2
 */