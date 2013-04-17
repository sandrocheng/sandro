import android.os.RemoteException;
import com.tencent.qqpimsecure.service.TMSLiteService.d;
import com.tencent.tmsecure.module.qscanner.QScanListener;
import com.tencent.tmsecure.module.qscanner.QScanResultEntity;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONException;

public final class abo extends QScanListener
{
  public abo(TMSLiteService.d paramd)
  {
  }

  private static bzo a(QScanResultEntity paramQScanResultEntity)
  {
    try
    {
      localbzo = new bzo();
      localbzo.put("PackageName", paramQScanResultEntity.packageName);
      localbzo.put("AppName", paramQScanResultEntity.softName);
      localbzo.put("Version", paramQScanResultEntity.version);
      localbzo.put("ApkType", paramQScanResultEntity.apkType);
      localbzo.put("AppPath", paramQScanResultEntity.path);
      localbzo.put("VirusType", paramQScanResultEntity.type);
      localbzo.put("VirusAdvise", paramQScanResultEntity.advice);
      localbzo.put("VirusId", paramQScanResultEntity.malwareid);
      localbzo.put("VirusName", paramQScanResultEntity.name);
      localbzo.put("VirusLabel", paramQScanResultEntity.label);
      localbzo.put("VirusDescribe", paramQScanResultEntity.discription);
      return localbzo;
    }
    catch (JSONException localJSONException)
    {
      while (true)
      {
        localJSONException.printStackTrace();
        bzo localbzo = null;
      }
    }
  }

  public final void onCloudScan()
  {
    try
    {
      TMSLiteService.d.a(this.a).b();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      while (true)
        localRemoteException.printStackTrace();
    }
  }

  public final void onCloudScanError(int paramInt)
  {
    try
    {
      TMSLiteService.d.a(this.a).a(paramInt);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      while (true)
        localRemoteException.printStackTrace();
    }
  }

  public final void onPackageScanProgress(int paramInt, QScanResultEntity paramQScanResultEntity)
  {
    try
    {
      TMSLiteService.d.a(this.a).a(paramInt, a(paramQScanResultEntity));
      return;
    }
    catch (RemoteException localRemoteException)
    {
      while (true)
        localRemoteException.printStackTrace();
    }
  }

  public final void onScanCanceled()
  {
    try
    {
      TMSLiteService.d.a(this.a).e();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      while (true)
        localRemoteException.printStackTrace();
    }
  }

  public final void onScanContinue()
  {
    try
    {
      TMSLiteService.d.a(this.a).d();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      while (true)
        localRemoteException.printStackTrace();
    }
  }

  public final void onScanFinished(ArrayList<QScanResultEntity> paramArrayList)
  {
    ArrayList localArrayList;
    try
    {
      localArrayList = new ArrayList(paramArrayList.size());
      Iterator localIterator = paramArrayList.iterator();
      while (localIterator.hasNext())
        localArrayList.add(a((QScanResultEntity)localIterator.next()));
    }
    catch (RemoteException localRemoteException)
    {
      localRemoteException.printStackTrace();
    }
    while (true)
    {
      return;
      TMSLiteService.d.a(this.a).a(localArrayList);
    }
  }

  public final void onScanPaused()
  {
    try
    {
      TMSLiteService.d.a(this.a).c();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      while (true)
        localRemoteException.printStackTrace();
    }
  }

  public final void onScanStarted()
  {
    try
    {
      TMSLiteService.d.a(this.a).a();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      while (true)
        localRemoteException.printStackTrace();
    }
  }

  public final void onSdcardScanProgress(int paramInt, QScanResultEntity paramQScanResultEntity)
  {
    try
    {
      TMSLiteService.d.a(this.a).b(paramInt, a(paramQScanResultEntity));
      return;
    }
    catch (RemoteException localRemoteException)
    {
      while (true)
        localRemoteException.printStackTrace();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     abo
 * JD-Core Version:    0.6.2
 */