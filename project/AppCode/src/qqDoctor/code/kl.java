import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.database.Cursor;
import com.tencent.tmsecure.module.qscanner.QScanResultEntity;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class kl
{
  public hs a = hs.a();

  private static ArrayList<mt> a(Cursor paramCursor)
  {
    ArrayList localArrayList = new ArrayList();
    if (paramCursor != null)
    {
      int i = paramCursor.getColumnIndex(mt.c);
      int j = paramCursor.getColumnIndex(mt.h);
      int k = paramCursor.getColumnIndex(mt.g);
      int m = paramCursor.getColumnIndex(mt.e);
      int n = paramCursor.getColumnIndex(mt.i);
      int i1 = paramCursor.getColumnIndex(mt.j);
      int i2 = paramCursor.getColumnIndex(mt.k);
      int i3 = paramCursor.getColumnIndex(mt.d);
      int i4 = paramCursor.getColumnIndex(mt.l);
      int i5 = paramCursor.getColumnIndex(mt.m);
      if (paramCursor.moveToFirst())
        while (!paramCursor.isAfterLast())
        {
          mt localmt = new mt();
          localmt.n = paramCursor.getLong(i);
          localmt.r = paramCursor.getString(j);
          localmt.q = paramCursor.getString(k);
          localmt.p = paramCursor.getInt(m);
          localmt.s = paramCursor.getString(n);
          localmt.t = paramCursor.getString(i1);
          localmt.u = paramCursor.getString(i2);
          localmt.o = paramCursor.getLong(i3);
          localmt.v = paramCursor.getInt(i4);
          localmt.w = paramCursor.getInt(i5);
          localArrayList.add(localmt);
          paramCursor.moveToNext();
        }
    }
    return localArrayList;
  }

  public static ArrayList<ms> a(List<mt> paramList)
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      mt localmt = (mt)localIterator.next();
      ms localms = new ms();
      QScanResultEntity localQScanResultEntity = new QScanResultEntity();
      localQScanResultEntity.softName = localmt.r;
      localQScanResultEntity.packageName = localmt.s;
      localQScanResultEntity.apkType = localmt.p;
      localQScanResultEntity.path = localmt.t;
      localQScanResultEntity.discription = localmt.q;
      localQScanResultEntity.advice = 1;
      localQScanResultEntity.name = localmt.u;
      localQScanResultEntity.type = localmt.w;
      localms.e = localQScanResultEntity;
      localms.a = localmt.n;
      localArrayList.add(localms);
    }
    return localArrayList;
  }

  private boolean a(long paramLong)
  {
    int i = this.a.a("virus_notification", mt.c + "=" + paramLong, null);
    this.a.b();
    if (i > 0);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final List<mt> a(int paramInt)
  {
    String str = mt.l + "=" + paramInt;
    Cursor localCursor = this.a.a("SELECT * FROM virus_notification WHERE " + str + " ORDER BY " + mt.d + " desc");
    ArrayList localArrayList = null;
    if (localCursor != null)
    {
      localArrayList = a(localCursor);
      localCursor.close();
    }
    this.a.b();
    return localArrayList;
  }

  public final void a(Context paramContext, List<mt> paramList)
  {
    PackageManager localPackageManager = paramContext.getPackageManager();
    int i = 0;
    while (true)
      if (i < paramList.size())
      {
        mt localmt = (mt)paramList.get(i);
        if ((localmt.p == 0) || (localmt.p == 1));
        try
        {
          if (localPackageManager.getApplicationInfo(localmt.s, 0) == null)
          {
            paramList.remove(localmt);
            i--;
            a(localmt.n);
          }
          i++;
        }
        catch (PackageManager.NameNotFoundException localNameNotFoundException)
        {
          while (true)
          {
            paramList.remove(localmt);
            i--;
            a(localmt.n);
          }
        }
      }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     kl
 * JD-Core Version:    0.6.2
 */