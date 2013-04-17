package com.tencent.qqpimsecure.view;

import android.content.Context;
import android.text.Html;
import android.util.AttributeSet;
import android.widget.TextView;

public class RichTextView extends TextView
{
  public RichTextView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a();
  }

  public RichTextView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a();
  }

  private void a()
  {
    String str1 = getText().toString().trim();
    if (str1.length() <= 0);
    while (true)
    {
      return;
      String[] arrayOfString1 = str1.replace("#P", "<br/>").split("##");
      StringBuilder localStringBuilder = new StringBuilder(0);
      for (int i = 0; (i < arrayOfString1.length) && (arrayOfString1[i].length() > 0); i++)
      {
        String str2 = arrayOfString1[i];
        String[] arrayOfString2 = str2.split(" ");
        String str3 = arrayOfString2[(-1 + arrayOfString2.length)];
        String str4 = str2.substring(0, -1 + (str2.length() - str3.length())).trim();
        localStringBuilder.append("<font color=");
        localStringBuilder.append("\"" + str3 + "\">");
        localStringBuilder.append(str4);
        localStringBuilder.append("</font>");
      }
      setText(Html.fromHtml(localStringBuilder.toString()));
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.view.RichTextView
 * JD-Core Version:    0.6.2
 */