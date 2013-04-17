import android.database.Cursor;

public final class jj
{
  public hx a = hx.a();

  public mg a(String paramString1, String paramString2, String[] paramArrayOfString, String paramString3)
  {
    mg localmg = new mg();
    Cursor localCursor = this.a.a(paramString1, null, paramString2, paramArrayOfString, null, null, paramString3);
    while ((localCursor != null) && (localCursor.moveToNext()))
    {
      localmg.a(localCursor.getString(localCursor.getColumnIndex("PP")));
      localmg.b(localCursor.getString(localCursor.getColumnIndex("PQ")));
      localmg.c(localCursor.getString(localCursor.getColumnIndex("Module")));
    }
    if (localCursor != null)
      localCursor.close();
    this.a.d();
    return localmg;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     jj
 * JD-Core Version:    0.6.2
 */