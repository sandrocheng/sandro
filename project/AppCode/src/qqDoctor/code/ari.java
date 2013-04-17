import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.Bitmap.Config;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Message;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.View.OnClickListener;
import android.view.ViewGroup.LayoutParams;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.tencent.faceverify.util.EyeInfo;
import com.tencent.faceverify.util.FaceLib;
import com.tencent.faceverify.util.FaceLoc;
import com.tencent.faceverify.util.ImageInfo;
import com.tencent.faceverify.util.ImageSize;
import com.tencent.qqpimsecure.ui.activity.faceverify.AddUserInfoActivity;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;
import com.tencent.qqpimsecure.uilib.view.BaseView;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import java.io.ByteArrayOutputStream;
import java.util.ArrayList;
import java.util.List;

public final class ari extends BaseView
{
  private int a;
  private int b;
  private int c;
  private byte[] d;
  private int[] e;
  private byte[] f;
  private ImageView g;
  private LinearLayout h;
  private LinearLayout i;
  private LinearLayout j;
  private TextView k;
  private String l = null;
  private Context m;
  private List<ImageInfo> n = new ArrayList();
  private Dialog o;
  private Bitmap p;
  private View.OnClickListener q;
  private ho r;
  private DisplayMetrics s;
  private ari.a t;
  private Handler u = new arj(this);

  public ari(Context paramContext)
  {
    super(paramContext, 2130903145);
    this.m = paramContext;
  }

  public final void onBackClick()
  {
    if (this.r.cH())
      ha.b(this.m, 2131430035);
    super.onBackClick();
  }

  public final void onCreate()
  {
    super.onCreate();
    this.s = new DisplayMetrics();
    ((AddUserInfoActivity)this.m).getWindowManager().getDefaultDisplay().getMetrics(this.s);
    arr localarr = (arr)getActivity().getIntent().getParcelableExtra("dataInfo4Ui");
    this.a = localarr.a;
    this.b = localarr.b;
    this.c = localarr.c;
    this.d = ary.a().a(localarr.d);
    if (this.d == null)
      getActivity().finish();
    while (true)
    {
      return;
      this.e = new int[this.b * this.c << 1];
      this.g = ((ImageView)findViewById(2131230996));
      this.h = ((LinearLayout)findViewById(2131230998));
      this.i = ((LinearLayout)findViewById(2131230999));
      this.j = ((LinearLayout)findViewById(2131230997));
      this.k = ((TextView)findViewById(2131231001));
      this.k.getBackground().setAlpha(170);
      this.r = ho.a();
      this.l = this.r.cI();
      this.o = new Dialog(this.m);
      this.o.addProgressDialog();
      this.o.setTitle(2131429993);
      this.o.setMessage(2131430016);
      this.o.setOnCancelListener(new ark(this));
      this.q = new arl(this);
      this.h.setOnClickListener(this.q);
      this.i.setOnClickListener(this.q);
      this.p = a.a(this.d, this.b, this.c, this.a);
      int i1 = this.s.widthPixels;
      int i2 = i1 * this.p.getHeight() / this.p.getWidth();
      new StringBuilder("newWidth * newHeight: ").append(i1).append(",").append(i2).toString();
      ViewGroup.LayoutParams localLayoutParams1 = this.g.getLayoutParams();
      localLayoutParams1.height = i2;
      localLayoutParams1.width = i1;
      this.g.setLayoutParams(localLayoutParams1);
      this.g.setImageBitmap(this.p);
      ViewGroup.LayoutParams localLayoutParams2 = this.j.getLayoutParams();
      localLayoutParams2.height = localarr.h;
      localLayoutParams2.width = localarr.g;
      this.j.setLayoutParams(localLayoutParams2);
    }
  }

  public final void onDestroy()
  {
    super.onDestroy();
    if ((this.o != null) && (this.o.isShowing()))
    {
      this.o.dismiss();
      this.o = null;
    }
    if (this.p != null)
      this.p.recycle();
  }

  public final void onResume()
  {
    super.onResume();
  }

  protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
    paramFrameworkTemplateUI.setTitleTextData(2131429995);
    paramFrameworkTemplateUI.setInfoBarStyle((byte)49);
  }

  final class a extends Thread
  {
    private boolean a = false;
    private Handler b;
    private int c;

    public a(Handler arg2)
    {
      Object localObject;
      this.b = localObject;
    }

    private boolean b()
    {
      try
      {
        boolean bool = this.a;
        return bool;
      }
      finally
      {
        localObject = finally;
        throw localObject;
      }
    }

    final void a()
    {
      try
      {
        this.a = true;
        return;
      }
      finally
      {
        localObject = finally;
        throw localObject;
      }
    }

    public final void run()
    {
      this.c = -5;
      e locale = new e();
      int j;
      if (ari.g(ari.this) == null)
      {
        int k = ari.h(ari.this).getWidth();
        int m = ari.h(ari.this).getHeight();
        if (FaceLib.faceImgCut(ari.i(ari.this), k, m, ImageSize.class, FaceLoc.class, EyeInfo.class) != 0)
          j = 3;
      }
      while (true)
      {
        if (!b())
        {
          Message localMessage = this.b.obtainMessage(j, this.c, 0);
          this.b.sendMessage(localMessage);
        }
        return;
        ari localari = ari.this;
        Bitmap localBitmap1 = ari.h(ari.this);
        int[] arrayOfInt = ari.i(ari.this);
        int n = ImageSize.width;
        int i1 = ImageSize.height;
        Bitmap localBitmap2 = Bitmap.createBitmap(n, i1, Bitmap.Config.RGB_565);
        int i2 = -n;
        int i3 = 0;
        while (i3 < i1)
        {
          int i4 = i2 + n;
          for (int i5 = 0; i5 < n; i5++)
          {
            int i6 = i4 + i5;
            localBitmap2.setPixel(i5, i3, localBitmap1.getPixel(arrayOfInt[(i6 << 1)], arrayOfInt[(1 + (i6 << 1))]));
          }
          i3++;
          i2 = i4;
        }
        ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
        localBitmap2.compress(Bitmap.CompressFormat.JPEG, 70, localByteArrayOutputStream);
        ari.a(localari, localByteArrayOutputStream.toByteArray());
        if (ari.g(ari.this) == null)
        {
          j = 3;
        }
        else
        {
          ari.j(ari.this).clear();
          int i = ari.g(ari.this).length;
          ImageInfo localImageInfo = new ImageInfo(FaceLoc.left, FaceLoc.top, FaceLoc.width, FaceLoc.height, ImageSize.width, ImageSize.height, i, ari.g(ari.this));
          ari.j(ari.this).add(localImageInfo);
          String str = ari.k(ari.this);
          List localList = ari.j(ari.this);
          locale.a = str;
          locale.b = localList;
          this.c = locale.b();
          if (this.c == 0)
          {
            j = 1;
          }
          else
          {
            new StringBuilder("ret = ").append(this.c).toString();
            j = 2;
          }
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ari
 * JD-Core Version:    0.6.2
 */