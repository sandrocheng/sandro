package com.avast.android.mobilesecurity.app.scanner;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import com.avast.android.generic.util.b;
import com.avast.android.generic.util.m;

public class DeleteFileActivity extends FragmentActivity
{
  private Uri a;

  private void a()
  {
    new DeleteFileActivity.DialogFragment(this).show(getSupportFragmentManager(), "dialog");
  }

  private void b()
  {
    f localf = new f(this);
    String[] arrayOfString = new String[1];
    arrayOfString[0] = this.a.getPath();
    b.a(localf, arrayOfString);
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.a = getIntent().getData();
    a();
  }

  protected void onStop()
  {
    m.c("DeleteFileActivity onStop()");
    super.onStop();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.scanner.DeleteFileActivity
 * JD-Core Version:    0.6.2
 */