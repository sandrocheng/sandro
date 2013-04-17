import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Message;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.qqpimsecure.uilib.model.OperatingModel;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;
import com.tencent.qqpimsecure.uilib.view.BaseView;
import com.tencent.qqpimsecure.uilib.view.ButtonView;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import java.util.ArrayList;
import java.util.List;

public abstract class bfy extends BaseView
{
  protected String a;
  protected TextView b;
  private EditText c = null;
  private EditText d = null;
  private String e = "";
  private String f = "";
  private Dialog g;
  private cd h;
  private ImageView i;
  private ImageView j;
  private TextView k;
  private int l;
  private TextWatcher m = new bgb(this);

  public bfy(Context paramContext)
  {
    super(paramContext, 2130903042);
    a();
  }

  private void d()
  {
    this.e = this.c.getText().toString();
    this.f = this.d.getText().toString();
    if (!a.h(this.mContext))
      a.a((Activity)this.mContext, -1001, new bgc(this));
    while (true)
    {
      return;
      if (this.e.equals(""))
      {
        ha.b(this.mContext, this.mContext.getString(2131430097));
      }
      else if (this.f.equals(""))
      {
        ha.b(this.mContext, this.mContext.getString(2131430101));
      }
      else
      {
        String str1 = this.e;
        String str2 = this.f;
        this.g = new Dialog(this.mContext);
        this.g.addProgressDialog();
        this.g.setTitle(2131427567);
        this.g.setMessage(2131427570);
        this.g.setNeutralButton(2131427379, new bgd(this), 2);
        this.g.show();
        new bge(this, str1, str2).start();
      }
    }
  }

  private void e()
  {
    View localView = LayoutInflater.from(this.mContext).inflate(2130903060, null);
    this.i = ((ImageView)localView.findViewById(2131230772));
    this.i.setImageDrawable(this.mContext.getResources().getDrawable(2130837949));
    ((ButtonView)localView.findViewById(2131230773)).setOnClickListener(new bgf(this));
    EditText localEditText = (EditText)localView.findViewById(2131230774);
    new bgi(this).start();
    Dialog localDialog = new Dialog(this.mContext);
    localDialog.setTitle(this.mContext.getResources().getString(2131427620));
    localDialog.setView(localView);
    localDialog.setPositiveButton(2131427397, new bgg(this, localEditText, localDialog), 2);
    localDialog.setNeutralButton(2131427379, new bgh(localDialog), 2);
    localDialog.show();
  }

  protected abstract void a();

  public void b()
  {
    if ((this.g != null) && (this.g.isShowing()))
    {
      this.g.dismiss();
      this.g = null;
    }
    getActivity().finish();
  }

  public abstract void c();

  public List<OperatingModel> createOperatingBarDataList()
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new OperatingModel(0, 2131428533, 1));
    ((OperatingModel)localArrayList.get(0)).setEnable(false);
    return localArrayList;
  }

  public void onCreate()
  {
    super.onCreate();
    this.e = "";
    this.f = "";
    this.c = ((EditText)findViewById(2131230729));
    this.d = ((EditText)findViewById(2131230731));
    this.b = ((TextView)findViewById(2131230732));
    this.b.setOnClickListener(new bfz(this));
    this.j = ((ImageView)findViewById(2131230726));
    this.k = ((TextView)findViewById(2131230727));
    this.c.setText(this.a);
    this.c.setEnabled(false);
    this.d.requestFocus();
    this.h = new az(this.mContext);
    this.d.addTextChangedListener(this.m);
    this.c.addTextChangedListener(this.m);
    this.l = 0;
  }

  public void onHandlerMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default:
    case 100000:
    case 100001:
    case 100002:
    }
    while (true)
    {
      return;
      b();
      continue;
      if ((this.g != null) && (this.g.isShowing()))
      {
        this.g.dismiss();
        this.g = null;
      }
      int n = ((Integer)paramMessage.obj).intValue();
      Resources localResources = this.mContext.getResources();
      switch (n)
      {
      case 0:
      default:
        Drawable localDrawable6 = localResources.getDrawable(2130837807);
        String str6 = localResources.getString(2131427633);
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = Integer.valueOf(n);
        String str7 = String.format(str6, arrayOfObject);
        int i6 = localResources.getColor(2131296392);
        this.j.setImageDrawable(localDrawable6);
        this.k.setText(str7);
        this.k.setTextColor(i6);
        this.l = (1 + this.l);
        break;
      case -1000:
        ha.a(this.mContext, 2131427679);
        Drawable localDrawable5 = localResources.getDrawable(2130837816);
        String str5 = localResources.getString(2131430159);
        int i5 = localResources.getColor(2131296262);
        this.j.setImageDrawable(localDrawable5);
        this.k.setText(str5);
        this.k.setTextColor(i5);
        this.l = (1 + this.l);
        break;
      case -100:
        ha.a(this.mContext, 2131428852);
        Drawable localDrawable4 = localResources.getDrawable(2130837816);
        String str4 = localResources.getString(2131430159);
        int i4 = localResources.getColor(2131296262);
        this.j.setImageDrawable(localDrawable4);
        this.k.setText(str4);
        this.k.setTextColor(i4);
        this.l = (1 + this.l);
        break;
      case 1003:
        Message localMessage = this.mHandler.obtainMessage(100000);
        this.mHandler.sendMessage(localMessage);
        break;
      case 101:
        e();
        break;
      case 205:
        Drawable localDrawable3 = localResources.getDrawable(2130837807);
        String str3 = localResources.getString(2131427609);
        int i3 = localResources.getColor(2131296392);
        this.j.setImageDrawable(localDrawable3);
        this.k.setText(str3);
        this.k.setTextColor(i3);
        this.l = (1 + this.l);
        break;
      case 209:
        Drawable localDrawable2 = localResources.getDrawable(2130837807);
        String str2 = localResources.getString(2131427610);
        int i2 = localResources.getColor(2131296392);
        this.j.setImageDrawable(localDrawable2);
        this.k.setText(str2);
        this.k.setTextColor(i2);
        e();
        this.l = (1 + this.l);
        break;
      case 203:
        Drawable localDrawable1 = localResources.getDrawable(2130837807);
        String str1 = localResources.getString(2131427614);
        int i1 = localResources.getColor(2131296392);
        this.j.setImageDrawable(localDrawable1);
        this.k.setText(str1);
        this.k.setTextColor(i1);
        this.d.setText("");
        this.l = (1 + this.l);
        continue;
        Bitmap localBitmap = (Bitmap)paramMessage.obj;
        if ((this.i != null) && (localBitmap != null))
        {
          this.i.setImageBitmap(localBitmap);
        }
        else if ((this.i != null) && (localBitmap == null))
        {
          this.i.setImageResource(2130837950);
          ha.a(this.mContext, 2131427613);
        }
        break;
      }
    }
  }

  public void onOperatingBarClick(OperatingModel paramOperatingModel)
  {
    switch (paramOperatingModel.getID())
    {
    default:
    case 0:
    }
    while (true)
    {
      return;
      d();
    }
  }

  public void onResume()
  {
    super.onResume();
  }

  public void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
    paramFrameworkTemplateUI.setTitleTextData(2131430114);
    paramFrameworkTemplateUI.setBackButtonStyle((byte)2);
    paramFrameworkTemplateUI.setOptionButtonStyle((byte)16);
    paramFrameworkTemplateUI.setInfoBarStyle((byte)49);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bfy
 * JD-Core Version:    0.6.2
 */