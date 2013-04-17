import QQPIM.AnalyseInfo;
import QQPIM.EIllegaReason;
import QQPIM.FeatureKey;
import QQPIM.SoftInfo;
import QQPIM.SoftKey;
import QQPIM.SoftListType;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.Signature;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.Message;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RatingBar;
import android.widget.RatingBar.OnRatingBarChangeListener;
import android.widget.TextView;
import com.tencent.qqpimsecure.ui.activity.ShareActivity;
import com.tencent.qqpimsecure.ui.activity.market.SDcardNotEnoughDialog;
import com.tencent.qqpimsecure.ui.activity.market.SoftwareScreenShotActivity;
import com.tencent.qqpimsecure.ui.activity.virus.ProfessionalKillerListActivity;
import com.tencent.qqpimsecure.uilib.model.OperatingModel;
import com.tencent.qqpimsecure.uilib.model.UIConfigModel;
import com.tencent.qqpimsecure.uilib.service.IRetryListener;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;
import com.tencent.qqpimsecure.uilib.view.BaseView;
import com.tencent.qqpimsecure.uilib.view.ButtonView;
import com.tencent.qqpimsecure.uilib.view.ProgressBarView;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import com.tencent.tmsecure.common.BaseServiceConnection;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.common.TMSApplication;
import com.tencent.tmsecure.common.TMSService;
import com.tencent.tmsecure.module.applist.AppListManager;
import com.tencent.tmsecure.module.networkload.DownloadServiceBinder;
import com.tencent.tmsecure.module.networkload.NetworkLoadTaskListener;
import com.tencent.tmsecure.module.software.SoftwareManager;
import com.tencent.tmsecure.utils.PhoneInfoUtil;
import com.tencent.tmsecure.utils.PhoneInfoUtil.SizeInfo;
import com.tencent.tmsecure.utils.ScriptHelper;
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

