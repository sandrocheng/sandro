import android.content.ContentValues;
import android.database.Cursor;
import java.util.ArrayList;
import java.util.List;

public final class ib
{
  public hx a = hx.a();

  public static ContentValues a(ContentValues paramContentValues, lj paramlj)
  {
    paramContentValues.clear();
    paramContentValues.put("mFileSrcPath", paramlj.a);
    paramContentValues.put("mFileDstPath", paramlj.b);
    paramContentValues.put("mFileType", Integer.valueOf(paramlj.c));
    paramContentValues.put("mFileState", Integer.valueOf(paramlj.d));
    paramContentValues.put("mFileSuffix", paramlj.e);
    paramContentValues.put("mReserved1", paramlj.f);
    paramContentValues.put("mReserved2", paramlj.g);
    paramContentValues.put("mReserved3", paramlj.h);
    return paramContentValues;
  }

  public final int a()
  {
    Cursor localCursor = this.a.a("SELECT count(*) FROM file_safe_file_info");
    int i = 0;
    if (localCursor != null)
    {
      boolean bool = localCursor.moveToNext();
      i = 0;
      if (bool)
        i = localCursor.getInt(0);
    }
    if (localCursor != null)
      localCursor.close();
    this.a.d();
    return i;
  }

  public final List<lj> a(int paramInt)
  {
    String[] arrayOfString = new String[2];
    arrayOfString[0] = String.valueOf(paramInt);
    arrayOfString[1] = "1";
    return a("file_safe_file_info", "mFileType=? and mFileState=?", arrayOfString, "id ASC");
  }

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

  public lj b(String paramString1, String paramString2, String[] paramArrayOfString, String paramString3)
  {
    lj locallj = new lj();
    Cursor localCursor = this.a.a(paramString1, null, paramString2, paramArrayOfString, null, null, paramString3);
    while ((localCursor != null) && (localCursor.moveToNext()))
    {
      locallj.a(localCursor.getString(localCursor.getColumnIndex("mFileSrcPath")));
      locallj.b(localCursor.getString(localCursor.getColumnIndex("mFileDstPath")));
      locallj.a(Integer.parseInt(localCursor.getString(localCursor.getColumnIndex("mFileType"))));
      locallj.b(Integer.parseInt(localCursor.getString(localCursor.getColumnIndex("mFileState"))));
      locallj.c(localCursor.getString(localCursor.getColumnIndex("mFileSuffix")));
      locallj.d(localCursor.getString(localCursor.getColumnIndex("mReserved1")));
      locallj.e(localCursor.getString(localCursor.getColumnIndex("mReserved2")));
      locallj.f(localCursor.getString(localCursor.getColumnIndex("mReserved3")));
    }
    if (localCursor != null)
      localCursor.close();
    this.a.d();
    return locallj;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ib
 * JD-Core Version:    0.6.2
 */