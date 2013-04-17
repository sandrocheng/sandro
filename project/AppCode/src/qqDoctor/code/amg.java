import android.content.Context;
import android.content.res.Resources;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import java.util.List;

public final class amg extends BaseAdapter
{
  private Context a;
  private List<mt> b;
  private int c;

  public amg(Context paramContext, List<mt> paramList)
  {
    this.a = paramContext;
    this.b = paramList;
    this.c = this.a.getResources().getColor(2131296256);
  }

  private static SpannableStringBuilder a(String paramString1, String paramString2, int paramInt)
  {
    SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder(paramString1);
    if (paramString2.trim().length() > 0)
    {
      int i = paramString1.indexOf(paramString2);
      localSpannableStringBuilder.setSpan(new ForegroundColorSpan(paramInt), i, i + paramString2.length(), 34);
    }
    return localSpannableStringBuilder;
  }

  public final int getCount()
  {
    return this.b.size();
  }

  public final long getItemId(int paramInt)
  {
    return 0L;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    mt localmt = (mt)this.b.get(paramInt);
    amg.a locala1;
    String str2;
    Object[] arrayOfObject2;
    if (paramView == null)
    {
      paramView = LayoutInflater.from(this.a).inflate(2130903337, null);
      amg.a locala2 = new amg.a();
      locala2.a = ((TextView)paramView.findViewById(2131230754));
      locala2.b = ((TextView)paramView.findViewById(2131230755));
      paramView.setTag(locala2);
      locala1 = locala2;
      new SpannableStringBuilder("");
      if (localmt.w != 8)
        break label201;
      str2 = this.a.getString(2131428043);
      arrayOfObject2 = new Object[2];
      arrayOfObject2[0] = localmt.r;
      arrayOfObject2[1] = this.a.getString(2131428044);
    }
    label201: String str1;
    Object[] arrayOfObject1;
    for (SpannableStringBuilder localSpannableStringBuilder = a(String.format(str2, arrayOfObject2), this.a.getString(2131428044), this.c); ; localSpannableStringBuilder = a(String.format(str1, arrayOfObject1), localmt.u, this.c))
    {
      locala1.a.setText(localSpannableStringBuilder);
      locala1.b.setText(localmt.q);
      return paramView;
      locala1 = (amg.a)paramView.getTag();
      break;
      str1 = this.a.getString(2131428065);
      arrayOfObject1 = new Object[2];
      arrayOfObject1[0] = localmt.r;
      arrayOfObject1[1] = localmt.u;
    }
  }

  public static final class a
  {
    public TextView a;
    public TextView b;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     amg
 * JD-Core Version:    0.6.2
 */