package com.avast.android.mobilesecurity.app.scanner;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.widget.Toast;
import com.avast.android.generic.ad;
import com.avast.android.generic.notification.j;

public class ReportDialogActivity extends FragmentActivity
  implements k
{
  public void a()
  {
    finish();
  }

  public void b()
  {
    finish();
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903070);
    FragmentTransaction localFragmentTransaction = getSupportFragmentManager().beginTransaction();
    Fragment localFragment = getSupportFragmentManager().findFragmentByTag("dialog");
    if (localFragment != null)
      localFragmentTransaction.remove(localFragment);
    localFragmentTransaction.addToBackStack(null);
    Intent localIntent = getIntent();
    if (localIntent.hasExtra("uploadInProgress"))
    {
      Toast.makeText(this, getText(2131493468), 1).show();
      finish();
    }
    while (true)
    {
      return;
      Bundle localBundle = new Bundle();
      localBundle.putParcelable("uri", localIntent.getData());
      localBundle.putString("result", localIntent.getStringExtra("result"));
      localBundle.putString("infectionType", localIntent.getStringExtra("infectionType"));
      localBundle.putString("email", localIntent.getStringExtra("email"));
      localBundle.putString("description", localIntent.getStringExtra("description"));
      new ReportDialogFragment(localBundle).show(localFragmentTransaction, "dialog");
      int i = localIntent.getIntExtra("notificationId", 0);
      if (i != 0)
        ((j)ad.a(this, j.class)).a(i);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.scanner.ReportDialogActivity
 * JD-Core Version:    0.6.2
 */