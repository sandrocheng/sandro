import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import com.tencent.qqpimsecure.uilib.view.BaseView;
import java.util.ArrayList;
import java.util.List;

public final class als extends BaseAdapter
{
  private BaseView a;
  private List<Drawable> b = new ArrayList();

  public als(BaseView paramBaseView, List<Drawable> paramList)
  {
    this.a = paramBaseView;
    this.b = paramList;
  }

  public final void a(List<Drawable> paramList)
  {
    this.b = paramList;
  }

  public final int getCount()
  {
    return this.b.size();
  }

  public final Object getItem(int paramInt)
  {
    return this.b.get(paramInt);
  }

  public final long getItemId(int paramInt)
  {
    return paramInt;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    als.a locala2;
    if (paramView == null)
    {
      paramView = LayoutInflater.from(this.a.getContext()).inflate(2130903107, null);
      locala2 = new als.a();
      locala2.a = ((ImageView)paramView.findViewById(2131230855));
      paramView.setTag(locala2);
    }
    for (als.a locala1 = locala2; ; locala1 = (als.a)paramView.getTag())
    {
      locala1.a.setImageDrawable((Drawable)this.b.get(paramInt));
      return paramView;
    }
  }

  static final class a
  {
    ImageView a;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     als
 * JD-Core Version:    0.6.2
 */