import android.content.Context;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.TextView;
import com.tencent.qqpimsecure.uilib.view.ButtonView;
import com.tencent.qqpimsecure.uilib.view.dialog.BaseWindow;
import com.tencent.tmsecure.module.tools.IPackageChangedListener;

public final class rn
  implements IPackageChangedListener
{
  private Context a;
  private rm b;
  private rn.a c = null;
  private Handler d;

  public rn(Context paramContext)
  {
    this.a = paramContext;
    this.b = new rm();
    this.d = new ro(this, this.a.getMainLooper());
  }

  public final void onPackageAdded(String paramString)
  {
  }

  public final void onPackageReinstall(String paramString)
  {
  }

  public final void onPackageRemoved(String paramString)
  {
    new Thread(new rq(this, paramString)).start();
  }

  final class a
  {
    BaseWindow a = new BaseWindow(rn.d(rn.this));
    ButtonView b;
    kw c;
    private View e = LayoutInflater.from(rn.d(rn.this)).inflate(2130903055, null);
    private ButtonView f;
    private TextView g;
    private TextView h;

    public a(kw arg2)
    {
      Object localObject;
      this.c = localObject;
      this.b = ((ButtonView)this.e.findViewById(2131230766));
      this.b.setOnClickListener(new rr(this));
      this.b.setEnabled(false);
      this.f = ((ButtonView)this.e.findViewById(2131230767));
      this.f.setText(rn.d(rn.this).getString(2131427379));
      this.f.setOnClickListener(new rt(this));
      this.g = ((TextView)this.e.findViewById(2131230771));
      this.g.setText(rn.d(rn.this).getString(2131429778));
      this.h = ((TextView)this.e.findViewById(2131230750));
      TextView localTextView = this.h;
      String str = rn.d(rn.this).getString(2131429779);
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = localObject.getAppName();
      arrayOfObject[1] = a.b(localObject.S());
      localTextView.setText(String.format(str, arrayOfObject));
      this.a.setView(this.e);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     rn
 * JD-Core Version:    0.6.2
 */