import android.content.Context;
import android.content.Intent;
import android.text.Editable;
import android.widget.EditText;
import android.widget.TextView;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;
import com.tencent.qqpimsecure.uilib.view.BaseView;
import com.tencent.qqpimsecure.uilib.view.ButtonView;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;

public final class bhn extends BaseView
{
  private TextView a;
  private EditText b;
  private final long[] c = { 0L, 30L, 80L };
  private int d;
  private String e;

  public bhn(Context paramContext)
  {
    super(paramContext, 2130903357);
  }

  public final void onBackClick()
  {
    if (this.d == 2)
      new yj(this.mContext).a();
    super.onBackClick();
  }

  public final void onCreate()
  {
    super.onCreate();
    this.a = ((TextView)findViewById(2131230903));
    this.b = ((EditText)findViewById(2131231084));
    this.b.setOnTouchListener(new bho(this));
    bhp localbhp = new bhp(this);
    ((ButtonView)findViewById(2131231692)).setOnClickListener(localbhp);
    ((ButtonView)findViewById(2131231682)).setOnClickListener(localbhp);
    ((ButtonView)findViewById(2131231683)).setOnClickListener(localbhp);
    ((ButtonView)findViewById(2131231684)).setOnClickListener(localbhp);
    ((ButtonView)findViewById(2131231685)).setOnClickListener(localbhp);
    ((ButtonView)findViewById(2131231686)).setOnClickListener(localbhp);
    ((ButtonView)findViewById(2131231687)).setOnClickListener(localbhp);
    ((ButtonView)findViewById(2131231688)).setOnClickListener(localbhp);
    ((ButtonView)findViewById(2131231689)).setOnClickListener(localbhp);
    ((ButtonView)findViewById(2131231690)).setOnClickListener(localbhp);
    findViewById(2131230905);
    ButtonView localButtonView = (ButtonView)findViewById(2131231693);
    localButtonView.setButtonContentImgID(2130837856, 2130837857);
    localButtonView.setOnClickListener(new bhq(this));
    ((ButtonView)findViewById(2131231691)).setOnClickListener(new bhr(this));
    ((ButtonView)findViewById(2131231681)).setOnClickListener(new bhs(this));
    String str = ho.a().ci();
    int i;
    boolean bool;
    label295: TextView localTextView;
    int j;
    if ((str != null) && (!str.equals("")))
    {
      i = 1;
      if (i == 0)
        break label340;
      bool = true;
      localTextView = this.a;
      j = 0;
      if (!bool)
        break label346;
    }
    while (true)
    {
      localTextView.setVisibility(j);
      this.a.setOnClickListener(new bht(this, bool));
      return;
      i = 0;
      break;
      label340: bool = false;
      break label295;
      label346: j = 4;
    }
  }

  public final void onResume()
  {
    super.onResume();
    Intent localIntent = getActivity().getIntent();
    if (localIntent != null)
    {
      this.d = localIntent.getIntExtra("type", -1);
      if (this.d == 2)
        this.e = localIntent.getStringExtra("PkgName");
    }
  }

  public final void onStart()
  {
    super.onStart();
  }

  public final void onStop()
  {
    super.onStop();
    this.b.getText().clear();
  }

  protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
    paramFrameworkTemplateUI.setTitleTextData(2131430103);
    paramFrameworkTemplateUI.setBackButtonStyle((byte)2);
    paramFrameworkTemplateUI.setOptionButtonStyle((byte)16);
    paramFrameworkTemplateUI.setInfoBarStyle((byte)49);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bhn
 * JD-Core Version:    0.6.2
 */