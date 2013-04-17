import android.content.Context;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.tencent.qqpimsecure.uilib.model.ListModel;
import com.tencent.qqpimsecure.uilib.ui.adapter.BaseListAdapter;
import com.tencent.tmsecure.module.aresengine.MmsContentConfigHeader;
import com.tencent.tmsecure.module.aresengine.MmsData;
import java.util.List;

public final class ais extends BaseListAdapter<mk>
{
  public ais(Context paramContext, List<ListModel<mk>> paramList)
  {
    super(paramContext, paramList);
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    ais.a locala;
    mk localmk;
    if (paramView == null)
    {
      paramView = createItemView(paramInt, 2130903296);
      locala = new ais.a();
      locala.a = ((TextView)paramView.findViewById(2131231565));
      locala.c = ((TextView)paramView.findViewById(2131231513));
      locala.b = ((TextView)paramView.findViewById(2131231569));
      locala.d = ((TextView)paramView.findViewById(2131231556));
      paramView.findViewById(2131231570);
      paramView.setTag(locala);
      localmk = (mk)this.mDataList.get(paramInt);
      if ((localmk.name == null) || (localmk.name.length() <= 0))
        break label403;
      locala.a.setText(localmk.name);
      label137: SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder("(" + localmk.o + "/" + localmk.n + ")");
      if (localmk.o > 0)
        localSpannableStringBuilder.setSpan(new ForegroundColorSpan(-65536), 1, 1 + String.valueOf(localmk.o).length(), 33);
      locala.b.setText(localSpannableStringBuilder);
      locala.c.setText(a.a(localmk.date));
      if (localmk.protocolType != 1)
        break label500;
      if ((localmk.mmsData == null) || (localmk.mmsData.mmsContentConfigHeader == null) || (localmk.mmsData.mmsContentConfigHeader.subject == null) || ("".equals(localmk.mmsData.mmsContentConfigHeader.subject)))
        break label419;
      TextView localTextView2 = locala.d;
      StringBuilder localStringBuilder2 = new StringBuilder();
      String str2 = this.mContext.getString(2131427462);
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = this.mContext.getString(2131428428);
      localTextView2.setText(String.format(str2, arrayOfObject2) + localmk.mmsData.mmsContentConfigHeader.subject);
    }
    while (true)
    {
      return paramView;
      locala = (ais.a)paramView.getTag();
      break;
      label403: locala.a.setText(localmk.a());
      break label137;
      label419: TextView localTextView1 = locala.d;
      StringBuilder localStringBuilder1 = new StringBuilder();
      String str1 = this.mContext.getString(2131427462);
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = this.mContext.getString(2131428428);
      localTextView1.setText(String.format(str1, arrayOfObject1) + this.mContext.getString(2131428429));
      continue;
      label500: locala.d.setText(localmk.getBody());
    }
  }

  public static final class a
  {
    public TextView a;
    public TextView b;
    public TextView c;
    public TextView d;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ais
 * JD-Core Version:    0.6.2
 */