.class public Lcom/avast/android/mobilesecurity/scan/ScanActivity;
.super Lcom/avast/android/generic/ui/BaseSinglePaneActivity;
.source "ScanActivity.java"

# interfaces
.implements Lcom/avast/android/mobilesecurity/scan/g;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/avast/android/generic/ui/BaseSinglePaneActivity;-><init>()V

    return-void
.end method

.method public static call(Landroid/content/Context;Ljava/lang/Class;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/avast/android/mobilesecurity/scan/ScanActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 36
    const-string v1, "serviceClass"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 37
    if-eqz p2, :cond_0

    .line 38
    const-string v1, "logUri"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 42
    :goto_0
    const-string v1, "titleResourceId"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    check-cast p0, Lcom/avast/android/generic/ui/BaseActivity;

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/ui/BaseActivity;->a(Landroid/content/Intent;)V

    .line 44
    return-void

    .line 40
    :cond_0
    const-string v1, "logInvisible"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0
.end method


# virtual methods
.method public b(Z)V
    .locals 0
    .parameter

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/scan/ScanActivity;->finish()V

    .line 73
    return-void
.end method

.method public c(Z)V
    .locals 0
    .parameter

    .prologue
    .line 82
    return-void
.end method

.method protected d()Landroid/support/v4/app/Fragment;
    .locals 2

    .prologue
    .line 53
    new-instance v0, Lcom/avast/android/mobilesecurity/scan/ScanFragment;

    invoke-direct {v0}, Lcom/avast/android/mobilesecurity/scan/ScanFragment;-><init>()V

    .line 54
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/scan/ScanActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lcom/avast/android/mobilesecurity/scan/ScanActivity;->b(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v1

    .line 55
    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 56
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/avast/android/generic/ui/BaseSinglePaneActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 61
    invoke-super {p0, p1}, Lcom/avast/android/generic/ui/BaseSinglePaneActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/scan/ScanActivity;->e()Lcom/avast/android/generic/util/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avast/android/generic/util/a;->b()V

    .line 63
    return-void
.end method
