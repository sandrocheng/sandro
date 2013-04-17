import android.content.ContentValues;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.database.Cursor;
import com.tencent.tmsecure.module.network.NetDataEntity;
import com.tencent.tmsecure.module.network.NetworkInfoEntity;
import java.util.ArrayList;
import java.util.Date;

public final class iz extends it
{
  private String e = "type = 2";

  public iz(Context paramContext)
  {
    super(paramContext);
  }

  protected final ContentValues a(NetworkInfoEntity paramNetworkInfoEntity)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("date", Long.valueOf(paramNetworkInfoEntity.mStartDate.getTime()));
    localContentValues.put("data", Long.valueOf(paramNetworkInfoEntity.mUsedForDay));
    localContentValues.put("imsi", "");
    localContentValues.put("type", Integer.valueOf(2));
    return localContentValues;
  }

  public final void clearAll()
  {
    this.d.a("networK", this.e, null);
    this.d.b();
  }

  public final ArrayList<NetworkInfoEntity> getAll()
  {
    return null;
  }

  public final NetDataEntity getLastNetDataEntity()
  {
    NetDataEntity localNetDataEntity = new NetDataEntity();
    localNetDataEntity.mReceiver = Long.parseLong(this.a.getString("wifi_receiver", "-1"));
    localNetDataEntity.mReceiverPks = Long.parseLong(this.a.getString("wifi_receiver_pks", "-1"));
    localNetDataEntity.mTranslate = Long.parseLong(this.a.getString("wifi_translate", "-1"));
    localNetDataEntity.mTranslatePks = Long.parseLong(this.a.getString("wifi_translate_pks", "-1"));
    return localNetDataEntity;
  }

  public final NetworkInfoEntity getSystemTimeChange(Date paramDate)
  {
    return null;
  }

  public final NetworkInfoEntity getTodayNetworkInfoEntity()
  {
    NetworkInfoEntity localNetworkInfoEntity = new NetworkInfoEntity();
    Date localDate = new Date();
    int i = localDate.getYear();
    int j = localDate.getMonth();
    String str1 = i + "&" + j + "&0,";
    String str2 = this.a.getString("str_wifi_used_for_month", str1);
    new StringBuilder("NetworkDao getWifiUsedFlowForMonth usedLogStr ").append(str2).toString();
    ArrayList localArrayList = a(str2);
    int k = 0;
    it.a locala;
    if (k < localArrayList.size())
    {
      locala = (it.a)localArrayList.get(k);
      if ((locala.a != i) || (locala.b != j));
    }
    for (long l = locala.c; ; l = 0L)
    {
      localNetworkInfoEntity.mUsedForMonth = l;
      localNetworkInfoEntity.mUsedForDay = this.a.getLong("temp_wifi_used_for_day", 0L);
      localNetworkInfoEntity.mStartDate = new Date(this.a.getLong("temp_date", System.currentTimeMillis()));
      return localNetworkInfoEntity;
      k++;
      break;
    }
  }

  public final long getTotalForMonth()
  {
    return 0L;
  }

  public final long getUsedForMonth()
  {
    return 0L;
  }

  public final void insert(NetworkInfoEntity paramNetworkInfoEntity)
  {
    Cursor localCursor = null;
    this.d.a("networK", null, a(paramNetworkInfoEntity));
    String str = "select id from networK where " + this.e + " order by date desc ";
    try
    {
      localCursor = this.d.a(str);
      if ((localCursor != null) && (localCursor.moveToPosition(400)))
      {
        int i = localCursor.getColumnIndex("id");
        while (!localCursor.isAfterLast())
        {
          int j = localCursor.getInt(i);
          this.d.a("networK", "id = " + j, null);
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
          this.d.b();
          return;
          if (localCursor != null)
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

  public final void resetToDayNetworkInfoEntity()
  {
    this.b.putLong("temp_wifi_used_time_for_day", 0L).commit();
    this.b.putLong("temp_wifi_used_for_day", 0L).commit();
    this.b.remove("temp_date").commit();
    this.b.commit();
  }

  public final void setLastNetDataEntity(NetDataEntity paramNetDataEntity)
  {
    this.b.putString("wifi_receiver", paramNetDataEntity.mReceiver);
    this.b.putString("wifi_receiver_pks", paramNetDataEntity.mReceiverPks);
    this.b.putString("wifi_translate", paramNetDataEntity.mTranslate);
    this.b.putString("wifi_translate_pks", paramNetDataEntity.mTranslatePks);
    this.b.commit();
  }

  public final void setTodayNetworkInfoEntity(NetworkInfoEntity paramNetworkInfoEntity)
  {
    long l = paramNetworkInfoEntity.mUsedForMonth;
    Date localDate = new Date();
    int i = localDate.getYear();
    int j = localDate.getMonth();
    String str1 = i + "&" + j + "&0,";
    ArrayList localArrayList = a(this.a.getString("str_wifi_used_for_month", str1));
    for (int k = 0; ; k++)
    {
      int m = localArrayList.size();
      int n = 0;
      if (k < m)
      {
        it.a locala2 = (it.a)localArrayList.get(k);
        if ((locala2.a == i) && (locala2.b == j))
        {
          locala2.c = l;
          n = 1;
        }
      }
      else
      {
        if (n == 0)
        {
          it.a locala1 = new it.a();
          locala1.a = i;
          locala1.b = j;
          locala1.c = l;
          localArrayList.add(locala1);
        }
        String str2 = a(localArrayList);
        this.b.putString("str_wifi_used_for_month", str2).commit();
        this.b.putLong("temp_wifi_used_for_day", paramNetworkInfoEntity.mUsedForDay);
        this.b.putLong("temp_date", paramNetworkInfoEntity.mStartDate.getTime());
        this.b.commit();
        return;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     iz
 * JD-Core Version:    0.6.2
 */