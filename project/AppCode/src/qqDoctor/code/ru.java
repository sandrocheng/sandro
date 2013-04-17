import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.database.Cursor;
import com.tencent.qqpimsecure.service.SecureService;
import com.tencent.qqpimsecure.uilib.view.PermissionTipDialogView;
import com.tencent.tmsecure.module.permission.AbsDummyServiceCallback;
import com.tencent.tmsecure.module.permission.PermissionRequestInfo;
import java.util.ArrayList;
import java.util.List;

public final class ru extends AbsDummyServiceCallback
{
  public static ru.a a = new ru.a();
  public static int b = 0;
  public static int c = 0;
  private ho d;
  private Context e;
  private jf f;
  private aan g;
  private List<lz> h = new ArrayList();

  public ru(Context paramContext)
  {
    this.e = paramContext.getApplicationContext();
    this.d = ho.a();
    this.f = new jf();
    Context localContext = this.e;
    if (aan.b == null)
      aan.b = new aan(localContext);
    this.g = aan.b;
  }

  private lz a(int paramInt1, int paramInt2)
  {
    int i = this.h.size();
    int j = 0;
    lz locallz;
    if (j < i)
    {
      locallz = (lz)this.h.get(j);
      if ((locallz.a != paramInt1) || (locallz.b != paramInt2));
    }
    while (true)
    {
      return locallz;
      j++;
      break;
      locallz = null;
    }
  }

  private void a(String paramString1, String paramString2, boolean paramBoolean)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    if (paramBoolean)
      localStringBuilder.append(this.e.getResources().getString(2131429016));
    while (true)
    {
      localStringBuilder.append(65306);
      localStringBuilder.append(paramString1);
      localStringBuilder.append(this.e.getResources().getString(2131429024));
      localStringBuilder.append(paramString2);
      ov.a().a(localStringBuilder.toString());
      Intent localIntent = new Intent("MONITOR_LOG_ACTION");
      this.e.sendBroadcast(localIntent);
      return;
      localStringBuilder.append(this.e.getResources().getString(2131429017));
    }
  }

  public final void onHandleAslynRequest(PermissionRequestInfo paramPermissionRequestInfo)
    throws Exception
  {
    new Thread(new aao(this.g, paramPermissionRequestInfo)).start();
    paramPermissionRequestInfo.mRid = xf.b(paramPermissionRequestInfo.mRid);
    if (paramPermissionRequestInfo.mRid == -1);
    while (true)
    {
      return;
      if (paramPermissionRequestInfo.mValue == 1)
      {
        this.f.a(paramPermissionRequestInfo.mUid, paramPermissionRequestInfo.mRid, 1);
        c = 1 + c;
        if (this.d.bz())
        {
          String str1 = this.f.d(paramPermissionRequestInfo.mUid);
          String str2 = xf.a(paramPermissionRequestInfo.mRid);
          if (str1 != null)
            a(str1, str2, true);
        }
      }
    }
  }

  public final int onHandleSyncRequest(PermissionRequestInfo paramPermissionRequestInfo)
    throws Exception
  {
    int i = 1;
    lz locallz1;
    int k;
    while (true)
    {
      try
      {
        new Thread(new aao(this.g, paramPermissionRequestInfo)).start();
        paramPermissionRequestInfo.mRid = xf.b(paramPermissionRequestInfo.mRid);
        if (paramPermissionRequestInfo.mRid == 12)
        {
          j = 0;
          if (j != 0)
          {
            jf localjf = this.f;
            int i5 = paramPermissionRequestInfo.mUid;
            int i6 = paramPermissionRequestInfo.mRid;
            String str3 = "SELECT * FROM permission_log WHERE mUId=" + i5 + " and mRId=" + i6 + " ORDER BY mTimestamp desc LIMIT 1";
            Cursor localCursor = localjf.a.a(str3);
            locallz1 = null;
            if (localCursor != null)
            {
              boolean bool = localCursor.moveToNext();
              locallz1 = null;
              if (bool)
              {
                locallz1 = new lz();
                locallz1.h = localCursor.getInt(localCursor.getColumnIndex("mState"));
                locallz1.i = localCursor.getLong(localCursor.getColumnIndex("mTimestamp"));
              }
            }
            if (localCursor != null)
              localCursor.close();
            localjf.a.b();
            if ((j == 0) || (locallz1 == null) || (System.currentTimeMillis() - locallz1.i >= 20000L))
              continue;
            int i4 = locallz1.h;
            k = 0;
            if (i4 != 0)
              break;
            return k;
          }
        }
        else
        {
          j = i;
          continue;
        }
        locallz1 = a(paramPermissionRequestInfo.mUid, paramPermissionRequestInfo.mRid);
        continue;
        if ((j == 0) && (locallz1 != null) && (System.currentTimeMillis() - locallz1.i < 1000L))
        {
          int i3 = locallz1.h;
          k = 0;
          if (i3 == 0)
            continue;
          k = i;
          continue;
        }
        if (a.b == i)
        {
          k = 0;
          if (locallz1 == null)
            continue;
          int m = locallz1.h;
          k = 0;
          if (m == 0)
            continue;
          k = i;
          continue;
        }
        a.b = false;
        Intent localIntent = new Intent();
        localIntent.setClass(this.e, SecureService.class);
        localIntent.setAction(PermissionTipDialogView.PERMISSION_DIALOG_ADD);
        localIntent.putExtra("Require_Info", paramPermissionRequestInfo);
        this.e.startService(localIntent);
      }
      finally
      {
        synchronized (a)
        {
          int j;
          a.b = true;
          a.wait(60000L);
          a.b = false;
          if (j == 0)
            break label607;
          if (a.a != 0)
            break label570;
          this.f.a(paramPermissionRequestInfo.mUid, paramPermissionRequestInfo.mRid, 0);
          b = 1 + b;
          i = 0;
          if (this.d.bz())
          {
            String str1 = this.f.d(paramPermissionRequestInfo.mUid);
            String str2 = xf.a(paramPermissionRequestInfo.mRid);
            if (str1 != null)
              a(str1, str2, i);
          }
          label546: k = a.a;
        }
      }
      label570: if (a.a == i)
      {
        this.f.a(paramPermissionRequestInfo.mUid, paramPermissionRequestInfo.mRid, 1);
        c = 1 + c;
        continue;
        label607: if (locallz1 != null)
          locallz1.i = System.currentTimeMillis();
        if ((locallz1 == null) || (locallz1.h == a.a))
          break label746;
      }
    }
    while (true)
    {
      int n = paramPermissionRequestInfo.mUid;
      int i1 = paramPermissionRequestInfo.mRid;
      int i2 = a.a;
      lz locallz2 = a(n, i1);
      if (locallz2 != null)
      {
        locallz2.h = i2;
        break label546;
      }
      lz locallz3 = new lz();
      locallz3.a = n;
      locallz3.b = i1;
      locallz3.h = i2;
      locallz3.i = System.currentTimeMillis();
      this.h.add(locallz3);
      break label546;
      k = i;
      break;
      label746: if (locallz1 != null)
        break label546;
    }
  }

  public static final class a
  {
    public int a;
    public boolean b = false;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ru
 * JD-Core Version:    0.6.2
 */