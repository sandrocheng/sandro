.class public Lcom/avast/android/mobilesecurity/app/scanner/ReportDialogActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "ReportDialogActivity.java"

# interfaces
.implements Lcom/avast/android/mobilesecurity/app/scanner/k;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/scanner/ReportDialogActivity;->finish()V

    .line 63
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/scanner/ReportDialogActivity;->finish()V

    .line 68
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    .line 26
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const v0, 0x7f03001e

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/scanner/ReportDialogActivity;->setContentView(I)V

    .line 30
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/scanner/ReportDialogActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 31
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/scanner/ReportDialogActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 32
    if-eqz v1, :cond_0

    .line 33
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 35
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 37
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/scanner/ReportDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 38
    const-string v2, "uploadInProgress"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 39
    const v0, 0x7f0c025c

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/scanner/ReportDialogActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 40
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/scanner/ReportDialogActivity;->finish()V

    .line 58
    :cond_1
    :goto_0
    return-void

    .line 44
    :cond_2
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 45
    const-string v3, "uri"

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 46
    const-string v3, "result"

    const-string v4, "result"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string v3, "infectionType"

    const-string v4, "infectionType"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v3, "email"

    const-string v4, "email"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string v3, "description"

    const-string v4, "description"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    new-instance v3, Lcom/avast/android/mobilesecurity/app/scanner/ReportDialogFragment;

    invoke-direct {v3, v2}, Lcom/avast/android/mobilesecurity/app/scanner/ReportDialogFragment;-><init>(Landroid/os/Bundle;)V

    .line 51
    const-string v2, "dialog"

    invoke-virtual {v3, v0, v2}, Lcom/avast/android/mobilesecurity/app/scanner/ReportDialogFragment;->show(Landroid/support/v4/app/FragmentTransaction;Ljava/lang/String;)I

    .line 53
    const-string v0, "notificationId"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 54
    if-eqz v1, :cond_1

    .line 55
    const-class v0, Lcom/avast/android/generic/notification/j;

    invoke-static {p0, v0}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/notification/j;

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/avast/android/generic/notification/j;->a(J)V

    goto :goto_0
.end method
