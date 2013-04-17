import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Rect;
import android.os.Handler;
import android.os.Message;
import android.view.View.OnClickListener;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;
import com.tencent.qqpimsecure.uilib.view.BaseView;
import com.tencent.qqpimsecure.uilib.view.ButtonView;
import com.tencent.qqpimsecure.uilib.view.CheckBoxView;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import com.tencent.tmsecure.utils.PhoneInfoUtil;
import java.io.UnsupportedEncodingException;
import java.util.concurrent.atomic.AtomicReference;

public final class aou extends BaseView
{
  private Dialog A;
  private Handler B = new aov(this);
  private View.OnClickListener C = new aow(this);
  private View.OnClickListener D = new aox(this);
  private Runnable E = new aoy(this);
  private View.OnClickListener F = new aoz(this);
  private ho a;
  private LinearLayout b;
  private EditText c;
  private ButtonView d;
  private ButtonView e;
  private LinearLayout f;
  private EditText g;
  private EditText h;
  private ImageView i;
  private CheckBoxView j;
  private ButtonView k;
  private boolean l;
  private boolean m;
  private String n;
  private int o;
  private String p;
  private String q;
  private String r;
  private String s;
  private aou.a t = new aou.a((byte)0);
  private String u;
  private String v;
  private int w;
  private Thread x;
  private boolean y;
  private Object z = new Object();

  public aou(Context paramContext)
  {
    super(paramContext, 2130903247);
  }

  private int a(long paramLong, String paramString1, String paramString2, String paramString3, int paramInt)
  {
    AtomicReference localAtomicReference = new AtomicReference();
    Context localContext = this.mContext;
    String str = this.r;
    byte[] arrayOfByte1 = j.a(paramLong, paramString1, paramString2, PhoneInfoUtil.getIMEI(localContext), str, paramString3);
    int i1;
    int i2;
    if (arrayOfByte1 == null)
    {
      i1 = -1;
      if (i1 != -1)
        break label176;
      Message localMessage11 = this.B.obtainMessage(599, this.mContext.getString(2131430076));
      this.B.sendMessage(localMessage11);
      i2 = -1;
    }
    while (true)
    {
      return i2;
      byte[] arrayOfByte2 = j.a("http://ticannon.3g.qq.com/g/api", arrayOfByte1);
      if (arrayOfByte2 == null)
      {
        i1 = -1;
        break;
      }
      o localo = j.c(arrayOfByte2);
      if (localo == null)
      {
        i1 = -1;
        break;
      }
      if ((localo.a.intValue() == 0) && (localo.b.intValue() == 0))
      {
        localAtomicReference.set(localo);
        i1 = 0;
        break;
      }
      localAtomicReference.set(localo);
      i1 = 1;
      break;
      label176: if (i1 == 0)
      {
        this.p = ((o)localAtomicReference.get()).f;
        this.q = ((o)localAtomicReference.get()).g;
        this.m = false;
        this.o = paramInt;
        Message localMessage10 = this.B.obtainMessage(200, "");
        this.B.sendMessage(localMessage10);
        i2 = 0;
      }
      else
      {
        i2 = -1;
        if ((((o)localAtomicReference.get()).a.intValue() == 0) && (((o)localAtomicReference.get()).b != null));
        switch (((o)localAtomicReference.get()).b.intValue())
        {
        default:
          break;
        case -100:
        case 209:
        case 101:
        case 201:
        case 203:
        case -1:
        case -4:
        case -10:
          while (true)
          {
            Message localMessage3 = this.B.obtainMessage(206, ((o)localAtomicReference.get()).c);
            this.B.sendMessage(localMessage3);
            Message localMessage4 = this.B.obtainMessage(208, ((o)localAtomicReference.get()).c);
            this.B.sendMessage(localMessage4);
            break;
            this.r = ((o)localAtomicReference.get()).d;
            this.s = ((o)localAtomicReference.get()).e;
            Message localMessage9 = this.B.obtainMessage(207, this.mContext.getString(2131430063));
            this.B.sendMessage(localMessage9);
            i2 = 1;
            Message localMessage8 = this.B.obtainMessage(201, ((o)localAtomicReference.get()).c);
            this.B.sendMessage(localMessage8);
            break;
            Message localMessage7 = this.B.obtainMessage(202, ((o)localAtomicReference.get()).c);
            this.B.sendMessage(localMessage7);
            break;
            Message localMessage6 = this.B.obtainMessage(203, ((o)localAtomicReference.get()).c);
            this.B.sendMessage(localMessage6);
            Message localMessage5 = this.B.obtainMessage(204, ((o)localAtomicReference.get()).c);
            this.B.sendMessage(localMessage5);
            Message localMessage2 = this.B.obtainMessage(205, ((o)localAtomicReference.get()).c);
            this.B.sendMessage(localMessage2);
          }
          Message localMessage1 = this.B.obtainMessage(201, ((o)localAtomicReference.get()).c);
          this.B.sendMessage(localMessage1);
        }
      }
    }
  }

