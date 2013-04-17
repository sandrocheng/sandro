import android.content.ContentValues;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.database.Cursor;
import com.tencent.tmsecure.module.qscanner.QScanResultEntity;
import java.util.ArrayList;
import java.util.List;

public final class jl
{
  public hs a = hs.a();
  public SharedPreferences b;
  public SharedPreferences.Editor c;

  public jl(Context paramContext)
  {
    this.b = paramContext.getSharedPreferences("virusScanPlan", 0);
    this.c = this.b.edit();
  }

  public final long a(List<ms> paramList, long paramLong)
  {
    long l = 0L;
    for (int i = 0; i < paramList.size(); i++)
    {
      ms localms = (ms)paramList.get(i);
      ContentValues localContentValues = new ContentValues();
      localContentValues.put("appName", localms.e.softName);
      localContentValues.put("featureName", localms.e.name);
      localContentValues.put("pkgName", localms.e.packageName);
      localContentValues.put("riskInfo", localms.e.discription);
      localContentValues.put("state", Integer.valueOf(localms.b));
      localContentValues.put("type", Integer.valueOf(localms.e.type));
      localContentValues.put("virusScanID", Long.valueOf(paramLong));
      localms.a = this.a.a("virus_result", "id", localContentValues);
      if (localms.a != -1L)
        l += 1L;
    }
    this.a.b();
    return l;
  }

  public final long a(mu parammu)
  {
    Cursor localCursor = null;
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("scanDate", parammu.c);
    localContentValues.put("riskFound", Integer.valueOf(parammu.g));
    localContentValues.put("virusCured", Integer.valueOf(parammu.e));
    localContentValues.put("virusFound", Integer.valueOf(parammu.d));
    localContentValues.put("waitingDealing", Integer.valueOf(parammu.f));
    long l = this.a.a("virus_record", "id", localContentValues);
    try
    {
      localCursor = this.a.a("select id from virus_record order by scanDate desc ");
      if ((localCursor != null) && (localCursor.moveToPosition(50)))
      {
        int i = localCursor.getColumnIndex("id");
        while (!localCursor.isAfterLast())
        {
          int j = localCursor.getInt(i);
          this.a.a("virus_record", "id = " + j, null);
          this.a.a("virus_result", "id = " + j, null);
          localCursor.moveToNext();
        }
      }
    }
    catch (Exception localException2)
    {
      localException2.printStackTrace();
      if (localCursor != null);
      try
      {
        localCursor.close();
        while (true)
        {
          this.a.b();
          return l;
          localCursor.close();
          if (localCursor != null)
            try
            {
              localCursor.close();
            }
            catch (Exception localException4)
            {
              localException4.printStackTrace();
            }
        }
      }
      catch (Exception localException3)
      {
        while (true)
          localException3.printStackTrace();
      }
    }
    finally
    {
      if (localCursor == null);
    }
    try
    {
      localCursor.close();
      throw localObject;
    }
    catch (Exception localException1)
    {
      while (true)
        localException1.printStackTrace();
    }
  }

  public final void a(int[] paramArrayOfInt)
  {
    SharedPreferences.Editor localEditor = this.c;
    String str = "";
    for (int i = 0; i < paramArrayOfInt.length; i++)
      if (i < -1 + paramArrayOfInt.length)
        str = str + paramArrayOfInt[i] + ",";
    localEditor.putString("scanDate", str + paramArrayOfInt[(-1 + paramArrayOfInt.length)]).commit();
  }

  public final boolean a(long paramLong)
  {
    try
    {
      this.a.a("virus_result", "virusScanID = " + paramLong, null);
      this.a.a("virus_record", "id = " + paramLong, null);
      this.a.b();
      bool = true;
      return bool;
    }
    catch (Exception localException)
    {
      while (true)
      {
        localException.printStackTrace();
        this.a.b();
        boolean bool = false;
      }
    }
    finally
    {
      this.a.b();
    }
  }

  public final int[] a()
  {
    String[] arrayOfString = this.b.getString("scanDate", "0,0,0,0,0,1,0").split(",");
    int[] arrayOfInt = new int[arrayOfString.length];
    for (int i = 0; i < arrayOfString.length; i++)
      arrayOfInt[i] = Integer.valueOf(arrayOfString[i]).intValue();
    return arrayOfInt;
  }

