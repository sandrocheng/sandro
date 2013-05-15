.class public Lcom/avast/android/generic/app/account/ConnectionCheckActivity;
.super Lcom/avast/android/generic/ui/BaseSinglePaneActivity;
.source "ConnectionCheckActivity.java"


# instance fields
.field private a:Z

.field private b:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/avast/android/generic/ui/BaseSinglePaneActivity;-><init>()V

    return-void
.end method

.method public static call(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 21
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/avast/android/generic/app/account/ConnectionCheckActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 22
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 23
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 24
    return-void
.end method


# virtual methods
.method protected a()Lcom/actionbarsherlock/app/SherlockFragment;
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    invoke-direct {v0}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;-><init>()V

    iput-object v0, p0, Lcom/avast/android/generic/app/account/ConnectionCheckActivity;->b:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    .line 39
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ConnectionCheckActivity;->b:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    return-object v0
.end method

.method protected synthetic d()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/avast/android/generic/app/account/ConnectionCheckActivity;->a()Lcom/actionbarsherlock/app/SherlockFragment;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/avast/android/generic/ui/BaseSinglePaneActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    invoke-virtual {p0}, Lcom/avast/android/generic/app/account/ConnectionCheckActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 33
    :cond_0
    invoke-virtual {p0}, Lcom/avast/android/generic/app/account/ConnectionCheckActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "hideTitlebar"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/avast/android/generic/app/account/ConnectionCheckActivity;->a:Z

    .line 34
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 2
    .parameter

    .prologue
    .line 44
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/avast/android/generic/app/account/ConnectionCheckActivity;->a:Z

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {p0}, Lcom/avast/android/generic/app/account/ConnectionCheckActivity;->finish()V

    .line 46
    const/4 v0, 0x1

    .line 48
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/avast/android/generic/ui/BaseSinglePaneActivity;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
