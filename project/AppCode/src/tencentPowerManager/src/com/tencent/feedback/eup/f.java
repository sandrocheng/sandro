package com.tencent.feedback.eup;

import android.content.Context;
import android.text.InputFilter;
import android.text.InputFilter.LengthFilter;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;

final class f extends LinearLayout
  implements IEupUserConfirmer
{
  private TextView a = null;
  private EditText b = null;
  private Button c;
  private Button d;

  public f(Context paramContext)
  {
    super(paramContext);
    setOrientation(1);
    this.a = new TextView(paramContext);
    addView(this.a);
    this.b = new EditText(paramContext);
    EditText localEditText = this.b;
    InputFilter[] arrayOfInputFilter = new InputFilter[1];
    arrayOfInputFilter[0] = new InputFilter.LengthFilter(50);
    localEditText.setFilters(arrayOfInputFilter);
    addView(this.b);
    LinearLayout localLinearLayout = new LinearLayout(paramContext);
    localLinearLayout.setOrientation(0);
    localLinearLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-1, -2);
    localLayoutParams.weight = 1.0F;
    this.c = new Button(paramContext);
    this.c.setLayoutParams(localLayoutParams);
    this.c.setText("是");
    localLinearLayout.addView(this.c);
    this.d = new Button(paramContext);
    this.d.setLayoutParams(localLayoutParams);
    this.d.setText("否");
    localLinearLayout.addView(this.d);
    addView(localLinearLayout);
  }

  public final void a(String paramString)
  {
    if (paramString == null)
      paramString = "";
    this.a.setText(paramString);
  }

  public final View getContentView()
  {
    return this;
  }

  public final View getDoCancelClicker()
  {
    return this.d;
  }

  public final View getDoUploadClicker()
  {
    return this.c;
  }

  public final String getUploadContent()
  {
    return this.b.getText().toString();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.tencent.feedback.eup.f
 * JD-Core Version:    0.6.2
 */