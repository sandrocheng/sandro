import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.view.LayoutInflater;
import android.view.View;
import com.tencent.qqpimsecure.uilib.view.PinnedHeaderListView;
import com.tencent.qqpimsecure.uilib.view.imageview.AutoLoadingView;

public abstract class awy<T> extends blt<T>
{
  protected View a;
  protected View b;
  private View d;
  private AutoLoadingView e;
  private AutoLoadingView f;

  public awy(Context paramContext)
  {
    super(paramContext);
  }

  public View getFooterView()
  {
    return LayoutInflater.from(this.mContext).inflate(2130903307, null);
  }

  public void onCreate()
  {
    super.onCreate();
    this.d = this.mFooterView.findViewById(2131231590);
    this.a = this.mFooterView.findViewById(2131231592);
    this.b = this.mFooterView.findViewById(2131231594);
    this.e = ((AutoLoadingView)this.d.findViewById(2131230972));
    this.f = ((AutoLoadingView)this.d.findViewById(2131230971));
    this.e.startRotationAnimation();
    this.f.startRotationAnimation();
  }

  public void onDestroy()
  {
    super.onDestroy();
    this.e.stopRotationAnimation();
    this.e.setVisibility(8);
    this.f.stopRotationAnimation();
    this.f.setVisibility(8);
  }

  public void onHandlerMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default:
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    }
    while (true)
    {
      return;
      this.d.setVisibility(0);
      this.a.setVisibility(8);
      this.b.setVisibility(8);
      continue;
      this.a.setVisibility(0);
      this.d.setVisibility(8);
      this.b.setVisibility(8);
      continue;
      this.b.setVisibility(0);
      this.a.setVisibility(8);
      this.d.setVisibility(8);
      continue;
      this.mFooterView.setVisibility(8);
      this.e.setVisibility(8);
      this.f.setVisibility(8);
      this.mListView.removeFooterView(this.mFooterView);
      continue;
      if (this.mFooterView != null)
      {
        this.mFooterView.setVisibility(0);
        this.e.setVisibility(0);
        this.f.setVisibility(0);
        this.mListView.addFooterView(this.mFooterView);
        this.mHandler.sendEmptyMessage(0);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     awy
 * JD-Core Version:    0.6.2
 */