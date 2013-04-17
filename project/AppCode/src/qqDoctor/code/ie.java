import android.database.Cursor;
import java.util.ArrayList;
import java.util.List;

public final class ie
{
  private hv a = hv.a();

  public List<lj> a(String paramString1, String paramString2, String[] paramArrayOfString, String paramString3)
  {
    Cursor localCursor = this.a.a(paramString1, null, paramString2, paramArrayOfString, null, null, paramString3);
    ArrayList localArrayList = new ArrayList();
    while ((localCursor != null) && (localCursor.moveToNext()))
    {
      lj locallj = new lj();
      locallj.a(localCursor.getString(localCursor.getColumnIndex("mFileSrcPath")));
      locallj.b(localCursor.getString(localCursor.getColumnIndex("mFileDstPath")));
      locallj.a(Integer.parseInt(localCursor.getString(localCursor.getColumnIndex("mFileType"))));
      locallj.b(Integer.parseInt(localCursor.getString(localCursor.getColumnIndex("mFileState"))));
      locallj.c(localCursor.getString(localCursor.getColumnIndex("mFileSuffix")));
      locallj.d(localCursor.getString(localCursor.getColumnIndex("mReserved1")));
      locallj.e(localCursor.getString(localCursor.getColumnIndex("mReserved2")));
      locallj.f(localCursor.getString(localCursor.getColumnIndex("mReserved3")));
      localArrayList.add(locallj);
    }
    if (localCursor != null)
      localCursor.close();
    this.a.d();
    return localArrayList;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ie
 * JD-Core Version:    0.6.2
 */