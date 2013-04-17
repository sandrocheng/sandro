import QQPIM.stBindPhoneInfo;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.tencent.tmsecure.utils.PhoneInfoUtil;
import java.util.ArrayList;

public final class akn extends BaseAdapter
{
  private Context a;
  private ArrayList<stBindPhoneInfo> b;

  public akn(Context paramContext)
  {
    this.a = paramContext;
  }

  public final void a(ArrayList<stBindPhoneInfo> paramArrayList)
  {
    this.b = paramArrayList;
  }

  public final int getCount()
  {
    if (this.b == null);
    for (int i = 0; ; i = this.b.size())
      return i;
  }

  public final long getItemId(int paramInt)
  {
    return paramInt;
  }

  public final int getItemViewType(int paramInt)
  {
    return 1;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (this.b == null)
      return paramView;
    stBindPhoneInfo localstBindPhoneInfo = (stBindPhoneInfo)this.b.get(paramInt);
    akn.a locala1;
    label122: String str1;
    String str4;
    if (paramView == null)
    {
      paramView = LayoutInflater.from(this.a).inflate(2130903332, null);
      akn.a locala2 = new akn.a();
      locala2.c = ((ImageView)paramView.findViewById(2131230869));
      locala2.b = ((TextView)paramView.findViewById(2131231033));
      locala2.d = ((TextView)paramView.findViewById(2131231298));
      locala2.a = ((LinearLayout)paramView.findViewById(2131231360));
      paramView.findViewById(2131231636);
      paramView.setTag(locala2);
      locala1 = locala2;
      locala1.c.setImageResource(2130838116);
      str1 = localstBindPhoneInfo.getMemo();
      if ((str1 == null) || (str1.length() <= 0))
        str1 = localstBindPhoneInfo.getUa();
      String str2 = PhoneInfoUtil.getIMEI(this.a);
      String str3 = localstBindPhoneInfo.getImei();
      if ((str3 == null) || (str2 == null) || (str2.compareTo(str3) != 0))
        break label370;
      str4 = str1 + '(' + this.a.getString(2131429466) + ')';
    }
    for (int i = 1; ; i = 0)
    {
      if (i != 0)
        locala1.b.setTextColor(-7829368);
      locala1.b.setText(str4);
      switch (localstBindPhoneInfo.getStatus())
      {
      default:
        locala1.d.setText(2131429465);
        locala1.d.setTextColor(-5723992);
      case 1:
      }
      while (true)
      {
        locala1.a.setBackgroundResource(2130837920);
        locala1.c.setVisibility(0);
        locala1.d.setVisibility(0);
        break;
        locala1 = (akn.a)paramView.getTag();
        break label122;
        locala1.d.setText(2131429464);
        locala1.d.setTextColor(-10969823);
      }
      label370: str4 = str1;
    }
  }

  public final int getViewTypeCount()
  {
    return 1;
  }

  public static final class a
  {
    public LinearLayout a;
    public TextView b;
    public ImageView c;
    public TextView d;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     akn
 * JD-Core Version:    0.6.2
 */