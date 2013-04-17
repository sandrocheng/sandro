import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

public final class ajr extends BaseAdapter
{
  private Map<Integer, ku> a = new LinkedHashMap();
  private Context b;
  private int c = 0;

  public ajr(Context paramContext, Map<Integer, ku> paramMap)
  {
    this.a = paramMap;
    this.b = paramContext;
    this.c = paramMap.size();
  }

  private Integer a(int paramInt)
  {
    Iterator localIterator = this.a.keySet().iterator();
    int i = -1;
    for (int j = 0; localIterator.hasNext(); j++)
    {
      Integer localInteger = (Integer)localIterator.next();
      if ((this.c != 0) && (j == paramInt % this.c))
        i = localInteger.intValue();
    }
    return Integer.valueOf(i);
  }

  public final Map<Integer, ku> a()
  {
    return this.a;
  }

  public final void a(Map<Integer, ku> paramMap)
  {
    this.a = paramMap;
    this.c = paramMap.size();
  }

  public final int getCount()
  {
    return 2147483647;
  }

  public final long getItemId(int paramInt)
  {
    return paramInt;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (paramInt < 0)
      paramInt += this.c;
    ajr.a locala;
    if (paramView == null)
    {
      paramView = LayoutInflater.from(this.b).inflate(2130903092, null);
      locala = new ajr.a();
      locala.a = ((ImageView)paramView.findViewById(2131230855));
      locala.b = ((ImageView)paramView.findViewById(2131230854));
      LinearLayout localLinearLayout = (LinearLayout)paramView.findViewById(2131230853);
      localLinearLayout.setMinimumWidth(ft.d(this.b) + (int)(0.5F + 18.0F * this.b.getResources().getDisplayMetrics().density));
      localLinearLayout.setMinimumHeight((int)(0.5F + 107.0F * this.b.getResources().getDisplayMetrics().density));
      paramView.setTag(locala);
    }
    while (true)
    {
      int i = a(paramInt).intValue();
      ku localku = (ku)this.a.get(Integer.valueOf(i));
      if (localku != null)
      {
        locala.b.setVisibility(8);
        locala.a.setVisibility(0);
        locala.a.setImageDrawable(localku.a);
        locala.a.setTag(Integer.valueOf(i));
      }
      return paramView;
      locala = (ajr.a)paramView.getTag();
    }
  }

  public static final class a
  {
    ImageView a;
    ImageView b;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ajr
 * JD-Core Version:    0.6.2
 */