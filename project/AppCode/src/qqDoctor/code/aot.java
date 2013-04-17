import android.content.Context;
import android.content.res.Resources;
import android.os.Handler;
import android.os.Message;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;
import com.tencent.qqpimsecure.uilib.view.BaseView;
import com.tencent.qqpimsecure.uilib.view.slide.SlideCallBackInterface;
import com.tencent.qqpimsecure.uilib.view.slide.SlideLayoutExPoint;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;

public final class aot extends BaseView
  implements SlideCallBackInterface
{
  private SlideLayoutExPoint a;
  private LinearLayout b;
  private LinearLayout.LayoutParams c;
  private int[] d;
  private int[] e = { 2130903236, 2130903238, 2130903237 };

  public aot(Context paramContext)
  {
    super(paramContext, 2130903239);
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
    this.a.setBackgroundColor(getActivity().getResources().getColor(2131296340));
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

  public final void onResume()
  {
    super.onResume();
  }

  public final void onSlideStart()
  {
  }

  public final void onSlideStop()
  {
  }

  protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
    paramFrameworkTemplateUI.setTitleTextData(this.mContext.getString(2131429002));
    paramFrameworkTemplateUI.setBackButtonStyle((byte)2);
    paramFrameworkTemplateUI.setOptionButtonStyle((byte)16);
    paramFrameworkTemplateUI.setInfoBarStyle((byte)49);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     aot
 * JD-Core Version:    0.6.2
 */