  public static Bitmap a(Bitmap paramBitmap)
  {
    Matrix localMatrix = new Matrix();
    localMatrix.reset();
    localMatrix.setScale(2.0F, 2.0F);
    return Bitmap.createBitmap(paramBitmap, 0, 0, paramBitmap.getWidth(), paramBitmap.getHeight(), localMatrix, true);
  }

  public static Bitmap a(Bitmap paramBitmap, int paramInt)
  {
    int i1 = paramBitmap.getWidth();
    int i2 = paramBitmap.getHeight();
    Canvas localCanvas = new Canvas(paramBitmap);
    Paint localPaint = new Paint();
    localPaint.setStyle(Paint.Style.STROKE);
    localPaint.setColor(paramInt);
    localCanvas.drawRect(new Rect(0, 0, i1 - 1, i2 - 1), localPaint);
    return paramBitmap;
  }

  private boolean a(aou.a parama)
  {
    boolean bool = false;
    if ((this.g.getText() == null) || (this.g.getText().toString().equals("")))
      ha.a(this.mContext, 2131430072);
    while (true)
    {
      return bool;
      String str = this.g.getText().toString();
      int i1;
      if (str.contains("@"))
        i1 = 1;
      while (true)
      {
        if (i1 != 1)
          break label109;
        ha.b(this.mContext, 2131430073);
        bool = false;
        break;
        if (str.matches("\\d*"))
          i1 = 2;
        else
          i1 = 3;
      }
      label109: if (i1 == 2)
        parama.a = new Long(str).longValue();
      while (true)
      {
        if ((this.h.getText() != null) && (!this.h.getText().toString().equals("")))
          break label181;
        ha.a(this.mContext, 2131430074);
        bool = false;
        break;
        parama.b = str;
      }
      try
      {
        label181: byte[] arrayOfByte = this.h.getText().toString().getBytes("utf-8");
        parama.c = j.a(arrayOfByte);
        bool = true;
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException)
      {
        localUnsupportedEncodingException.printStackTrace();
        bool = false;
      }
    }
  }

  public final void onBackClick()
  {
    this.y = true;
    if (this.x != null)
    {
      this.x.interrupt();
      this.x = null;
    }
    if ((this.A != null) && (this.A.isShowing()))
    {
      this.A.dismiss();
      this.A = null;
    }
    getActivity().finish();
  }

  public final void onCreate()
  {
    super.onCreate();
    this.b = ((LinearLayout)findViewById(2131231320));
    this.c = ((EditText)findViewById(2131231321));
    this.d = ((ButtonView)findViewById(2131231322));
    this.e = ((ButtonView)findViewById(2131231323));
    this.f = ((LinearLayout)findViewById(2131231324));
    this.k = ((ButtonView)findViewById(2131231328));
    this.j = ((CheckBoxView)findViewById(2131231327));
    this.g = ((EditText)findViewById(2131231325));
    this.h = ((EditText)findViewById(2131231326));
    Intent localIntent = getActivity().getIntent();
    this.w = localIntent.getIntExtra("from_where", 1);
    if (this.w != 1)
      this.e.setVisibility(8);
    this.u = localIntent.getStringExtra("default_content");
    if (this.u != null)
      this.c.setText(this.u);
    this.d.setButtonIcon(this.mContext.getResources().getDrawable(2130838358));
    this.d.setOnClickListener(this.C);
    this.k.setOnClickListener(this.F);
    this.e.setOnClickListener(this.D);
    this.j.setChecked(true);
    this.l = false;
    this.m = false;
    this.y = false;
    this.a = ho.a();
  }

  public final void onHandlerMessage(Message paramMessage)
  {
    super.onHandlerMessage(paramMessage);
  }

  protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
    paramFrameworkTemplateUI.setTitleTextData(2131430052);
    paramFrameworkTemplateUI.setBackButtonStyle((byte)2);
    paramFrameworkTemplateUI.setInfoBarStyle((byte)49);
  }

  static final class a
  {
    long a;
    String b;
    String c;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     aou
 * JD-Core Version:    0.6.2
 */