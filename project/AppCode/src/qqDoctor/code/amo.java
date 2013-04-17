import android.content.Context;
import android.content.Intent;
import android.text.Html;
import android.text.Spannable;
import android.text.SpannableStringBuilder;
import android.text.method.LinkMovementMethod;
import android.text.style.ClickableSpan;
import android.text.style.URLSpan;
import android.view.View;
import android.widget.TextView;
import com.tencent.qqpimsecure.ui.activity.ShareActivity;
import com.tencent.qqpimsecure.uilib.model.OperatingModel;
import com.tencent.qqpimsecure.uilib.view.BaseView;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import java.util.ArrayList;
import java.util.List;

public final class amo extends BaseView
{
  private String a = "<a style=\"color:#047ecb;\" href='%s'>%s</a>";
  private String b = "<br/><a style=\"color:#047ecb;\" href='%s'>%s</a><br/>";
  private String c = "<br/><a style=\"color:#047ecb;\" href='%s'>%s</a>";

  public amo(Context paramContext)
  {
    super(paramContext, 2130903116);
  }

  public final List createOperatingBarDataList()
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new OperatingModel(0, 2131428642));
    return localArrayList;
  }

  public final void onCreate()
  {
    int i = 0;
    super.onCreate();
    TextView localTextView1 = (TextView)findViewById(2131230896);
    qx localqx = qx.a();
    String str1 = localTextView1.getText().toString();
    Object[] arrayOfObject1 = new Object[2];
    arrayOfObject1[0] = (di.b().k() + localqx.e());
    arrayOfObject1[1] = localqx.b();
    localTextView1.setText(String.format(str1, arrayOfObject1));
    TextView localTextView2 = (TextView)findViewById(2131230897);
    String str2 = this.a;
    Object[] arrayOfObject2 = new Object[2];
    arrayOfObject2[0] = di.b().e();
    arrayOfObject2[1] = this.mContext.getString(2131427504);
    this.a = String.format(str2, arrayOfObject2);
    String str3 = this.mContext.getString(2131428751);
    Object[] arrayOfObject3 = new Object[1];
    arrayOfObject3[0] = this.a;
    localTextView2.setText(Html.fromHtml(String.format(str3, arrayOfObject3)));
    localTextView2.setMovementMethod(LinkMovementMethod.getInstance());
    CharSequence localCharSequence1 = localTextView2.getText();
    if ((localCharSequence1 instanceof Spannable))
    {
      int m = localCharSequence1.length();
      Spannable localSpannable2 = (Spannable)localTextView2.getText();
      URLSpan[] arrayOfURLSpan2 = (URLSpan[])localSpannable2.getSpans(0, m, URLSpan.class);
      SpannableStringBuilder localSpannableStringBuilder2 = new SpannableStringBuilder(localCharSequence1);
      localSpannableStringBuilder2.clearSpans();
      int n = arrayOfURLSpan2.length;
      for (int i1 = 0; i1 < n; i1++)
      {
        URLSpan localURLSpan2 = arrayOfURLSpan2[i1];
        localSpannableStringBuilder2.setSpan(new amo.a(localURLSpan2.getURL()), localSpannable2.getSpanStart(localURLSpan2), localSpannable2.getSpanEnd(localURLSpan2), 34);
      }
      localTextView2.setText(localSpannableStringBuilder2);
    }
    TextView localTextView3 = (TextView)findViewById(2131230898);
    String str4 = this.b;
    Object[] arrayOfObject4 = new Object[2];
    arrayOfObject4[0] = this.mContext.getString(2131428771);
    arrayOfObject4[1] = this.mContext.getString(2131428771);
    this.b = String.format(str4, arrayOfObject4);
    String str5 = this.c;
    Object[] arrayOfObject5 = new Object[2];
    arrayOfObject5[0] = this.mContext.getString(2131428772);
    arrayOfObject5[1] = this.mContext.getString(2131428772);
    this.c = String.format(str5, arrayOfObject5);
    String str6 = this.mContext.getString(2131428769);
    Object[] arrayOfObject6 = new Object[2];
    arrayOfObject6[0] = this.b;
    arrayOfObject6[1] = this.c;
    localTextView3.setText(Html.fromHtml(String.format(str6, arrayOfObject6)));
    localTextView3.setMovementMethod(LinkMovementMethod.getInstance());
    CharSequence localCharSequence2 = localTextView3.getText();
    if ((localCharSequence2 instanceof Spannable))
    {
      int j = localCharSequence2.length();
      Spannable localSpannable1 = (Spannable)localTextView3.getText();
      URLSpan[] arrayOfURLSpan1 = (URLSpan[])localSpannable1.getSpans(0, j, URLSpan.class);
      SpannableStringBuilder localSpannableStringBuilder1 = new SpannableStringBuilder(localCharSequence2);
      localSpannableStringBuilder1.clearSpans();
      int k = arrayOfURLSpan1.length;
      while (i < k)
      {
        URLSpan localURLSpan1 = arrayOfURLSpan1[i];
        localSpannableStringBuilder1.setSpan(new amo.a(localURLSpan1.getURL()), localSpannable1.getSpanStart(localURLSpan1), localSpannable1.getSpanEnd(localURLSpan1), 34);
        i++;
      }
      localTextView3.setText(localSpannableStringBuilder1);
    }
  }

  public final void onOperatingBarClick(OperatingModel paramOperatingModel)
  {
    nd.a().a(26258);
    Intent localIntent = new Intent();
    localIntent.setClass(this.mContext, ShareActivity.class);
    this.mContext.startActivity(localIntent);
  }

  protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
    paramFrameworkTemplateUI.setTitleTextData(2131427452);
    paramFrameworkTemplateUI.setInfoBarStyle((byte)49);
  }

  final class a extends ClickableSpan
  {
    private String a;

    a(String arg2)
    {
      Object localObject;
      this.a = localObject;
    }

    public final void onClick(View paramView)
    {
      amo.a(amo.this, this.a);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     amo
 * JD-Core Version:    0.6.2
 */