package com.keniu.security.mydb.opt;

import android.app.Activity;
import android.os.Bundle;
import android.widget.Button;

public class TestActivity extends Activity
{
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    Button localButton = new Button(this);
    localButton.setOnClickListener(new j(this));
    setContentView(localButton);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.mydb.opt.TestActivity
 * JD-Core Version:    0.6.2
 */