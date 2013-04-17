import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.GridView;
import com.tencent.qqpimsecure.uilib.model.UIConfigModel;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;
import com.tencent.qqpimsecure.uilib.view.BaseView;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import java.util.LinkedList;
import java.util.List;

public final class asx extends BaseView
{
  private int a;
  private GridView b;
  private ajh c;
  private List<lq> d;
  private ata e;
  private boolean f;
  private Handler g = new asy(this);
  private AdapterView.OnItemClickListener h = new asz(this);

  public asx(Context paramContext)
  {
    super(paramContext, 2130903152);
    new ig();
  }

  public final void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if ((paramInt2 != -1) || (paramIntent == null));
    while (true)
    {
      return;
      if (paramInt1 == 1)
      {
        getActivity().setResult(-1, paramIntent);
        getActivity().finish();
      }
    }
  }

  public final void onBackClick()
  {
    getActivity().finish();
  }

  protected final void onConfigModelCreate(UIConfigModel paramUIConfigModel)
  {
    paramUIConfigModel.mCreateEmptyTemplateUI = true;
    paramUIConfigModel.mEmptyTemplateType = 1;
  }

  public final void onCreate()
  {
    super.onCreate();
    this.b = ((GridView)findViewById(2131231011));
    this.b.setOnItemClickListener(this.h);
    this.b.setNumColumns(3);
    this.b.setColumnWidth(lm.e.a);
    this.b.setHorizontalSpacing(lm.e.c);
    this.b.setVerticalSpacing(lm.e.d);
    this.a = getActivity().getIntent().getIntExtra("type", 0);
    this.d = new LinkedList();
    this.c = new ajh(this.mContext, this.b, this.d);
    this.b.setAdapter(this.c);
    this.b.setOnScrollListener(this.c);
    this.c.b();
    this.f = false;
  }

  public final void onDestroy()
  {
    super.onDestroy();
    if (this.e != null)
    {
      this.e.d();
      this.e.e();
      this.e = null;
    }
    this.c.c();
  }

  public final void onPause()
  {
    super.onPause();
  }

  public final void onResume()
  {
    super.onResume();
  }

  public final void onStart()
  {
    super.onStart();
    if (!this.f)
    {
      this.c.b(false);
      if (this.e == null)
      {
        this.e = new ata(this.mContext, this.a, fi.a(), this.g);
        this.e.a();
        this.e.b();
      }
    }
    while (true)
    {
      return;
      this.e.b();
      continue;
      this.c.b(false);
    }
  }

  public final void onStop()
  {
    super.onStop();
    if ((this.e != null) && (!this.f))
      this.e.c();
    this.c.b(true);
    this.c.a(true);
  }

  protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
    if (this.a == 0);
    for (String str = this.mContext.getString(2131429839); ; str = this.mContext.getString(2131429840))
    {
      paramFrameworkTemplateUI.setTitleTextData(str);
      paramFrameworkTemplateUI.setTitleBarBackground(this.mContext, 2130838200);
      paramFrameworkTemplateUI.setTitleTextColor(this.mContext, 2131296262);
      paramFrameworkTemplateUI.setBackButtonBackground(this.mContext, 2130838325);
      paramFrameworkTemplateUI.setBackGroundColor(this.mContext, 2131296276);
      paramFrameworkTemplateUI.setOptionButtonBackground(null);
      paramFrameworkTemplateUI.setBackButtonTextColor(this.mContext, 2131296262);
      paramFrameworkTemplateUI.setOptionButtonStyle((byte)16);
      paramFrameworkTemplateUI.setInfoBarStyle((byte)49);
      paramFrameworkTemplateUI.setTitleBarLayoutPadding();
      return;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     asx
 * JD-Core Version:    0.6.2
 */