  public final List<ms> b(long paramLong)
  {
    ArrayList localArrayList = new ArrayList();
    String str = "select * from virus_result where virusScanID = " + paramLong;
    Cursor localCursor = null;
    try
    {
      localCursor = this.a.a(str);
      if ((localCursor != null) && (localCursor.moveToFirst()))
      {
        int i = localCursor.getColumnIndex("id");
        int j = localCursor.getColumnIndex("pkgName");
        int k = localCursor.getColumnIndex("appName");
        int m = localCursor.getColumnIndex("featureName");
        int n = localCursor.getColumnIndex("riskInfo");
        int i1 = localCursor.getColumnIndex("state");
        int i2 = localCursor.getColumnIndex("type");
        int i3 = localCursor.getColumnIndex("handled");
        int i4 = localCursor.getColumnIndex("handleResult");
        while (!localCursor.isAfterLast())
        {
          ms localms = new ms();
          QScanResultEntity localQScanResultEntity = new QScanResultEntity();
          localms.a = localCursor.getInt(i);
          localms.b = localCursor.getInt(i1);
          localms.c = localCursor.getInt(i3);
          localms.d = localCursor.getInt(i4);
          localms.e = localQScanResultEntity;
          localQScanResultEntity.softName = localCursor.getString(k);
          localQScanResultEntity.name = localCursor.getString(m);
          localQScanResultEntity.packageName = localCursor.getString(j);
          localQScanResultEntity.discription = localCursor.getString(n);
          localQScanResultEntity.type = localCursor.getInt(i2);
          localArrayList.add(localms);
          localCursor.moveToNext();
        }
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      while (true)
      {
        return localArrayList;
        this.a.b();
        if (localCursor != null)
          localCursor.close();
      }
    }
    finally
    {
      this.a.b();
      if (localCursor != null)
        localCursor.close();
    }
  }

  public final boolean b()
  {
    try
    {
      this.a.c("virus_result");
      this.a.c("virus_record");
      this.a.b();
      bool = true;
      return bool;
    }
    catch (Exception localException)
    {
      while (true)
      {
        localException.printStackTrace();
        this.a.b();
        boolean bool = false;
      }
    }
    finally
    {
      this.a.b();
    }
  }

  public final List<mu> c()
  {
    ArrayList localArrayList = new ArrayList();
    Cursor localCursor = this.a.a("select * from virus_record order by scanDate desc,id desc");
    if (localCursor != null);
    try
    {
      if (localCursor.moveToFirst())
      {
        int i = localCursor.getColumnIndex("id");
        int j = localCursor.getColumnIndex("scanDate");
        int k = localCursor.getColumnIndex("riskFound");
        int m = localCursor.getColumnIndex("virusCured");
        int n = localCursor.getColumnIndex("virusFound");
        int i1 = localCursor.getColumnIndex("waitingDealing");
        while (!localCursor.isAfterLast())
        {
          mu localmu = new mu();
          localmu.a = localCursor.getInt(i);
          localmu.c = localCursor.getString(j);
          localmu.g = localCursor.getInt(k);
          localmu.e = localCursor.getInt(m);
          localmu.d = localCursor.getInt(n);
          localmu.f = localCursor.getInt(i1);
          localArrayList.add(localmu);
          localCursor.moveToNext();
        }
      }
    }
    catch (Exception localException3)
    {
      localException3.printStackTrace();
      if (localCursor != null);
      try
      {
        localCursor.close();
        while (true)
        {
          this.a.b();
          return localArrayList;
          if (localCursor != null)
            try
            {
              localCursor.close();
            }
            catch (Exception localException1)
            {
              localException1.printStackTrace();
            }
        }
      }
      catch (Exception localException4)
      {
        while (true)
          localException4.printStackTrace();
      }
    }
    finally
    {
      if (localCursor == null);
    }
    try
    {
      localCursor.close();
      throw localObject;
    }
    catch (Exception localException2)
    {
      while (true)
        localException2.printStackTrace();
    }
  }

  public final int d()
  {
    Cursor localCursor = this.a.a("SELECT count(*) FROM virus_record");
    boolean bool = localCursor.moveToNext();
    int i = 0;
    if (bool)
      i = localCursor.getInt(0);
    if (localCursor != null)
      localCursor.close();
    this.a.b();
    return i;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     jl
 * JD-Core Version:    0.6.2
 */