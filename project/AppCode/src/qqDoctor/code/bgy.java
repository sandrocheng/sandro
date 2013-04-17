import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Handler;
import android.os.Message;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import com.tencent.qqpimsecure.ui.activity.privacy.PrivacyPatternPasswordSettingActivity;
import com.tencent.qqpimsecure.uilib.model.OperatingModel;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;
import com.tencent.qqpimsecure.uilib.view.BaseView;
import com.tencent.qqpimsecure.uilib.view.slide.SlideCallBackInterface;
import com.tencent.qqpimsecure.uilib.view.slide.SlideLayoutExPoint;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import java.util.ArrayList;
import java.util.List;

public final class bgy extends BaseView
  implements SlideCallBackInterface
{
  private SlideLayoutExPoint a;
  private LinearLayout b;
  private LinearLayout.LayoutParams c;
  private int[] d;
  private int[] e = { 2130903222, 2130903224, 2130903223 };
  private int f;

  public bgy(Context paramContext)
  {
    super(paramContext, 2130903221);
  }

  public final List<OperatingModel> createOperatingBarDataList()
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new OperatingModel(0, 2131429548, 1));
    return localArrayList;
  }

  public final void onCreate()
  {
    super.onCreate();
    this.b = ((LinearLayout)findViewById(2131231263));
    this.d = this.e;
    this.c = new LinearLayout.LayoutParams(-1, -1);
    this.a = new SlideLayoutExPoint(getActivity());
    this.a.setBgType(2);
    int i = this.d.length;
    if (i == 1)
      i = 0;
    this.a.initSlideLayout(this.d[0], i);
    this.a.setCurrentCanvasIndex(0);
    this.a.addSlideCallBackInterface(this);
    this.a.setBackgroundColor(getActivity().getResources().getColor(2131296339));
    this.b.addView(this.a, this.c);
    if (this.d.length == 1)
    {
      this.a.invalidate();
      this.b.invalidate();
      this.a.setAllowSlide(false);
    }
    Message localMessage = new Message();
    localMessage.arg1 = 1;
    localMessage.what = 1;
    this.mHandler.sendMessage(localMessage);
  }

  public final void onHandlerMessage(Message paramMessage)
  {
    int i = paramMessage.arg1;
    switch (paramMessage.what)
    {
    default:
    case 1:
    }
    while (true)
    {
      super.onHandlerMessage(paramMessage);
      return;
      if (i < this.d.length)
      {
        this.a.addSlideLayout(this.d[i]);
        this.b.invalidate();
        if (i == -1 + this.d.length)
        {
          this.a.invalidate();
          this.b.invalidate();
        }
        else
        {
          Message localMessage = new Message();
          localMessage.arg1 = (i + 1);
          localMessage.what = 1;
          this.mHandler.sendMessage(localMessage);
        }
      }
      else
      {
        this.mHandler.removeMessages(1);
      }
    }
  }

  public final void onNextCanvas(int paramInt)
  {
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
      getActivity().finish();
      Context localContext = this.mContext;
      int i = this.f;
      int j = me.a;
      Intent localIntent = new Intent(localContext, PrivacyPatternPasswordSettingActivity.class);
      a.a(localIntent, i, j, null);
      localContext.startActivity(localIntent);
    }
  }

  public final void onResume()
  {
    super.onResume();
    ho.a().cG();
    Intent localIntent = getActivity().getIntent();
    if (localIntent != null)
      this.f = localIntent.getIntExtra("type", -1);
  }

  public final void onSlideStart()
  {
  }

  public final void onSlideStop()
  {
  }

  protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
    paramFrameworkTemplateUI.setTitleTextData(this.mContext.getString(2131427993));
    paramFrameworkTemplateUI.setBackButtonStyle((byte)2);
    paramFrameworkTemplateUI.setOptionButtonStyle((byte)16);
    paramFrameworkTemplateUI.setInfoBarStyle((byte)49);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bgy
 * JD-Core Version:    0.6.2
 */