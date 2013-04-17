import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import com.tencent.qqpimsecure.ui.activity.market.SoftwareScreenShotActivity;
import com.tencent.qqpimsecure.ui.activity.market.SoftwareScreenShotActivity.a;
import java.util.List;

public final class agh extends BaseAdapter
{
  public agh(SoftwareScreenShotActivity paramSoftwareScreenShotActivity)
  {
  }

  public final int getCount()
  {
    return SoftwareScreenShotActivity.a(this.a).size();
  }

  public final Object getItem(int paramInt)
  {
    return SoftwareScreenShotActivity.a(this.a).get(paramInt);
  }

  public final long getItemId(int paramInt)
  {
    return paramInt;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    SoftwareScreenShotActivity.a locala;
    if (paramView == null)
    {
      View localView = LayoutInflater.from(this.a).inflate(2130903108, null);
      locala = new SoftwareScreenShotActivity.a();
      locala.a = ((ImageView)localView);
      locala.a.setMinimumWidth(gw.a);
      locala.a.setMinimumHeight(gw.b);
      localView.setTag(locala);
      paramView = localView;
      if (paramInt < SoftwareScreenShotActivity.a(this.a).size())
        break label102;
      paramView = null;
    }
    while (true)
    {
      return paramView;
      locala = (SoftwareScreenShotActivity.a)paramView.getTag();
      break;
      label102: Drawable localDrawable = (Drawable)SoftwareScreenShotActivity.a(this.a).get(paramInt);
      if ((localDrawable != null) && (((BitmapDrawable)localDrawable).getBitmap() != null) && (!((BitmapDrawable)localDrawable).getBitmap().isRecycled()))
      {
        locala.a.setBackgroundDrawable(localDrawable);
      }
      else
      {
        SoftwareScreenShotActivity.a(this.a).remove(paramInt);
        SoftwareScreenShotActivity.a(this.a).add(paramInt, SoftwareScreenShotActivity.b(this.a));
        locala.a.setBackgroundDrawable(SoftwareScreenShotActivity.b(this.a));
        String str = (String)bnd.b.get(paramInt);
        SoftwareScreenShotActivity.a(this.a, str, locala.a);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     agh
 * JD-Core Version:    0.6.2
 */