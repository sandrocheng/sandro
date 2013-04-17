import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Message;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import com.tencent.qqpimsecure.ui.activity.privacy.PrivacyPatternPasswordSettingActivity;
import com.tencent.qqpimsecure.uilib.model.OperatingModel;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;
import com.tencent.qqpimsecure.uilib.view.BaseView;
import com.tencent.qqpimsecure.uilib.view.ButtonView;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import java.util.ArrayList;
import java.util.List;

public final class bhc extends BaseView
{
  private EditText a = null;
  private EditText b = null;
  private String c = "";
  private String d = "";
  private Intent e;
  private ho f = ho.a();
  private Dialog g;
  private cd h;
  private ImageView i;
  private int j;
  private String k;
  private int l;
  private yj m;
  private TextWatcher n = new bhd(this);

  public bhc(Context paramContext)
  {
    super(paramContext, 2130903358);
    this.m = new yj(paramContext);
  }

  private void a()
  {
    View localView = LayoutInflater.from(this.mContext).inflate(2130903060, null);
    this.i = ((ImageView)localView.findViewById(2131230772));
    this.i.setImageDrawable(this.mContext.getResources().getDrawable(2130837949));
    ((ButtonView)localView.findViewById(2131230773)).setOnClickListener(new bhh(this));
    EditText localEditText = (EditText)localView.findViewById(2131230774);
    new bhk(this).start();
    Dialog localDialog = new Dialog(this.mContext);
    localDialog.setTitle(this.mContext.getResources().getString(2131427620));
    localDialog.setView(localView);
    localDialog.setPositiveButton(2131427397, new bhi(this, localEditText, localDialog), 2);
    localDialog.setNeutralButton(2131427379, new bhj(localDialog), 2);
    localDialog.show();
  }

  private static boolean b(Context paramContext)
  {
    Intent localIntent = new Intent("android.settings.WIRELESS_SETTINGS");
    boolean bool = false;
    if (paramContext != null);
    try
    {
      paramContext.startActivity(localIntent);
      bool = true;
      return bool;
    }
    catch (ActivityNotFoundException localActivityNotFoundException)
    {
      while (true)
        bool = false;
    }
  }

  public final List<OperatingModel> createOperatingBarDataList()
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new OperatingModel(0, 2131428533, 1));
    ((OperatingModel)localArrayList.get(0)).setEnable(false);
    return localArrayList;
  }

  public final void onBackClick()
  {
    if (this.j == 2)
      this.m.a();
    super.onBackClick();
  }

  public final void onCreate()
  {
    super.onCreate();
    this.c = "";
    this.d = "";
    this.a = ((EditText)findViewById(2131230729));
    this.b = ((EditText)findViewById(2131230731));
    this.e = getActivity().getIntent();
    if (this.e != null)
    {
      this.l = this.e.getIntExtra("action", -1);
      this.j = this.e.getIntExtra("type", -1);
      if (this.j == 2)
        this.k = this.e.getStringExtra("PkgName");
    }
    String str = this.f.ci();
    this.a.setText(str);
    this.a.setEnabled(false);
    this.b.requestFocus();
    this.h = new az(this.mContext);
    this.b.addTextChangedListener(this.n);
    this.a.addTextChangedListener(this.n);
  }

  public final void onHandlerMessage(Message paramMessage)
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
      if ((this.g != null) && (this.g.isShowing()))
      {
        this.g.dismiss();
        this.g = null;
      }
      getActivity().finish();
      this.f.z(this.c);
      Context localContext2 = this.mContext;
      int i2 = this.j;
      String str2 = this.k;
      int i3 = this.l;
      Intent localIntent = new Intent(localContext2, PrivacyPatternPasswordSettingActivity.class);
      a.a(localIntent, i2, i3, str2);
      localContext2.startActivity(localIntent);
      continue;
      if ((this.g != null) && (this.g.isShowing()))
      {
        this.g.dismiss();
        this.g = null;
      }
      int i1 = ((Integer)paramMessage.obj).intValue();
      switch (i1)
      {
      case 0:
      default:
        Context localContext1 = this.mContext;
        String str1 = this.mContext.getResources().getString(2131427633);
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = Integer.valueOf(i1);
        ha.a(localContext1, String.format(str1, arrayOfObject));
        break;
      case -1000:
        ha.a(this.mContext, 2131427679);
        break;
      case -100:
        ha.a(this.mContext, 2131428852);
        break;
      case 1003:
        Message localMessage = this.mHandler.obtainMessage(100000);
        this.mHandler.sendMessage(localMessage);
        break;
      case 101:
        a();
        break;
      case 205:
        ha.a(this.mContext, 2131427609);
        break;
      case 209:
        ha.a(this.mContext, 2131427610);
        a();
        break;
      case 203:
        ha.a(this.mContext, 2131427614);
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

  public final void onOperatingBarClick(OperatingModel paramOperatingModel)
  {
    switch (paramOperatingModel.getID())
    {
    default:
    case 0:
    }
    while (true)
    {
      return;
      this.c = this.a.getText().toString();
      this.d = this.b.getText().toString();
      if (!a.h(this.mContext))
      {
        Dialog localDialog = new Dialog(this.mContext);
        localDialog.setTitle(2131430135);
        localDialog.setMessage(2131430136);
        localDialog.setPositiveButton(2131430137, new bhm(this, localDialog), 1);
        localDialog.setNegativeButton(2131427379, new bhe(localDialog), 2);
        localDialog.show();
      }
      else if (this.c.equals(""))
      {
        ha.b(this.mContext, this.mContext.getString(2131430097));
      }
      else if (this.d.equals(""))
      {
        ha.b(this.mContext, this.mContext.getString(2131430101));
      }
      else
      {
        String str1 = this.c;
        String str2 = this.d;
        this.g = new Dialog(this.mContext);
        this.g.addProgressDialog();
        this.g.setTitle(2131427567);
        this.g.setMessage(2131427570);
        this.g.setNeutralButton(2131427379, new bhf(this), 2);
        this.g.show();
        new bhg(this, str1, str2).start();
      }
    }
  }

  public final void onOptionClick(int paramInt)
  {
    super.onOptionClick(paramInt);
  }

  public final void onResume()
  {
    super.onResume();
  }

  protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
    paramFrameworkTemplateUI.setTitleTextData(2131430114);
    paramFrameworkTemplateUI.setBackButtonStyle((byte)2);
    paramFrameworkTemplateUI.setInfoBarStyle((byte)49);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bhc
 * JD-Core Version:    0.6.2
 */