import android.content.ContentValues;
import android.database.Cursor;
import android.os.Environment;
import com.tencent.tmsecure.module.networkload.INetworkLoadTaskDao;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class he
  implements INetworkLoadTaskDao<kv>
{
  private hs a = hs.a();
  private String b = String.format("%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s", new Object[] { "_id", "len", "state", "url", "parent_path", "current_size", "range_support", "pkg", "name", "md5", "ver", "vercode", "logo_url", "categoryid", "pos" });

  public he()
  {
    a();
  }

  private void a()
  {
    if (Environment.getExternalStorageState().equals("mounted"))
    {
      List localList = getAll();
      ArrayList localArrayList = new ArrayList(localList.size());
      Iterator localIterator = localList.iterator();
      while (localIterator.hasNext())
      {
        kv localkv = (kv)localIterator.next();
        if ((!of.d(localkv).exists()) || (localkv.mState == -3))
          localArrayList.add(localkv);
      }
      delete(localArrayList);
    }
  }

  private static ContentValues b(kv paramkv)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("len", Long.valueOf(paramkv.mSize));
    localContentValues.put("state", Integer.valueOf(paramkv.mState));
    localContentValues.put("url", paramkv.mUrl);
    localContentValues.put("parent_path", paramkv.mParentPath);
    localContentValues.put("current_size", Long.valueOf(paramkv.mCurrentSize));
    localContentValues.put("range_support", Boolean.valueOf(paramkv.isSupportRange));
    localContentValues.put("pkg", paramkv.d.getPackageName());
    localContentValues.put("name", paramkv.d.getAppName());
    localContentValues.put("md5", paramkv.d.getCertMD5());
    localContentValues.put("ver", paramkv.d.d());
    localContentValues.put("vercode", Integer.valueOf(paramkv.d.D()));
    localContentValues.put("logo_url", paramkv.d.h());
    localContentValues.put("categoryid", Integer.valueOf(paramkv.b));
    localContentValues.put("pos", Integer.valueOf(paramkv.c));
    return localContentValues;
  }

  private long c(kv paramkv)
  {
    try
    {
      long l = this.a.a("tb_download_task_v2", null, b(paramkv));
      new StringBuilder("insert mid: ").append(paramkv.a).append(" pkg:").append(paramkv.d.getPackageName()).toString();
      this.a.b();
      return l;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  private boolean d(kv paramkv)
  {
    try
    {
      int i = this.a.a("tb_download_task_v2", b(paramkv), "pkg='" + paramkv.d.getPackageName() + "'", null);
      new StringBuilder("update id: ").append(paramkv.a).append(" pkg:").append(paramkv.d.getPackageName()).toString();
      this.a.b();
      if (i > 0)
      {
        bool = true;
        return bool;
      }
      boolean bool = false;
    }
    finally
    {
    }
  }

  public final boolean delete(List<kv> paramList)
  {
    StringBuffer localStringBuffer;
    try
    {
      localStringBuffer = new StringBuffer();
      Iterator localIterator = paramList.iterator();
      while (localIterator.hasNext())
      {
        kv localkv = (kv)localIterator.next();
        localStringBuffer.append("'" + localkv.d.getPackageName() + "',");
      }
    }
    finally
    {
    }
    int i;
    if (localStringBuffer.length() > 0)
    {
      localStringBuffer.deleteCharAt(-1 + localStringBuffer.length());
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = "pkg";
      arrayOfObject[1] = localStringBuffer.toString();
      String str = String.format("%s IN (%s)", arrayOfObject);
      i = this.a.a("tb_download_task_v2", str, null);
      this.a.b();
    }
    while (true)
    {
      if (i > 0);
      for (boolean bool = true; ; bool = false)
        return bool;
      i = 0;
    }
  }

  public final List<kv> getAll()
  {
    ArrayList localArrayList;
    Cursor localCursor;
    while (true)
    {
      try
      {
        localArrayList = new ArrayList();
        localCursor = this.a.a("SELECT " + this.b + " FROM tb_download_task_v2");
        if (!localCursor.moveToFirst())
          break;
        if (localCursor.isAfterLast())
          break;
        kv localkv = new kv();
        localkv.d = new kw();
        localkv.a = localCursor.getInt(0);
        localkv.mSize = localCursor.getInt(1);
        localkv.d.setSize(localkv.mSize);
        localkv.mState = localCursor.getInt(2);
        localkv.mUrl = localCursor.getString(3);
        localkv.mParentPath = localCursor.getString(4);
        localkv.mCurrentSize = localCursor.getLong(5);
        if (localCursor.getInt(6) == 1)
        {
          bool = true;
          localkv.isSupportRange = bool;
          localkv.d.setPackageName(localCursor.getString(7));
          localkv.mName = (localkv.d.getPackageName() + ".apk");
          localkv.d.setAppName(localCursor.getString(8));
          localkv.d.setCertMD5(localCursor.getString(9));
          localkv.d.a(localCursor.getString(10));
          localkv.d.i(localCursor.getInt(11));
          localkv.d.b(localCursor.getString(12));
          localArrayList.add(localkv);
          localCursor.moveToNext();
          continue;
        }
      }
      finally
      {
      }
      boolean bool = false;
    }
    localCursor.close();
    this.a.b();
    return localArrayList;
  }

  public final boolean insert(List<kv> paramList)
  {
    return this.a.a(new hf(this, paramList));
  }

  public final boolean update(List<kv> paramList, int paramInt)
  {
    StringBuffer localStringBuffer;
    try
    {
      localStringBuffer = new StringBuffer();
      Iterator localIterator = paramList.iterator();
      while (localIterator.hasNext())
      {
        kv localkv = (kv)localIterator.next();
        localStringBuffer.append(",'" + localkv.mName + "'");
        new StringBuilder("update id: ").append(localkv.a).append(" pkg:").append(localStringBuffer.toString()).toString();
      }
    }
    finally
    {
    }
    int i;
    if (localStringBuffer.length() > 0)
    {
      localStringBuffer.deleteCharAt(0);
      ContentValues localContentValues = new ContentValues();
      localContentValues.put("state", Integer.valueOf(paramInt));
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = "pkg";
      arrayOfObject[1] = localStringBuffer.toString();
      String str = String.format("%s IN (%s)", arrayOfObject);
      i = this.a.a("tb_download_task_v2", localContentValues, str, null);
      this.a.b();
    }
    while (true)
    {
      if (i > 0);
      for (boolean bool = true; ; bool = false)
        return bool;
      i = 0;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     he
 * JD-Core Version:    0.6.2
 */