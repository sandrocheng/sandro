import android.database.Cursor;
import java.util.ArrayList;

public final class kj
{
  private hs a = hs.a();

  public final ArrayList<mr> a()
  {
    ArrayList localArrayList = new ArrayList();
    Cursor localCursor = null;
    while (true)
    {
      mr localmr;
      try
      {
        localCursor = this.a.a("select * from timed_task");
        if ((localCursor == null) || (!localCursor.moveToFirst()))
          break label392;
        int i = localCursor.getColumnIndex("id");
        int j = localCursor.getColumnIndex("repeat_plan");
        int k = localCursor.getColumnIndex("repeat_time");
        int m = localCursor.getColumnIndex("start_time_hour");
        int n = localCursor.getColumnIndex("start_time_mini");
        int i1 = localCursor.getColumnIndex("task_destiney");
        int i2 = localCursor.getColumnIndex("task_destiney_status");
        int i3 = localCursor.getColumnIndex("task_name");
        int i4 = localCursor.getColumnIndex("task_status");
        int i5 = localCursor.getColumnIndex("type");
        if (localCursor.isAfterLast())
          break label392;
        localmr = new mr();
        localmr.a = localCursor.getLong(i);
        localmr.d = localCursor.getInt(j);
        localmr.e = localCursor.getString(k);
        localmr.f = localCursor.getInt(m);
        localmr.g = localCursor.getInt(n);
        localmr.h = localCursor.getString(i1);
        localmr.i = localCursor.getInt(i2);
        localmr.c = localCursor.getString(i3);
        switch (localCursor.getInt(i4))
        {
        default:
          localmr.b = localCursor.getInt(i5);
          localArrayList.add(localmr);
          localCursor.moveToNext();
          continue;
        case 0:
        case 1:
        }
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        return localArrayList;
        localmr.j = false;
        continue;
      }
      finally
      {
        this.a.b();
        if (localCursor != null)
          localCursor.close();
        this.a.b();
      }
      localmr.j = true;
      continue;
      label392: this.a.b();
      if (localCursor != null)
        localCursor.close();
      this.a.b();
    }
  }

  public final mr a(long paramLong)
  {
    mr localmr = new mr();
    String str = "select * from timed_task where id = " + paramLong;
    Cursor localCursor = null;
    while (true)
    {
      try
      {
        localCursor = this.a.a(str);
        if ((localCursor == null) || (!localCursor.moveToFirst()))
          break label404;
        int i = localCursor.getColumnIndex("id");
        int j = localCursor.getColumnIndex("repeat_plan");
        int k = localCursor.getColumnIndex("repeat_time");
        int m = localCursor.getColumnIndex("start_time_hour");
        int n = localCursor.getColumnIndex("start_time_mini");
        int i1 = localCursor.getColumnIndex("task_destiney");
        int i2 = localCursor.getColumnIndex("task_destiney_status");
        int i3 = localCursor.getColumnIndex("task_name");
        int i4 = localCursor.getColumnIndex("task_status");
        int i5 = localCursor.getColumnIndex("type");
        if (localCursor.isAfterLast())
          break label404;
        localmr.a = localCursor.getLong(i);
        localmr.d = localCursor.getInt(j);
        localmr.e = localCursor.getString(k);
        localmr.f = localCursor.getInt(m);
        localmr.g = localCursor.getInt(n);
        localmr.h = localCursor.getString(i1);
        localmr.i = localCursor.getInt(i2);
        localmr.c = localCursor.getString(i3);
        switch (localCursor.getInt(i4))
        {
        default:
          localmr.b = localCursor.getInt(i5);
          localCursor.moveToNext();
          continue;
        case 0:
        case 1:
        }
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        return localmr;
        localmr.j = false;
        continue;
      }
      finally
      {
        this.a.b();
        if (localCursor != null)
          localCursor.close();
      }
      localmr.j = true;
      continue;
      label404: this.a.b();
      if (localCursor != null)
        localCursor.close();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     kj
 * JD-Core Version:    0.6.2
 */