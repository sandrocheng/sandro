.class public Lcom/avast/android/generic/app/about/FeedbackActivity;
.super Lcom/avast/android/generic/ui/BaseSinglePaneActivity;
.source "FeedbackActivity.java"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/avast/android/generic/ui/BaseSinglePaneActivity;-><init>()V

    return-void
.end method

.method public static call(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 49
    check-cast p0, Lcom/avast/android/generic/ui/BaseActivity;

    const-class v0, Lcom/avast/android/generic/app/about/FeedbackActivity;

    invoke-virtual {p0, v0, p1}, Lcom/avast/android/generic/ui/BaseActivity;->a(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 50
    return-void
.end method


# virtual methods
.method protected a()Lcom/actionbarsherlock/app/SherlockFragment;
    .locals 1

    .prologue
    .line 70
    new-instance v0, Lcom/avast/android/generic/app/about/FeedbackFragment;

    invoke-direct {v0}, Lcom/avast/android/generic/app/about/FeedbackFragment;-><init>()V

    return-object v0
.end method

.method protected synthetic d()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/avast/android/generic/app/about/FeedbackActivity;->a()Lcom/actionbarsherlock/app/SherlockFragment;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 54
    invoke-super {p0, p1}, Lcom/avast/android/generic/ui/BaseSinglePaneActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {p0}, Lcom/avast/android/generic/app/about/FeedbackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "not_ams"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/avast/android/generic/app/about/FeedbackActivity;->a:Z

    .line 57
    invoke-virtual {p0}, Lcom/avast/android/generic/app/about/FeedbackActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    .line 58
    invoke-virtual {v0, v4}, Lcom/actionbarsherlock/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 59
    sget v1, Lcom/avast/android/generic/z;->a:I

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(I)V

    .line 60
    iget-boolean v1, p0, Lcom/avast/android/generic/app/about/FeedbackActivity;->a:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/avast/android/generic/app/about/FeedbackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "anti_theft"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/avast/android/generic/app/about/FeedbackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "backup"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 62
    invoke-virtual {v0, v4}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 63
    invoke-virtual {v0, v4}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 64
    sget v1, Lcom/avast/android/generic/s;->l:I

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setLogo(I)V

    .line 66
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 2
    .parameter

    .prologue
    .line 81
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/avast/android/generic/app/about/FeedbackActivity;->a:Z

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/avast/android/generic/app/about/FeedbackActivity;->finish()V

    .line 83
    const/4 v0, 0x1

    .line 85
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/avast/android/generic/ui/BaseSinglePaneActivity;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 75
    invoke-super {p0, p1}, Lcom/avast/android/generic/ui/BaseSinglePaneActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 76
    invoke-virtual {p0}, Lcom/avast/android/generic/app/about/FeedbackActivity;->e()Lcom/avast/android/generic/util/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avast/android/generic/util/a;->b()V

    .line 77
    return-void
.end method
