import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import java.util.ArrayList;
import java.util.List;
import java.util.Vector;

public class bw
{
  private static bw d;
  private Context a;
  private bx b;
  private SQLiteDatabase c;

  private bw(Context paramContext)
  {
    this.a = paramContext;
  }

  public static bw a(Context paramContext)
  {
    if ((d == null) && (paramContext == null));
    for (bw localbw = null; ; localbw = d)
    {
      return localbw;
      if (d == null)
        break;
      if (paramContext != null)
        d.a = paramContext;
    }
    while (true)
    {
      try
      {
        if (d == null)
        {
          d = new bw(paramContext);
          localbw = d;
          break;
        }
      }
      finally
      {
      }
      if (paramContext != null)
        d.a = paramContext;
    }
  }

  private int b(String paramString)
  {
    try
    {
      b();
      int i = this.c.delete("sync_log", "_id=" + paramString, null);
      if (this.c != null)
      {
        this.c.close();
        this.c = null;
        this.b = null;
      }
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  private void b()
  {
    if (this.c == null)
    {
      this.b = new bx(this.a, "sync_log.db");
      this.c = this.b.getWritableDatabase();
    }
  }

  public final int a()
  {
    try
    {
      b();
      int i = this.c.delete("sync_log", null, null);
      if (this.c != null)
      {
        this.c.close();
        this.c = null;
        this.b = null;
      }
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final long a(cs paramcs)
  {
    while (true)
    {
      Vector localVector;
      int i;
      try
      {
        b();
        ContentValues localContentValues = new ContentValues();
        if (paramcs.a != null)
          localContentValues.put("qq_account", paramcs.a);
        localContentValues.put("type", Integer.valueOf(paramcs.b));
        localContentValues.put("start", Long.valueOf(paramcs.c));
        localContentValues.put("end", Long.valueOf(paramcs.d));
        localContentValues.put("add_num", Integer.valueOf(paramcs.e));
        localContentValues.put("modify_num", Integer.valueOf(paramcs.f));
        localContentValues.put("delete_num", Integer.valueOf(paramcs.g));
        localContentValues.put("backup_or_restore", Integer.valueOf(paramcs.h));
        localContentValues.put("upload", Long.valueOf(paramcs.i));
        localContentValues.put("download", Long.valueOf(paramcs.j));
        localContentValues.put("succeed", Integer.valueOf(paramcs.k));
        localContentValues.put("client_add_num", Integer.valueOf(paramcs.m));
        localContentValues.put("client_modify_num", Integer.valueOf(paramcs.n));
        localContentValues.put("client_delete_num", Integer.valueOf(paramcs.o));
        localContentValues.put("server_add_num", Integer.valueOf(paramcs.p));
        localContentValues.put("server_modify_num", Integer.valueOf(paramcs.q));
        localContentValues.put("server_delete_num", Integer.valueOf(paramcs.r));
        localContentValues.put("sync_method", Integer.valueOf(paramcs.s));
        localContentValues.put("local_backup_id", Integer.valueOf(paramcs.t));
        localContentValues.put("sim_sync_state", Integer.valueOf(paramcs.l));
        long l = this.c.insert("sync_log", "_id", localContentValues);
        Cursor localCursor = this.c.query("sync_log", new String[] { "_id" }, null, null, null, null, "_id desc");
        if (localCursor.moveToFirst())
        {
          localVector = new Vector();
          if (localCursor.isAfterLast())
          {
            i = 50;
            if (i < localVector.size())
              break label427;
          }
        }
        else
        {
          localCursor.close();
          if (this.c != null)
          {
            this.c.close();
            this.c = null;
            this.b = null;
          }
          return l;
        }
        localVector.add(localCursor.getString(0));
        localCursor.moveToNext();
        continue;
      }
      finally
      {
      }
      label427: b((String)localVector.get(i));
      i++;
    }
  }

  public final List<cs> a(String paramString)
  {
    try
    {
      ArrayList localArrayList = new ArrayList();
      localArrayList.add(Integer.valueOf(0));
      localArrayList.add(Integer.valueOf(1));
      localArrayList.add(Integer.valueOf(2));
      localArrayList.add(Integer.valueOf(3));
      localArrayList.add(Integer.valueOf(4));
      localArrayList.add(Integer.valueOf(5));
      localArrayList.add(Integer.valueOf(6));
      List localList = a(paramString, localArrayList);
      return localList;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final List<cs> a(String paramString, List<Integer> paramList)
  {
    try
    {
      b();
      ArrayList localArrayList1 = new ArrayList();
      String str = null;
      Cursor localCursor;
      if (paramString != null)
      {
        boolean bool = "".equals(paramString);
        str = null;
        if (!bool);
      }
      else
      {
        localCursor = this.c.query("sync_log", null, str, null, null, null, null, null);
        if (localCursor.moveToFirst())
          break label451;
        if (this.c != null)
        {
          this.c.close();
          this.c = null;
          this.b = null;
        }
      }
      for (ArrayList localArrayList2 = localArrayList1; ; localArrayList2 = localArrayList1)
      {
        return localArrayList2;
        str = "qq_account = " + paramString;
        break;
        label451: 
        do
        {
          if (paramList.contains(Integer.valueOf(localCursor.getInt(2))))
          {
            cs localcs = new cs();
            localCursor.getInt(0);
            localcs.a = localCursor.getString(1);
            localcs.b = localCursor.getInt(2);
            localcs.c = localCursor.getLong(3);
            localcs.d = localCursor.getLong(4);
            localcs.e = localCursor.getInt(5);
            localcs.f = localCursor.getInt(6);
            localcs.g = localCursor.getInt(7);
            localcs.h = localCursor.getInt(8);
            localcs.i = localCursor.getLong(9);
            localcs.j = localCursor.getLong(10);
            localcs.k = localCursor.getInt(11);
            localcs.m = localCursor.getInt(12);
            localcs.n = localCursor.getInt(13);
            localcs.o = localCursor.getInt(14);
            localcs.p = localCursor.getInt(15);
            localcs.q = localCursor.getInt(16);
            localcs.r = localCursor.getInt(17);
            localcs.s = localCursor.getInt(18);
            localcs.t = localCursor.getInt(19);
            localcs.l = localCursor.getInt(20);
            localArrayList1.add(localcs);
          }
          localCursor.moveToNext();
        }
        while (!localCursor.isAfterLast());
        localCursor.close();
        if (this.c != null)
        {
          this.c.close();
          this.c = null;
          this.b = null;
        }
      }
    }
    finally
    {
    }
  }

  protected void finalize()
    throws Throwable
  {
    this.c.close();
    super.finalize();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bw
 * JD-Core Version:    0.6.2
 */