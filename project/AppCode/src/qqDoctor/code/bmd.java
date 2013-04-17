import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.Signature;
import android.os.Environment;
import android.os.Handler;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.View;
import android.widget.AdapterView.AdapterContextMenuInfo;
import com.tencent.qqpimsecure.uilib.model.ContextMenuModel;
import com.tencent.qqpimsecure.uilib.model.ListModel;
import com.tencent.qqpimsecure.uilib.ui.adapter.BasePinnedListAdapter;
import com.tencent.qqpimsecure.uilib.view.dialog.ContextMenuDialog;
import com.tencent.tmsecure.common.BaseServiceConnection;
import com.tencent.tmsecure.common.TMSApplication;
import com.tencent.tmsecure.common.TMSService;
import com.tencent.tmsecure.module.networkload.DownloadServiceBinder;
import com.tencent.tmsecure.module.networkload.NetworkLoadTaskListener;
import com.tencent.tmsecure.module.software.SoftwareManager;
import com.tencent.tmsecure.utils.WifiUtil;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.security.cert.Certificate;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public abstract class bmd extends blt<kv>
{
  public DownloadServiceBinder a;
  private boolean b;
  private long d = 0L;
  private BaseServiceConnection e = new BaseServiceConnection(bmd.class);
  private Handler f = new bme(this);
  private NetworkLoadTaskListener g = new bmf(this);

  public bmd(Context paramContext)
  {
    super(paramContext);
  }

  private String a(String paramString)
  {
    PackageManager localPackageManager = getContext().getPackageManager();
    Object localObject;
    label86: X509Certificate localX509Certificate;
    try
    {
      localPackageInfo = localPackageManager.getPackageInfo(paramString, 64);
      localObject = null;
      if (localPackageInfo != null)
      {
        Signature[] arrayOfSignature = localPackageInfo.signatures;
        localObject = null;
        if (arrayOfSignature != null)
        {
          int i = localPackageInfo.signatures.length;
          localObject = null;
          if (i > 0)
            break label86;
        }
      }
      return localObject;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      PackageInfo localPackageInfo;
      while (true)
      {
        new StringBuilder().append(paramString).append(" can't be found").toString();
        localObject = null;
      }
      localX509Certificate = (X509Certificate)a(localPackageInfo.signatures[0]);
      if (localX509Certificate == null);
    }
    while (true)
    {
      try
      {
        String str2 = btk.b(localX509Certificate.getEncoded());
        str1 = str2;
        localObject = str1;
      }
      catch (CertificateEncodingException localCertificateEncodingException)
      {
        localCertificateEncodingException.printStackTrace();
      }
      String str1 = null;
    }
  }

  private static Certificate a(Signature paramSignature)
  {
    ByteArrayInputStream localByteArrayInputStream = new ByteArrayInputStream(paramSignature.toByteArray());
    try
    {
      localX509Certificate = (X509Certificate)CertificateFactory.getInstance("X.509").generateCertificate(localByteArrayInputStream);
      try
      {
        localByteArrayInputStream.close();
        return localX509Certificate;
      }
      catch (IOException localIOException4)
      {
        while (true)
          localIOException4.printStackTrace();
      }
    }
    catch (CertificateException localCertificateException)
    {
      while (true)
      {
        localCertificateException = localCertificateException;
        localCertificateException.printStackTrace();
        try
        {
          localByteArrayInputStream.close();
          localX509Certificate = null;
        }
        catch (IOException localIOException3)
        {
          localIOException3.printStackTrace();
          localX509Certificate = null;
        }
      }
    }
    catch (Exception localException)
    {
      while (true)
      {
        X509Certificate localX509Certificate;
        localException = localException;
        localException.printStackTrace();
        try
        {
          localByteArrayInputStream.close();
          localX509Certificate = null;
        }
        catch (IOException localIOException2)
        {
          localIOException2.printStackTrace();
          localX509Certificate = null;
        }
      }
    }
    finally
    {
    }
    try
    {
      localByteArrayInputStream.close();
      throw localObject;
    }
    catch (IOException localIOException1)
    {
      while (true)
        localIOException1.printStackTrace();
    }
  }

  private void a(kv paramkv)
  {
    String str = a(paramkv.d.getPackageName());
    if ((str == null) || (!str.equals(paramkv.d.getCertMD5())));
    while (true)
    {
      return;
      switch (this.c.getAppVersionStatus(paramkv.d.getPackageName(), paramkv.d.D()))
      {
      default:
        break;
      case -1:
        if (paramkv.mState == -3)
          paramkv.mState = 3;
        break;
      case 1:
        if ((paramkv.mState == -2) || (paramkv.mState == 4))
          paramkv.mState = -4;
        break;
      case 0:
      case 2:
        paramkv.mState = -3;
      }
    }
  }

  private boolean j()
  {
    boolean bool = false;
    int i;
    if (!Environment.getExternalStorageState().equals("mounted"))
    {
      i = 1;
      if (i != 1)
        break label54;
      ha.b(this.mContext, this.mContext.getString(2131429514));
    }
    while (true)
    {
      return bool;
      if (!a.b())
      {
        i = 2;
        break;
      }
      i = 0;
      break;
      label54: if (i == 2)
      {
        ha.b(this.mContext, this.mContext.getString(2131429517));
        bool = false;
      }
      else
      {
        bool = true;
      }
    }
  }

  public List<ListModel<kv>> a()
  {
    return new ArrayList(0);
  }

  protected void a(List<kv> paramList)
  {
    this.mHandler.removeMessages(-2);
    this.mHandler.sendEmptyMessage(-2);
  }

  public void a_()
  {
  }

  protected void b(kv paramkv)
  {
    this.mHandler.removeMessages(-2);
    this.mHandler.sendEmptyMessage(-2);
  }

  protected void c(kv paramkv)
  {
    this.mHandler.removeMessages(-2);
    this.mHandler.sendEmptyMessage(-2);
  }

  public BasePinnedListAdapter<kv> createAdapter()
  {
    return new ala(this, a(), 0);
  }

  protected void d()
  {
    ha.a(this.mContext, 2131427824);
  }

  protected void d(List<kv> paramList)
  {
    this.mHandler.removeMessages(-2);
    this.mHandler.sendEmptyMessage(-2);
  }

  protected void d(kv paramkv)
  {
    this.mHandler.removeMessages(-2);
    this.mHandler.sendEmptyMessage(-2);
  }

  public final DownloadServiceBinder e()
  {
    return this.a;
  }

  protected void e(List<kv> paramList)
  {
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      kv localkv = (kv)localIterator.next();
      localkv.mState = -2;
      localkv.mProgress = 0.0F;
      a(localkv);
    }
    this.mHandler.removeMessages(-2);
    this.mHandler.sendEmptyMessage(-2);
  }

  protected void e(kv paramkv)
  {
    paramkv.mState = -2;
    paramkv.mProgress = 0.0F;
    a(paramkv);
    this.mHandler.removeMessages(-2);
    this.mHandler.sendEmptyMessage(-2);
  }

  public ala f()
  {
    return (ala)this.mAdapter;
  }

  public final void f(List<kv> paramList)
  {
    if (!j());
    while (true)
    {
      return;
      Iterator localIterator = paramList.iterator();
      while (localIterator.hasNext())
        ((kv)localIterator.next()).isOnChangeRetry = false;
      this.a.startTask(paramList);
      d();
    }
  }

  protected void f(kv paramkv)
  {
    this.mHandler.removeMessages(-2);
    this.mHandler.sendEmptyMessage(-2);
  }

  protected final void g()
  {
    if ((this.mDataList == null) || (this.mDataList.size() == 0));
    while (true)
    {
      return;
      ArrayList localArrayList = new ArrayList(this.mDataList);
      Iterator localIterator = localArrayList.iterator();
      while (localIterator.hasNext())
        a((kv)localIterator.next());
      this.mDataList = localArrayList;
    }
  }

  public final void g(List<kv> paramList)
  {
    if (!j());
    while (true)
    {
      return;
      Iterator localIterator = paramList.iterator();
      while (localIterator.hasNext())
        ((kv)localIterator.next()).isOnChangeRetry = false;
      this.a.continueTask(paramList);
      d();
    }
  }

  protected void g(kv paramkv)
  {
    this.mHandler.removeMessages(-2);
    this.mHandler.sendEmptyMessage(-2);
    if (paramkv.mErrorCode == -1063)
      a.b(getContext(), WifiUtil.sRedirectLocation);
  }

  protected final void h()
  {
    this.mHandler.removeMessages(-2);
    this.mHandler.sendEmptyMessage(-2);
  }

  public final void h(kv paramkv)
  {
    if (!j());
    while (true)
    {
      return;
      paramkv.isOnChangeRetry = false;
      this.a.startTask(paramkv);
      d();
    }
  }

  protected final void i()
  {
    this.mHandler.removeMessages(-2);
    this.mHandler.sendEmptyMessage(-2);
  }

  public final void i(kv paramkv)
  {
    if (!j());
    while (true)
    {
      return;
      paramkv.isOnChangeRetry = false;
      this.a.continueTask(paramkv);
      d();
    }
  }

  public final void j(kv paramkv)
  {
    File localFile = of.d(paramkv);
    if ((localFile != null) && (localFile.exists()));
    while (true)
    {
      try
      {
        this.c.installApp(localFile);
        return;
      }
      catch (Exception localException)
      {
        ha.b(TMSApplication.getApplicaionContext(), 2131427509);
        continue;
      }
      ha.b(this.mContext, 2131429518);
    }
  }

  public final void k(kv paramkv)
  {
    this.a.pauseTask(paramkv);
  }

  public final void l(kv paramkv)
  {
    this.a.deleteTask(paramkv, true);
  }

  public void onCreate()
  {
    super.onCreate();
    TMSService.startService(new of());
    this.a = ((DownloadServiceBinder)TMSService.bindService(of.class, this.e));
  }

  public void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
    int i = ((AdapterView.AdapterContextMenuInfo)paramContextMenuInfo).position;
    if ((i < 0) || (i >= getDataList().size()));
    while (true)
    {
      return;
      kv localkv = (kv)getDataList().get(i);
      int j = localkv.mState;
      if ((j == 0) || (j == 1) || (j == -1) || (j == 2))
      {
        ContextMenuDialog localContextMenuDialog = new ContextMenuDialog((Activity)this.mContext);
        ArrayList localArrayList = new ArrayList();
        localContextMenuDialog.setContextItemPosition(i);
        ContextMenuModel localContextMenuModel = new ContextMenuModel();
        localContextMenuModel.name = this.mContext.getString(2131428331);
        localContextMenuModel.eventCode = 10;
        localArrayList.add(localContextMenuModel);
        localContextMenuDialog.setDataAdapter(localArrayList);
        localContextMenuDialog.setOnItemClickListener(new bmg(this, localContextMenuDialog));
        localContextMenuDialog.setTitle(localkv.d.getAppName());
        localContextMenuDialog.show();
      }
    }
  }

  public void onDestroy()
  {
    super.onDestroy();
    TMSService.unBindService(of.class, this.e);
    this.e = null;
    if (of.a())
      TMSService.stopService(of.class);
  }

  protected void onSDCardUnmounted()
  {
    super.onSDCardUnmounted();
    if (this.a != null)
      this.a.pauseTask(this.a.getAllTasks());
  }

  public void onStart()
  {
    super.onStart();
    this.a.registListener(this.g);
    if (this.b)
    {
      this.b = false;
      a_();
    }
  }

  public void onStop()
  {
    super.onStop();
    this.a.unregistListener(this.g);
    this.b = true;
  }

  public void refreshListData()
  {
    f().notifyDataSetChanged();
    if ((this.mDataList == null) || (this.mDataList.size() <= 0))
      setEmptyText(this.mContext.getString(2131429794));
    while (true)
    {
      return;
      hideEmptyView();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bmd
 * JD-Core Version:    0.6.2
 */