public class bnd extends BaseView
  implements View.OnClickListener, AdapterView.OnItemClickListener, RatingBar.OnRatingBarChangeListener, IRetryListener
{
  public static List<Drawable> a = new ArrayList();
  public static List<String> b;
  public static sl c;
  private RatingBar A;
  private RatingBar B;
  private Dialog C;
  private List<OperatingModel> D;
  private LinearLayout E;
  private ImageView F;
  private TextView G;
  private ButtonView H;
  private ButtonView I;
  private boolean J;
  private FeatureKey K;
  private AnalyseInfo L;
  private int M;
  private int N;
  private int O = -1;
  private int P;
  private int[] Q = new int[0];
  private boolean R = false;
  private boolean S;
  private BaseServiceConnection T = new BaseServiceConnection(bnd.class);
  private String U;
  private Dialog V;
  private String W;
  private Handler X = new bne(this);
  private DownloadServiceBinder Y;
  private kv Z;
  private NetworkLoadTaskListener aa = new bnl(this);
  private SoftwareManager d;
  private GridView e;
  private LinearLayout f;
  private Drawable g;
  private als h;
  private ImageView i;
  private TextView j;
  private TextView k;
  private TextView l;
  private TextView m;
  private TextView n;
  private TextView o;
  private TextView p;
  private TextView q;
  private TextView r;
  private TextView s;
  private ImageView t;
  private ProgressBarView u;
  private ButtonView v;
  private LinearLayout w;
  private LinearLayout x;
  private LinearLayout y;
  private LinearLayout z;

  public bnd(Context paramContext)
  {
    super(paramContext, 2130903252);
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
          int i1 = localPackageInfo.signatures.length;
          localObject = null;
          if (i1 > 0)
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

  private void a()
  {
    if (this.Z.d.n() == 2)
    {
      this.y.setVisibility(0);
      if (this.O != -1)
      {
        this.B.setIsIndicator(true);
        this.B.setProgress(this.O);
        this.v.setVisibility(8);
        this.n.setVisibility(0);
        this.n.setText(this.mContext.getString(2131427892));
      }
    }
  }

  private void a(int paramInt, boolean paramBoolean)
  {
    if ((paramInt <= 0) || (paramInt >= 100))
      if ((paramInt == 0) && (paramBoolean))
      {
        this.x.setVisibility(0);
        this.u.startAnimation();
        this.u.setProgress(0);
      }
    while (true)
    {
      return;
      if (this.x.getVisibility() == 0)
      {
        this.x.setVisibility(8);
        this.u.stopAnimation();
        continue;
        if (this.x.getVisibility() != 0)
        {
          this.x.setVisibility(0);
          this.u.startAnimation();
        }
        if (this.u.getProgress() < paramInt)
          this.u.setProgress(paramInt);
      }
    }
  }

  private void a(String paramString, ImageView paramImageView)
  {
    lv locallv = new lv();
    locallv.b = 0;
    locallv.g = paramString.hashCode();
    locallv.d = paramString;
    locallv.a = 0;
    locallv.c = paramImageView;
    locallv.i = new bnj();
    c.b(locallv);
  }

  private void a(int[] paramArrayOfInt)
  {
    Iterator localIterator = this.D.iterator();
    OperatingModel localOperatingModel1;
    int i1;
    if (localIterator.hasNext())
    {
      localOperatingModel1 = (OperatingModel)localIterator.next();
      i1 = 0;
      label32: if (i1 >= paramArrayOfInt.length)
        break label145;
      if (paramArrayOfInt[i1] != localOperatingModel1.getID());
    }
    label139: label145: for (int i2 = 1; ; i2 = 0)
    {
      if ((this.Z.d != null) && (this.Z.d.k().equals("")) && (this.M != 2000004));
      for (OperatingModel localOperatingModel2 = localOperatingModel1; ; localOperatingModel2 = localOperatingModel1)
      {
        OperatingModel localOperatingModel3 = localOperatingModel2;
        for (int i3 = 8; ; i3 = 0)
        {
          localOperatingModel3.setVisible(i3);
          refreshOperatingBar(localOperatingModel1);
          break;
          i1++;
          break label32;
          if (i2 == 0)
            break label139;
          localOperatingModel3 = localOperatingModel1;
        }
        return;
      }
    }
  }

  private void b()
  {
    this.Z.mProgress = of.c(this.Z);
    if (this.Z.mProgress > 0.0F)
      a((int)(100.0F * this.Z.mProgress), false);
    while (true)
    {
      return;
      if (this.x.getVisibility() == 0)
      {
        this.x.setVisibility(8);
        this.u.stopAnimation();
      }
    }
  }

  private void c()
  {
    int i1;
    if (this.L != null)
    {
      i1 = this.d.getAppVersionStatus(this.K.getUniCode(), this.L.getSoftInfo().getSoftkey().getVersioncode());
      String str = a(this.K.getUniCode());
      if ((!this.Z.d.isSystemApp()) && (str != null) && (!str.equals(this.Z.d.getCertMD5())) && (i1 == 1))
        i1 = -1;
      switch (i1)
      {
      default:
      case -2:
      case -1:
      case 1:
      case 0:
      case 2:
      }
    }
    while (true)
    {
      a(this.Q);
      return;
      if (this.Z != null)
        switch (this.Z.mState)
        {
        default:
          break;
        case -4:
        case -3:
        case -2:
          if (i1 == -1)
          {
            if (this.Z.mState == -2)
            {
              this.Q = new int[] { 0 };
            }
            else if (this.Z.mState == -3)
            {
              this.Z.mState = 3;
              this.Q = new int[] { 1 };
            }
          }
          else if ((i1 == 1) || (this.Z.mState == -4))
          {
            if (this.Z.d.isSystemApp())
              this.Q = new int[] { 3, 7 };
            else
              this.Q = new int[] { 3, 2 };
          }
          else if (this.Z.mState == -2)
            if (this.Z.d.isSystemApp())
              this.Q = new int[] { 7 };
            else
              this.Q = new int[] { 2 };
          break;
        case -1:
          this.Q = new int[] { 8, 6 };
          break;
        case 0:
          this.Q = new int[] { 4, 6 };
          break;
        case 1:
        case 2:
          this.Q = new int[] { 5, 6 };
          break;
        case 3:
          this.Q = new int[] { 1 };
          continue;
          if ((this.Z != null) && (this.Z.d.isSystemApp()))
          {
            this.Q = new int[] { 7 };
          }
          else
          {
            this.Q = new int[] { 2 };
            continue;
            if ((this.S) && (this.Z.d != null) && (this.Z.d.isSystemApp()))
              this.Q = new int[] { 7 };
          }
          break;
        }
    }
  }

  private boolean d()
  {
    boolean bool = false;
    int i1;
    if (!Environment.getExternalStorageState().equals("mounted"))
    {
      i1 = 1;
      if (i1 != 1)
        break label56;
      ha.b(this.mContext, this.mContext.getString(2131429514));
    }
    while (true)
    {
      return bool;
      if (!a.b())
      {
        i1 = 2;
        break;
      }
      i1 = 0;
      break;
      label56: if (i1 == 2)
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

  private boolean e()
  {
    boolean bool = true;
    if ((this.d.getAppVersionStatus(this.K.getUniCode(), this.L.getSoftInfo().getSoftkey().getVersioncode()) == -1) && (this.Z.mState == 3))
    {
      File localFile = of.d(this.Z);
      String str = localFile.getPath();
      if (this.d.getApkInfo(str, 77) == null)
      {
        ha.a(this.mContext, this.mContext.getString(2131427345));
        localFile.delete();
        ov.a().e(this.Z.d.getPackageName());
        this.Y.deleteTask(this.Z, bool);
        this.Z.mCurrentSize = 0L;
        this.Z.mProgress = 0.0F;
        this.Z.mState = -2;
        c();
      }
    }
    while (true)
    {
      return bool;
      bool = false;
    }
  }

  private void f()
  {
    File localFile = of.d(this.Z);
    if ((localFile != null) && (localFile.exists()));
    while (true)
    {
      try
      {
        this.d.installApp(localFile);
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

  protected List<OperatingModel> createOperatingBarDataList()
  {
    this.D = new ArrayList();
    this.D.add(new OperatingModel(0, 2131428121));
    this.D.add(new OperatingModel(1, 2131427342));
    this.D.add(new OperatingModel(2, 2131428430));
    this.D.add(new OperatingModel(3, 2131428347));
    this.D.add(new OperatingModel(4, 2131428329));
    this.D.add(new OperatingModel(5, 2131427417));
    this.D.add(new OperatingModel(6, 2131428331));
    this.D.add(new OperatingModel(7, 2131427402));
    this.D.add(new OperatingModel(8, 2131429640));
    Iterator localIterator = this.D.iterator();
    while (localIterator.hasNext())
      ((OperatingModel)localIterator.next()).setVisible(8);
    return this.D;
  }

  public void onBackClick()
  {
    Intent localIntent1 = getActivity().getIntent();
    boolean bool = false;
    if (localIntent1 != null)
      bool = localIntent1.getBooleanExtra("extra_back_to_main", false);
    if (bool)
    {
      Context localContext = this.mContext;
      Intent localIntent2 = new Intent(localContext, ProfessionalKillerListActivity.class);
      localIntent2.putExtra("extra_back_to_main", true);
      localContext.startActivity(localIntent2);
    }
    super.onBackClick();
  }

  public void onCancel()
  {
  }

  public void onClick(View paramView)
  {
    boolean bool = true;
    switch (paramView.getId())
    {
    default:
    case 2131231374:
    case 2131231385:
    case 2131231389:
      while (true)
      {
        return;
        Message localMessage = this.X.obtainMessage(7);
        localMessage.obj = this.mContext.getString(2131428565);
        this.X.sendMessage(localMessage);
        new Thread(new bng(this)).start();
        continue;
        if (!this.J);
        while (true)
        {
          this.J = bool;
          if (!this.J)
            break label171;
          if (this.U != null)
            this.o.setText(this.U);
          this.G.setText(2131428127);
          this.F.setImageResource(2130838039);
          break;
          bool = false;
        }
        label171: if ((this.U != null) && (this.U.length() >= 55))
          this.o.setText(this.U.substring(0, 55) + "...");
        this.G.setText(2131428126);
        this.F.setImageResource(2130838038);
        continue;
        String[] arrayOfString1 = new String[6];
        arrayOfString1[0] = this.mContext.getString(2131427973);
        arrayOfString1[bool] = this.mContext.getString(2131427974);
        arrayOfString1[2] = this.mContext.getString(2131427975);
        arrayOfString1[3] = this.mContext.getString(2131427976);
        arrayOfString1[4] = this.mContext.getString(2131427977);
        arrayOfString1[5] = this.mContext.getString(2131427978);
        String[] arrayOfString2 = new String[6];
        arrayOfString2[0] = EIllegaReason.IR_InvalidDownLoad.value();
        arrayOfString2[bool] = EIllegaReason.IR_InvalidInstall.value();
        arrayOfString2[2] = EIllegaReason.IR_Pay.value();
        arrayOfString2[3] = EIllegaReason.IR_Virus.value();
        arrayOfString2[4] = EIllegaReason.IR_WrongInfo.value();
        arrayOfString2[5] = EIllegaReason.IR_NeedUpdate.value();
        a.a(this.mContext, arrayOfString1, arrayOfString2, this.mContext.getString(2131427980), new fb(this, arrayOfString2));
      }
    case 2131231390:
    }
    Intent localIntent = new Intent(this.mContext, ShareActivity.class);
    if (this.K != null)
    {
      String str2 = this.mContext.getString(2131430054);
      Object[] arrayOfObject2 = new Object[bool];
      arrayOfObject2[0] = this.K.getSoftName();
      localIntent.putExtra("default_content", String.format(str2, arrayOfObject2));
    }
    while (true)
    {
      localIntent.putExtra("from_where", 3);
      this.mContext.startActivity(localIntent);
      break;
      String str1 = this.mContext.getString(2131430054);
      Object[] arrayOfObject1 = new Object[bool];
      arrayOfObject1[0] = "";
      localIntent.putExtra("default_content", String.format(str1, arrayOfObject1));
    }
  }

  protected void onConfigModelCreate(UIConfigModel paramUIConfigModel)
  {
    paramUIConfigModel.mCreateImageLoaderService = true;
  }

  public void onCreate()
  {
    super.onCreate();
    c = getImageLoaderService();
    this.i = ((ImageView)findViewById(2131231135));
    this.h = new als(this, a);
    this.f = ((LinearLayout)findViewById(2131231378));
    this.e = ((GridView)findViewById(2131231379));
    this.e.setOnItemClickListener(this);
    this.g = this.mContext.getResources().getDrawable(2130838291);
    this.j = ((TextView)findViewById(2131231364));
    this.k = ((TextView)findViewById(2131231381));
    this.l = ((TextView)findViewById(2131231382));
    this.p = ((TextView)findViewById(2131231383));
    this.m = ((TextView)findViewById(2131231365));
    this.n = ((TextView)findViewById(2131231373));
    this.o = ((TextView)findViewById(2131231384));
    findViewById(2131231388);
    this.q = ((TextView)findViewById(2131231368));
    this.r = ((TextView)findViewById(2131231391));
    this.E = ((LinearLayout)findViewById(2131231385));
    this.F = ((ImageView)findViewById(2131231386));
    this.G = ((TextView)findViewById(2131231387));
    this.u = ((ProgressBarView)findViewById(2131231370));
    this.H = ((ButtonView)findViewById(2131231389));
    this.I = ((ButtonView)findViewById(2131231390));
    this.H.setOnClickListener(this);
    this.I.setOnClickListener(this);
    this.v = ((ButtonView)findViewById(2131231374));
    this.w = ((LinearLayout)findViewById(2131231367));
    this.x = ((LinearLayout)findViewById(2131231369));
    this.y = ((LinearLayout)findViewById(2131231371));
    this.z = ((LinearLayout)findViewById(2131231375));
    this.A = ((RatingBar)findViewById(2131231366));
    this.B = ((RatingBar)findViewById(2131231372));
    this.s = ((TextView)findViewById(2131231139));
    this.t = ((ImageView)findViewById(2131231138));
    this.v.setOnClickListener(this);
    this.E.setOnClickListener(this);
    this.B.setOnRatingBarChangeListener(this);
    this.V = new Dialog(this.mContext);
    this.V.setCancelable(false);
    this.V.addProgressDialog();
    this.V.setMessage(2131429559);
    Bundle localBundle = getActivity().getIntent().getExtras();
    this.M = localBundle.getInt("key_category_id");
    this.N = localBundle.getInt("key_pos");
    this.P = localBundle.getInt("key_appid");
    this.K = new FeatureKey("", "", "", 1, "", 0);
    String str1 = localBundle.getString("key_pkg_name");
    if (str1 == null)
      str1 = "";
    String str2 = localBundle.getString("key_soft_name");
    if (str2 == null)
      str2 = "";
    String str3 = localBundle.getString("key_soft_version");
    if (str3 == null)
      str3 = "";
    int i1 = localBundle.getInt("key_soft_version_code");
    String str4 = localBundle.getString("key_cert_md5");
    if (str4 == null)
      str4 = "";
    this.K = new FeatureKey(str1, str2, str3, i1, str4, (int)localBundle.getLong("key_apk_size"));
    this.k.setText(this.mContext.getString(2131428885) + this.K.getVersion());
    this.l.setText(this.mContext.getString(2131428886) + a.b(this.K.getFileSize()));
    this.v.setText(this.mContext.getString(2131428883));
    if (localBundle.getString("key_publish_time") != null)
      this.p.setText(this.mContext.getString(2131428887) + localBundle.getString("key_publish_time"));
    if (localBundle.getInt("key_category_id") == 3000000)
    {
      this.q.setText(localBundle.getString("key_source_content"));
      this.q.setVisibility(0);
    }
    this.d = ((SoftwareManager)ManagerCreator.getManager(SoftwareManager.class));
    TMSService.startService(new of());
    this.Y = ((DownloadServiceBinder)TMSService.bindService(of.class, this.T));
    this.Z = of.a(this.K.uniCode, this.Y.getAllTasks());
    if (this.Z == null)
      this.Z = of.a(this.K.uniCode);
    if ((this.Z == null) || (this.Z.d == null) || (this.K.cert == null) || (!this.K.cert.equals(this.Z.d.getCertMD5())) || (this.Z.d.D() < this.K.versionCode))
      this.Z = new kv();
    if ((this.Z != null) && (this.Z.d != null))
      this.Z.d.setIcon(null);
    new Thread(new bnd.a((byte)0)).start();
  }

  public void onDestroy()
  {
    super.onDestroy();
    TMSService.unBindService(of.class, this.T);
    this.T = null;
    if (of.a())
      TMSService.stopService(of.class);
  }

  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    Intent localIntent = new Intent(this.mContext, SoftwareScreenShotActivity.class);
    localIntent.putExtra("position", paramInt);
    this.mContext.startActivity(localIntent);
  }

  public void onOperatingBarClick(OperatingModel paramOperatingModel)
  {
    switch (paramOperatingModel.getID())
    {
    default:
    case 0:
    case 1:
    case 3:
    case 5:
    case 2:
    case 4:
    case 6:
    case 7:
    }
    while (true)
    {
      return;
      if (d())
      {
        PhoneInfoUtil.SizeInfo localSizeInfo2 = new PhoneInfoUtil.SizeInfo();
        PhoneInfoUtil.getStorageCardSize(localSizeInfo2);
        long l2 = localSizeInfo2.a;
        if (this.Z.d.getSize() > l2)
        {
          Intent localIntent2 = new Intent();
          localIntent2.setClass(this.mContext, SDcardNotEnoughDialog.class);
          this.mContext.startActivity(localIntent2);
        }
        else
        {
          this.Z.isOnChangeRetry = false;
          this.Y.startTask(this.Z);
          continue;
          if (!e())
          {
            f();
            continue;
            if (d())
              if ((this.Z.mState == 3) && (!e()))
              {
                f();
              }
              else
              {
                PhoneInfoUtil.SizeInfo localSizeInfo1 = new PhoneInfoUtil.SizeInfo();
                PhoneInfoUtil.getStorageCardSize(localSizeInfo1);
                long l1 = localSizeInfo1.a;
                if (this.Z.d.getSize() > l1)
                {
                  Intent localIntent1 = new Intent();
                  localIntent1.setClass(this.mContext, SDcardNotEnoughDialog.class);
                  this.mContext.startActivity(localIntent1);
                }
                else
                {
                  this.Z.isOnChangeRetry = false;
                  this.Y.startTask(this.Z);
                  continue;
                  if (d())
                  {
                    this.Z.isOnChangeRetry = false;
                    this.Y.continueTask(this.Z);
                    continue;
                    this.d.startUpApp(this.K.getUniCode());
                    continue;
                    this.Y.pauseTask(this.Z);
                    continue;
                    Dialog localDialog5 = new Dialog(this.mContext);
                    localDialog5.setTitle(this.mContext.getString(2131428434));
                    localDialog5.setMessage(this.mContext.getString(2131428564));
                    localDialog5.setPositiveButton(2131427397, new bnm(this, localDialog5), 2);
                    localDialog5.setNegativeButton(2131427379, new bnn(localDialog5), 2);
                    localDialog5.show();
                    continue;
                    BaseUIActivity localBaseUIActivity = getActivity();
                    kw localkw = this.Z.d;
                    if (ScriptHelper.canRunAtRoot() != 0)
                    {
                      fy.a(localBaseUIActivity);
                    }
                    else if (((AppListManager)ManagerCreator.getManager(AppListManager.class)).contains(localkw.getPackageName(), SoftListType.BLACKLIST_ROM))
                    {
                      Dialog localDialog1 = new Dialog(localBaseUIActivity);
                      localDialog1.setTitle(2131428434);
                      localDialog1.setMessage(localBaseUIActivity.getString(2131429194) + localBaseUIActivity.getString(2131428504));
                      localDialog1.setPositiveButton(2131427382, new gr(localBaseUIActivity, localkw, localDialog1), 1);
                      localDialog1.setNegativeButton(2131427379, new gs(localDialog1), 2);
                      localDialog1.show();
                    }
                    else if (localkw.e() == -1)
                    {
                      Dialog localDialog2 = new Dialog(localBaseUIActivity);
                      localDialog2.setTitle(localBaseUIActivity.getString(2131429170));
                      localDialog2.setMessage(localBaseUIActivity.getString(2131429171));
                      localDialog2.setPositiveButton(2131429172, new gt(localDialog2), 1);
                      localDialog2.setNegativeButton(2131427382, new gg(localBaseUIActivity, localkw, localDialog2), 2);
                      localDialog2.show();
                    }
                    else if ((localkw.isSystemApp()) && (localkw.e() == 1))
                    {
                      Dialog localDialog4 = new Dialog(localBaseUIActivity);
                      localDialog4.setTitle(2131429170);
                      localDialog4.setContentView(LayoutInflater.from(localBaseUIActivity).inflate(2130903264, null));
                      localDialog4.setPositiveButton(2131427382, new gi(localBaseUIActivity, localkw, localDialog4), 2);
                      localDialog4.setNegativeButton(2131427379, new gj(localDialog4), 1);
                      localDialog4.show();
                    }
                    else if ((localkw.isSystemApp()) && (localkw.e() == 0))
                    {
                      Dialog localDialog3 = new Dialog(localBaseUIActivity);
                      localDialog3.setTitle(2131429170);
                      View localView = LayoutInflater.from(localBaseUIActivity).inflate(2130903264, null);
                      localView.findViewById(2131231436).setVisibility(8);
                      ((TextView)localView.findViewById(2131230871)).setText(2131429179);
                      localDialog3.setContentView(localView);
                      localDialog3.setPositiveButton(2131427382, new gk(localBaseUIActivity, localkw, localDialog3), 2);
                      localDialog3.setNegativeButton(2131427379, new gl(localDialog3), 1);
                      localDialog3.show();
                    }
                  }
                }
              }
          }
        }
      }
    }
  }

  public void onRatingChanged(RatingBar paramRatingBar, float paramFloat, boolean paramBoolean)
  {
    int i1 = paramRatingBar.getProgress();
    if (i1 == 0)
    {
      this.v.setVisibility(8);
      this.n.setVisibility(0);
    }
    while (true)
    {
      return;
      this.n.setVisibility(8);
      this.v.setVisibility(0);
      this.O = i1;
    }
  }

  public void onResume()
  {
    super.onResume();
    this.X.sendEmptyMessage(9);
    this.X.sendEmptyMessage(10);
  }

  public void onRetry()
  {
    new Thread(new bnd.a((byte)0)).start();
  }

  protected void onSDCardUnmounted()
  {
    super.onSDCardUnmounted();
    if (this.Y != null)
      this.Y.pauseTask(this.Y.getAllTasks());
  }

  public void onStart()
  {
    super.onStart();
    this.Y.registListener(this.aa);
    if (this.R)
    {
      this.R = false;
      c();
      b();
    }
    a.a(this, 2131428020);
  }

  public void onStop()
  {
    super.onStop();
    this.Y.unregistListener(this.aa);
    this.R = true;
  }

  protected void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
    if (this.W != null)
      paramFrameworkTemplateUI.setTitleTextData(this.W);
    while (true)
    {
      paramFrameworkTemplateUI.setInfoBarStyle((byte)49);
      return;
      paramFrameworkTemplateUI.setTitleTextData(this.K.getSoftName());
    }
  }

  final class a
    implements Runnable
  {
    private a()
    {
    }

    public final void run()
    {
      bnd.q(bnd.this).sendEmptyMessage(19);
      bnd.r(bnd.this);
      bnd.q(bnd.this).sendEmptyMessage(1);
      bnd.s(bnd.this);
      bnd.q(bnd.this).sendEmptyMessage(3);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bnd
 * JD-Core Version:    0.6.2
 */