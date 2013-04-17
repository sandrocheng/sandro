import android.app.Activity;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ImageView;
import java.util.Iterator;
import java.util.List;

final class axl
  implements AdapterView.OnItemClickListener
{
  axl(axj paramaxj)
  {
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    ImageView localImageView = (ImageView)paramView.findViewById(2131230855);
    int i;
    kw localkw;
    if ((localImageView != null) && (localImageView.getTag() != null))
    {
      Integer localInteger = (Integer)localImageView.getTag();
      Iterator localIterator = axj.b(this.a).iterator();
      i = 1;
      if (!localIterator.hasNext())
        break label262;
      localkw = (kw)localIterator.next();
      if (localkw.h().hashCode() != localInteger.hashCode())
        break label189;
    }
    while (true)
    {
      label147: nd localnd;
      if (localkw != null)
      {
        if ((localkw.N() == null) || (localkw.N().equals("")))
          break label195;
        ds.a((Activity)axj.F(this.a), localkw.N(), ((Activity)axj.G(this.a)).getTaskId());
        localnd = nd.a();
        localnd.a(11);
        switch (i)
        {
        default:
        case 1:
        case 2:
        case 3:
        }
      }
      while (true)
      {
        return;
        label189: i++;
        break;
        label195: Activity localActivity = (Activity)axj.H(this.a);
        kw.a(localActivity, localkw, axj.a(localkw), i);
        break label147;
        localnd.a(26153);
        continue;
        localnd.a(26154);
        continue;
        localnd.a(26155);
      }
      label262: localkw = null;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     axl
 * JD-Core Version:    0.6.2
 */