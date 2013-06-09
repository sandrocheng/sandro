package org.antivirus.wipe;

import android.net.Uri;

final class r
  implements Runnable
{
  public final void run()
  {
    int i = 0;
    ai localai = WipeByApp.c;
    String[] arrayOfString = { "content://com.android.contacts/contacts", "content://com.android.contacts/data", "content://com.android.contacts/raw_contact_entities", "content://com.android.contacts/emails", "content://com.android.contacts/postals", "content://com.android.contacts/groups", "content://com.android.contacts/groups_summary", "content://contacts/people", "content://contacts/phones", "content://contacts/photos", "content://contacts/calls", "content://contacts/", "content://contacts/settings", "content://contacts/deleted_people", "content://contacts/people/with_email_or_im_filter", "content://contacts/groups", "content://contacts/deleted_groups", "content://contacts/groupmembership", "content://contacts/groupmembershipraw", "content://contacts/contact_methods", "content://contacts/contact_methods/email", "content://contacts/presence", "content://contacts/organizations", "content://contacts/photos", "content://contacts/extensions", "content://com.android.contacts/raw_contacts", "content://com.android.contacts/contacts", "content://com.android.contacts/data" };
    int j = arrayOfString.length;
    while (i < j)
    {
      localai.a(Uri.parse(arrayOfString[i]));
      i++;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.wipe.r
 * JD-Core Version:    0.6.2
 */