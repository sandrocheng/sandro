import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.Bitmap.Config;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.hardware.Camera;
import android.hardware.Camera.CameraInfo;
import android.hardware.Camera.Parameters;
import android.os.Handler;
import android.os.Message;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.SurfaceHolder;
import android.view.SurfaceHolder.Callback;
import android.view.SurfaceView;
import android.view.ViewGroup.LayoutParams;
import android.view.Window;
import android.view.WindowManager;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.tencent.faceverify.util.EyeInfo;
import com.tencent.faceverify.util.FaceLib;
import com.tencent.faceverify.util.FaceLoc;
import com.tencent.faceverify.util.ImageInfo;
import com.tencent.faceverify.util.ImageSize;
import com.tencent.faceverify.util.Utils;
import com.tencent.qqpimsecure.ui.activity.faceverify.AddUserInfoActivity;
import com.tencent.qqpimsecure.ui.activity.faceverify.CameraCaptureActivity;
import com.tencent.qqpimsecure.ui.activity.faceverify.VerifyResultActivity;
import com.tencent.qqpimsecure.ui.activity.privacy.PrivacyPatternPasswordEnterActivity;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;
import com.tencent.qqpimsecure.uilib.view.BaseView;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import com.tencent.qqpimsecure.view.faceverify.FaceEyesView;
import com.tencent.tmsecure.utils.PhoneInfoUtil;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public final class arn extends BaseView
  implements SurfaceHolder.Callback
{
  private static String a = "CameraCaptureView";
  private static int g = 0;
  private static Object h = new Object();
  private int A;
  private boolean B;
  private int[] C = null;
  private byte[] D;
  private g E = null;
  private boolean F;
  private long G;
  private long H;
  private List<ImageInfo> I = new ArrayList();
  private Context J;
  private ho K;
  private DisplayMetrics L;
  private Dialog M;
  private boolean N;
  private boolean O;
  private boolean P;
  private Animation Q;
  private ImageView R;
  private int S;
  private boolean T;
  private int U;
  private String V;
  private String W;
  private int b = 1;
  private int c = 2;
  private int d = 320;
  private int e = 240;
  private int f = 15000;
  private a i;
  private arm j = null;
  private SurfaceView k = null;
  private SurfaceHolder l = null;
  private FaceEyesView m = null;
  private LinearLayout n = null;
  private ViewGroup.LayoutParams o;
  private FrameLayout p = null;
  private TextView q = null;
  private TextView r = null;
  private float s;
  private int t;
  private int u = 16;
  private int v;
  private int w;
  private String x = null;
  private int y;
  private int z;

  public arn(Context paramContext)
  {
    super(paramContext, 2130903146);
    getActivity().getWindow().addFlags(128);
    this.J = paramContext;
    this.K = ho.a();
  }

  private static arr a(int paramInt1, int paramInt2, int paramInt3, byte[] paramArrayOfByte, int paramInt4, boolean paramBoolean, int paramInt5, int paramInt6)
  {
    long l1 = System.currentTimeMillis();
    ary.a().a(l1, paramArrayOfByte);
    return new arr(paramInt1, paramInt2, paramInt3, l1, paramInt4, paramBoolean, paramInt5, paramInt6);
  }

  private boolean a(SurfaceHolder paramSurfaceHolder)
  {
    try
    {
      i1 = ((CameraCaptureActivity)this.J).getWindowManager().getDefaultDisplay().getOrientation();
      locala = this.i;
      i2 = this.v;
      localCamera1 = locala.a;
      if (localCamera1 == null)
      {
        localCameraInfo1 = new Camera.CameraInfo();
        i3 = Camera.getNumberOfCameras();
        if (i3 > 0)
        {
          i4 = 0;
          break label483;
        }
        if (localCamera1 == null)
          throw new IOException();
      }
    }
    catch (IOException localIOException)
    {
      int i1;
      a locala;
      int i2;
      Camera localCamera1;
      Camera.CameraInfo localCameraInfo1;
      localIOException.printStackTrace();
      boolean bool = false;
      return bool;
      Camera.getCameraInfo(i4, localCameraInfo1);
      if (localCameraInfo1.facing == i2)
      {
        localCamera1 = Camera.open(i4);
        break label493;
        locala.a = localCamera1;
        locala.a.setPreviewDisplay(paramSurfaceHolder);
        Camera.Parameters localParameters = locala.a.getParameters();
        List localList = localParameters.getSupportedFocusModes();
        if ((localList != null) && (localList.contains("auto")));
        for (locala.d = true; ; locala.d = false)
        {
          localParameters.setPreviewSize(locala.b.x, locala.b.y);
          locala.a.setParameters(localParameters);
          Camera localCamera2 = locala.a;
          localCameraInfo2 = new Camera.CameraInfo();
          Camera.getCameraInfo(i2, localCameraInfo2);
          switch (i1)
          {
          case 0:
            if (localCameraInfo2.facing != 1)
              break label462;
            i6 = (360 - (i5 + localCameraInfo2.orientation) % 360) % 360;
            new StringBuilder("displayOrientation = ").append(i6).toString();
            localCamera2.setDisplayOrientation(90);
            if (i6 == 0)
              i6 = 270;
            if (i6 != 90)
              Utils.isSpecialPhone = true;
            this.w = i6;
            this.j.a(this.i);
            this.G = System.currentTimeMillis();
            new StringBuilder("CameraCaptureActivity bootstrap time: ").append(this.G - this.H).append("ms").toString();
            bool = true;
            break label96;
          case 1:
          case 2:
          case 3:
          }
        }
      }
    }
    catch (RuntimeException localRuntimeException)
    {
      while (true)
      {
        int i3;
        int i4;
        label96: label99: Camera.CameraInfo localCameraInfo2;
        localRuntimeException.printStackTrace();
        continue;
        int i5 = 0;
        continue;
        i5 = 90;
        continue;
        i5 = 180;
        continue;
        i5 = 270;
        continue;
        label462: int i6 = (360 + (localCameraInfo2.orientation - i5)) % 360;
        continue;
        while (true)
        {
          label483: if (i4 < i3)
            break label99;
          break;
          label493: i4++;
        }
        i5 = 0;
      }
    }
  }

  public static boolean b()
  {
    boolean bool;
    while (true)
    {
      synchronized (h)
      {
        if (g == 0)
        {
          if (FaceLib.faceInit() != 0)
          {
            bool = false;
            break;
          }
          g = 1 + g;
          bool = true;
        }
      }
      g = 1 + g;
    }
    return bool;
  }

  public static boolean c()
  {
    synchronized (h)
    {
      int i1 = -1 + g;
      g = i1;
      if (i1 == 0)
      {
        FaceLib.faceRelease();
        return true;
      }
    }
  }

  public static void e()
  {
  }

  private void g()
  {
    if (this.A == this.c)
    {
      Context localContext = this.J;
      int i1 = this.U;
      String str = this.W;
      Intent localIntent = new Intent(localContext, PrivacyPatternPasswordEnterActivity.class);
      a.a(localIntent, i1, -1, str);
      localContext.startActivity(localIntent);
    }
    getActivity().finish();
  }

  private boolean h()
  {
    this.F = true;
    int i1;
    if (System.currentTimeMillis() - this.G > this.f)
    {
      i1 = 1;
      if (i1 == 0)
        break label45;
      this.j.sendEmptyMessage(7);
    }
    while (true)
    {
      return true;
      i1 = 0;
      break;
      label45: if (!this.B)
      {
        if (this.C == null);
        try
        {
          this.C = new int[this.y * this.z << 1];
          if (FaceLib.faceImgCut(this.C, this.z, this.y, ImageSize.class, FaceLoc.class, EyeInfo.class) == 0)
            break label120;
        }
        catch (Exception localException)
        {
          localException.printStackTrace();
        }
        continue;
        label120: byte[] arrayOfByte1 = this.D;
        int i2 = this.y;
        int i3 = this.z;
        int[] arrayOfInt = this.C;
        int i4 = ImageSize.width;
        int i5 = ImageSize.height;
        Bitmap localBitmap1 = Utils.rawYuvArray2BitmapNew(arrayOfByte1, i2, i3);
        Bitmap localBitmap2 = Bitmap.createBitmap(i4, i5, Bitmap.Config.RGB_565);
        int i6 = -i4;
        int i7 = 0;
        while (i7 < i5)
        {
          int i9 = i6 + i4;
          for (int i10 = 0; i10 < i4; i10++)
          {
            int i11 = i9 + i10;
            int i12 = -1 + (i3 - arrayOfInt[(i11 << 1)]);
            int i13 = arrayOfInt[(1 + (i11 << 1))];
            if (!Utils.isSpecialPhone)
              i13 = -1 + (i2 - i13);
            localBitmap2.setPixel(i10, i7, localBitmap1.getPixel(i13, i12));
          }
          i7++;
          i6 = i9;
        }
        ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
        localBitmap2.compress(Bitmap.CompressFormat.JPEG, 70, localByteArrayOutputStream);
        byte[] arrayOfByte2 = localByteArrayOutputStream.toByteArray();
        if (arrayOfByte2 != null)
        {
          this.B = true;
          int i8 = arrayOfByte2.length;
          ImageInfo localImageInfo = new ImageInfo(FaceLoc.left, FaceLoc.top, FaceLoc.width, FaceLoc.height, ImageSize.width, ImageSize.height, i8, arrayOfByte2);
          this.I.clear();
          this.I.add(localImageInfo);
          new Thread(new arq(this)).start();
        }
      }
    }
  }

  public final void a()
  {
    if ((this.O) && (!this.N))
    {
      a locala = this.i;
      if ((locala.a != null) && (locala.c) && (locala.d))
        locala.a.autoFocus(new b());
    }
  }

  public final void a(Message paramMessage)
  {
    this.P = true;
    int i1;
    if (paramMessage.arg1 == 0)
    {
      i1 = 1;
      if ((this.M != null) && (this.M.isShowing()))
        this.M.dismiss();
      if (i1 != 0)
        break label83;
      ha.b(this.J, 2131430005);
      this.J.getString(2131430005);
      ((CameraCaptureActivity)this.J).finish();
    }
    while (true)
    {
      return;
      i1 = 0;
      break;
      label83: int[] arrayOfInt1 = new int[2];
      int[] arrayOfInt2 = new int[2];
      int[] arrayOfInt3 = new int[2];
      this.n.getLocationOnScreen(arrayOfInt1);
      this.k.getLocationOnScreen(arrayOfInt2);
      this.p.getLocationOnScreen(arrayOfInt3);
      new StringBuilder("mSurfaceLl: x, y, width, height: ").append(arrayOfInt3[0]).append(",").append(arrayOfInt3[1]).append(",").append(this.p.getWidth()).append(",").append(this.p.getHeight()).toString();
      new StringBuilder("mSurfaceView: x, y, width, height: ").append(arrayOfInt2[0]).append(",").append(arrayOfInt2[1]).append(",").append(this.k.getWidth()).append(",").append(this.k.getHeight()).toString();
      new StringBuilder("mPromptLl: x, y, width, height: ").append(arrayOfInt1[0]).append(",").append(arrayOfInt1[1]).append(",").append(this.n.getWidth()).append(",").append(this.n.getHeight()).toString();
      int i2 = this.L.widthPixels;
      Point localPoint = this.i.b;
      int i3 = i2 * localPoint.x / localPoint.y;
      this.s = (i2 / localPoint.y);
      this.t = ((int)(this.u / (2.0F * this.s)));
      new StringBuilder("mScale: ").append(this.s).append(", mEyeSquareMarkBias: ").append(this.t).toString();
      ViewGroup.LayoutParams localLayoutParams1 = this.k.getLayoutParams();
      localLayoutParams1.height = i3;
      localLayoutParams1.width = i2;
      this.k.setLayoutParams(localLayoutParams1);
      ViewGroup.LayoutParams localLayoutParams2 = this.p.getLayoutParams();
      localLayoutParams2.height = i3;
      localLayoutParams2.width = i2;
      this.p.setLayoutParams(localLayoutParams2);
      ViewGroup.LayoutParams localLayoutParams3 = this.R.getLayoutParams();
      localLayoutParams3.width = i2;
      this.R.setLayoutParams(localLayoutParams3);
      ViewGroup.LayoutParams localLayoutParams4 = this.n.getLayoutParams();
      localLayoutParams4.height = this.n.getHeight();
      localLayoutParams4.width = i2;
      new StringBuilder("mPromptLl: width, height: ").append(localLayoutParams4.width).append(",").append(localLayoutParams4.height).toString();
      this.n.setLayoutParams(localLayoutParams4);
      this.o = localLayoutParams4;
      this.R.setVisibility(0);
      this.R.startAnimation(this.Q);
      this.O = true;
    }
  }

  public final void b(Message paramMessage)
  {
    this.D = ((byte[])paramMessage.obj);
    this.y = paramMessage.arg2;
    this.z = paramMessage.arg1;
    if (this.N);
    label538: 
    while (true)
    {
      return;
      switch (paramMessage.what)
      {
      default:
        break;
      case 4:
        this.S = (1 + this.S);
        Rect localRect1 = new Rect((int)(this.s * FaceLoc.left), (int)(this.s * FaceLoc.top), (int)(this.s * (FaceLoc.left + FaceLoc.width)), (int)(this.s * (FaceLoc.top + FaceLoc.height)));
        Rect localRect2 = new Rect((int)(this.s * (EyeInfo.xLeft - this.t)), (int)(this.s * (EyeInfo.yLeft - this.t)), (int)(this.s * (EyeInfo.xLeft + this.t)), (int)(this.s * (EyeInfo.yLeft + this.t)));
        Rect localRect3 = new Rect((int)(this.s * (EyeInfo.xRight - this.t)), (int)(this.s * (EyeInfo.yRight - this.t)), (int)(this.s * (EyeInfo.xRight + this.t)), (int)(this.s * (EyeInfo.yRight + this.t)));
        this.m.a(true, localRect1, localRect2, localRect3);
        if (this.A == this.b)
        {
          if (!this.F)
          {
            this.F = true;
            this.q.setText(this.J.getString(2131430007));
          }
          for (int i2 = 1; i2 != 0; i2 = 0)
          {
            this.j.b();
            break;
            this.F = true;
            if (this.S < 5)
              break label322;
            this.N = true;
            Intent localIntent = new Intent();
            localIntent.putExtra("dataInfo4Ui", a(this.w, this.y, this.z, this.D, 7, this.F, this.o.width, this.o.height));
            localIntent.setClass(this.J, AddUserInfoActivity.class);
            this.J.startActivity(localIntent);
            getActivity().finish();
          }
        }
        h();
        this.j.b();
        break;
      case 5:
        label322: this.S = 0;
        this.m.a(false, null, null, null);
        this.j.b();
        if (this.A == this.c)
        {
          if (System.currentTimeMillis() - this.G > this.f);
          for (int i1 = 1; ; i1 = 0)
          {
            if (i1 == 0)
              break label538;
            this.j.sendEmptyMessage(7);
            break;
          }
        }
        break;
      }
    }
  }

  public final void c(Message paramMessage)
  {
    boolean bool = true;
    Intent localIntent = new Intent();
    if (this.N);
    while (true)
    {
      return;
      nd localnd = nd.a();
      switch (paramMessage.what)
      {
      default:
        break;
      case 6:
        localnd.a(26432);
        this.N = bool;
        localIntent.putExtra("dataInfo4Ui", a(this.w, this.y, this.z, this.D, 6, this.F, this.o.width, this.o.height));
        localIntent.putExtra("type", this.U);
        if ((this.U == 2) && (this.W != null))
          localIntent.putExtra("PkgName", this.W);
        localIntent.putExtra("CameraCaptureFirstTry", this.T);
        localIntent.setClass(this.J, VerifyResultActivity.class);
        this.J.startActivity(localIntent);
        getActivity().finish();
        break;
      case 8:
        if (System.currentTimeMillis() - this.G > this.f);
        while (bool)
        {
          this.j.sendEmptyMessage(7);
          break;
          bool = false;
        }
      case 7:
        this.N = bool;
        localnd.a(26431);
        localIntent.putExtra("dataInfo4Ui", a(this.w, this.y, this.z, this.D, 7, this.F, this.o.width, this.o.height));
        localIntent.putExtra("type", this.U);
        if ((this.U == 2) && (this.W != null))
          localIntent.putExtra("PkgName", this.W);
        localIntent.putExtra("CameraCaptureFirstTry", this.T);
        localIntent.setClass(this.J, VerifyResultActivity.class);
        this.J.startActivity(localIntent);
        getActivity().finish();
      }
    }
  }

  public final void d()
  {
    this.r.setVisibility(4);
  }

  public final a f()
  {
    return this.i;
  }

  public final Handler getHandler()
  {
    return this.j;
  }

  public final void onBackClick()
  {
    if ((!this.P) || (this.N))
      new StringBuilder("mCanExit:").append(this.P).append(",mRequestExitFlag:").append(this.N).toString();
    while (true)
    {
      return;
      this.N = true;
      if (this.U == 2)
        new yj(this.J).a();
      getActivity().finish();
      super.onBackClick();
    }
  }

  public final void onCreate()
  {
    super.onCreate();
    this.H = System.currentTimeMillis();
    this.L = new DisplayMetrics();
    getActivity().getWindowManager().getDefaultDisplay().getMetrics(this.L);
    this.m = ((FaceEyesView)findViewById(2131231004));
    this.k = ((SurfaceView)findViewById(2131231003));
    this.n = ((LinearLayout)findViewById(2131231006));
    this.q = ((TextView)findViewById(2131231007));
    this.p = ((FrameLayout)findViewById(2131231002));
    this.r = ((TextView)findViewById(2131231001));
    this.R = ((ImageView)findViewById(2131231005));
    this.Q = AnimationUtils.loadAnimation(this.J, 2130968592);
    this.v = Utils.getCameraInfoFacingFrontConst();
    this.j = new arm(this);
    this.l = this.k.getHolder();
    this.B = false;
    this.N = false;
    this.E = new g();
    this.O = false;
    this.P = true;
    this.M = new Dialog(this.J);
    this.M.setCancelable(false);
    this.M.addProgressDialog();
    Intent localIntent = getActivity().getIntent();
    if (localIntent != null)
    {
      this.U = localIntent.getIntExtra("type", -1);
      this.V = localIntent.getStringExtra("CameraCaptureAction");
      if (this.U == 2)
      {
        this.W = localIntent.getStringExtra("PkgName");
        setBackText(2131427447);
      }
      this.T = localIntent.getBooleanExtra("CameraCaptureFirstTry", false);
      if (this.T)
      {
        this.r.setVisibility(0);
        this.r.setText(2131430012);
        this.r.getBackground().setAlpha(170);
        this.j.sendEmptyMessageDelayed(12, 3000L);
      }
    }
    label465: Context localContext;
    String str1;
    if ((this.V != null) && (this.V.equals("CameraCaptureActionInit")))
    {
      this.A = this.b;
      fl localfl = a.g(this.J);
      if (localfl == fl.d)
      {
        String str4 = this.J.getString(2131429999);
        if (this.A == this.b)
          ha.b(this.J, str4);
        g();
      }
      if (localfl != fl.a)
        break label692;
      this.f = 15000;
      this.x = this.K.cI();
      if ((this.x == null) || (this.x.equals("")))
      {
        localContext = this.J;
        str1 = PhoneInfoUtil.getIMEI(localContext);
        if ((str1 == null) || (str1.equals("")))
          break label702;
      }
    }
    while (true)
    {
      this.x = str1;
      if ((this.x != null) && (!this.x.equals("")))
        this.K.G(this.x);
      if ((this.x == null) || (this.x.equals("")))
      {
        String str2 = this.J.getString(2131430001);
        if (this.A == this.b)
          ha.b(this.J, str2);
        g();
      }
      if (!b())
      {
        String str3 = this.J.getString(2131430000);
        if (this.A == this.b)
          ha.b(this.J, str3);
        g();
      }
      this.l.addCallback(this);
      this.l.setType(3);
      return;
      this.A = this.c;
      break;
      label692: this.f = 30000;
      break label465;
      label702: str1 = PhoneInfoUtil.getMAC(localContext);
      if ((str1 == null) || (str1.equals("")))
        str1 = "";
    }
  }

  public final void onDestroy()
  {
    super.onDestroy();
    c();
  }

  public final void onOptionClick(int paramInt)
  {
    super.onOptionClick(paramInt);
    if ((this.P) && (!this.N))
    {
      this.N = true;
      Context localContext = this.J;
      int i1 = this.U;
      String str = this.W;
      Intent localIntent = new Intent(localContext, PrivacyPatternPasswordEnterActivity.class);
      a.a(localIntent, i1, -1, str);
      localContext.startActivity(localIntent);
      getActivity().finish();
    }
    while (true)
    {
      return;
      new StringBuilder("mCanExit:").append(this.P).append(",mRequestExitFlag:").append(this.N).toString();
    }
  }

  public final void onPause()
  {
    super.onPause();
  }

  public final void onResume()
  {
    super.onResume();
    if (this.U == 2)
      setBackText(2131427447);
    this.S = 0;
    this.m.a(false, null, null, null);
    if (this.A == this.c)
      this.q.setText(this.J.getString(2131430027));
    while (true)
    {
      this.N = false;
      return;
      this.q.setText(this.J.getString(2131430006));
    }
  }

  public final void onStart()
  {
    super.onStart();
  }

  public final void onStop()
  {
    super.onStop();
  }

  protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
    paramFrameworkTemplateUI.setInfoBarStyle((byte)49);
    if (this.A == this.c)
    {
      paramFrameworkTemplateUI.setTitleTextData(2131429992);
      paramFrameworkTemplateUI.setTitleBarBackground(this.J, 2130837731);
      paramFrameworkTemplateUI.setBackButtonBackground(this.J, 2130838325);
      paramFrameworkTemplateUI.setBackButtonTextColor(this.J, 2131296262);
      paramFrameworkTemplateUI.setOptionButtonBackground(null);
      if (!this.T)
        paramFrameworkTemplateUI.setOptionButtonWithImageResource(2130837729);
    }
    while (true)
    {
      paramFrameworkTemplateUI.setTitleBarLayoutPadding();
      return;
      paramFrameworkTemplateUI.setTitleTextData(2131429995);
      paramFrameworkTemplateUI.setOptionButtonStyle((byte)16);
    }
  }

  public final void surfaceChanged(SurfaceHolder paramSurfaceHolder, int paramInt1, int paramInt2, int paramInt3)
  {
    new StringBuilder("width*height: ").append(paramInt2).append("*").append(paramInt3).toString();
  }

  public final void surfaceCreated(SurfaceHolder paramSurfaceHolder)
  {
    this.M.setMessage(2131430003);
    this.P = false;
    new Thread(new aro(this)).start();
    this.M.show();
  }

  public final void surfaceDestroyed(SurfaceHolder paramSurfaceHolder)
  {
    this.R.clearAnimation();
    this.N = true;
    if (this.O)
      new Thread(new arp(this)).start();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     arn
 * JD-Core Version:    0.6.2
 */