.class public Lcom/avast/android/generic/ui/PasswordActivity;
.super Lcom/avast/android/generic/ui/BaseActivity;
.source "PasswordActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/avast/android/generic/ui/BaseActivity;-><init>()V

    return-void
.end method

.method public static call(Landroid/content/Context;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 34
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/avast/android/generic/ui/PasswordActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 35
    const-string v1, "callbackHandlerId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 36
    instance-of v1, p0, Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 37
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 39
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 40
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/avast/android/generic/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {p0}, Lcom/avast/android/generic/ui/PasswordActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/avast/android/generic/ui/PasswordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "callbackHandlerId"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/avast/android/generic/ui/PasswordDialog;->a(Landroid/support/v4/app/FragmentManager;I)V

    .line 56
    return-void
.end method
