import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.text.SpannableString;
import android.text.TextPaint;
import android.text.style.ClickableSpan;
import android.text.style.ForegroundColorSpan;
import android.view.View;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import com.tencent.qqpimsecure.uilib.model.ListModel;
import com.tencent.qqpimsecure.uilib.model.OperatingModel;
import com.tencent.qqpimsecure.uilib.view.BaseListView;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class ant extends BaseListView<Map<String, Object>>
{
  private int a;

  public ant(Context paramContext, int paramInt)
  {
    super(paramContext);
    this.a = paramInt;
  }

  public final BaseAdapter createAdapter()
  {
    loadDataList();
    Context localContext = this.mContext;
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new ListModel(this.mDataList, null, 1, false));
    return new aia(localContext, localArrayList);
  }

  protected final List<OperatingModel> createOperatingBarDataList()
  {
    return null;
  }

  public final void loadDataList()
  {
    switch (this.a)
    {
    default:
    case 24:
    }
    while (true)
    {
      return;
      this.mDataList = new ArrayList();
      HashMap localHashMap1 = new HashMap();
      String str = this.mContext.getResources().getString(2131427656);
      SpannableString localSpannableString = new SpannableString(str);
      localSpannableString.setSpan(new ant.a(), 105, -1 + str.length(), 33);
      localSpannableString.setSpan(new ForegroundColorSpan(this.mContext.getResources().getColor(2131296289)), 105, -1 + str.length(), 34);
      localHashMap1.put("TITLE", this.mContext.getString(2131427651));
      localHashMap1.put("CONTENT", localSpannableString);
      this.mDataList.add(localHashMap1);
      HashMap localHashMap2 = new HashMap();
      localHashMap2.put("TITLE", this.mContext.getString(2131427652));
      localHashMap2.put("CONTENT", this.mContext.getString(2131427657));
      this.mDataList.add(localHashMap2);
      HashMap localHashMap3 = new HashMap();
      localHashMap3.put("TITLE", this.mContext.getString(2131427653));
      localHashMap3.put("CONTENT", this.mContext.getString(2131427658));
      this.mDataList.add(localHashMap3);
      HashMap localHashMap4 = new HashMap();
      localHashMap4.put("TITLE", this.mContext.getString(2131427654));
      localHashMap4.put("CONTENT", this.mContext.getString(2131427659));
      this.mDataList.add(localHashMap4);
      HashMap localHashMap5 = new HashMap();
      localHashMap5.put("TITLE", this.mContext.getString(2131427655));
      localHashMap5.put("CONTENT", this.mContext.getString(2131427660));
      this.mDataList.add(localHashMap5);
    }
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
  }

  public final void onResume()
  {
    loadDataList();
    aia localaia = (aia)getAdapter();
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new ListModel(this.mDataList, null, 1, false));
    localaia.setDataList(localArrayList);
    getAdapter().notifyDataSetChanged();
    setReloadData(false);
  }

  public final void refreshListData()
  {
    aia localaia = (aia)getAdapter();
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new ListModel(this.mDataList, null, 1, false));
    localaia.setDataList(localArrayList);
    getAdapter().notifyDataSetChanged();
    setReloadData(false);
  }

  protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
    paramFrameworkTemplateUI.setTitleTextData(2131427451);
    paramFrameworkTemplateUI.setInfoBarStyle((byte)49);
  }

  final class a extends ClickableSpan
  {
    private int a = 1;

    public a()
    {
      TextPaint localTextPaint = new TextPaint();
      localTextPaint.linkColor = -1;
      updateDrawState(localTextPaint);
    }

    public final void onClick(View paramView)
    {
      switch (this.a)
      {
      default:
      case 1:
      }
      while (true)
      {
        return;
        Intent localIntent = new Intent("android.intent.action.VIEW", Uri.parse("http://scan.qq.com/agreement/iindex.html"));
        ant.a(ant.this).startActivity(localIntent);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ant
 * JD-Core Version:    0.6.2
 */