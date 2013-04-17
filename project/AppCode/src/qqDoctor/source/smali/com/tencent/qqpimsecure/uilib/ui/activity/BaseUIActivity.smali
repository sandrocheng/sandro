.class public abstract Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;
.super Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseActivityGroup;


# instance fields
.field private mCurrentView:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

.field private mTemplateUI:Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseActivityGroup;-><init>()V

    return-void
.end method

.method private startHardwareAccelerated()V
    .locals 3

    const/high16 v2, 0x100

    invoke-static {}, Lcom/tencent/tmsecure/utils/SDKUtil;->getSDKVersion()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    :cond_0
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->mCurrentView:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->mCurrentView:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->finishActivity()V

    :cond_0
    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseActivityGroup;->finish()V

    return-void
.end method

.method public finishActivityWithAnim()V
    .locals 2

    const v0, 0x7f040015

    const v1, 0x7f040018

    invoke-virtual {p0, v0, v1}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->overridePendingTransition(II)V

    return-void
.end method

.method public getCurrentView()Lcom/tencent/qqpimsecure/uilib/view/BaseView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->mCurrentView:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    return-object v0
.end method

.method public abstract getView()Lcom/tencent/qqpimsecure/uilib/view/BaseView;
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->mCurrentView:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->mCurrentView:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->mCurrentView:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onBackClick()V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseActivityGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->mCurrentView:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->mCurrentView:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    invoke-virtual {v0, p1}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->mCurrentView:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    invoke-virtual {v0, p1}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/high16 v2, 0x100

    invoke-super {p0, p1}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseActivityGroup;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/tencent/tmsecure/utils/SDKUtil;->getSDKVersion()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    :cond_0
    invoke-static {}, Lcom/tencent/qqpimsecure/uilib/view/template/TemplateUIFactory;->Instance()Lcom/tencent/qqpimsecure/uilib/view/template/TemplateUIFactory;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/template/TemplateUIFactory;->getTemplateUIInstance(Landroid/content/Context;)Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->mTemplateUI:Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->getView()Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->mCurrentView:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->mCurrentView:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->mCurrentView:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->mTemplateUI:Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->setFrameworkTemplateUI(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->mCurrentView:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->isCreated()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->mCurrentView:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onCreate()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->finish()V

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->mCurrentView:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->mCurrentView:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->mCurrentView:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    invoke-virtual {v0, p1}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    :cond_0
    invoke-super {p0, p1}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseActivityGroup;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->mCurrentView:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->mCurrentView:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onDestroy()V

    :cond_0
    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseActivityGroup;->onDestroy()V

    return-void
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->mCurrentView:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->mCurrentView:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    invoke-virtual {v0, p1}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->mCurrentView:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->mCurrentView:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onPause()V

    :cond_0
    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseActivityGroup;->onPause()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->mCurrentView:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->mCurrentView:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    invoke-virtual {v0, p1}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    :cond_0
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-super {p0, p1}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseActivityGroup;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseActivityGroup;->onResume()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->mCurrentView:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->mCurrentView:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onResume()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 3

    const/4 v2, -0x1

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseActivityGroup;->onStart()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->mCurrentView:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->mTemplateUI:Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/tencent/qqpimsecure/uilib/view/template/TemplateUIFactory;->Instance()Lcom/tencent/qqpimsecure/uilib/view/template/TemplateUIFactory;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/template/TemplateUIFactory;->getTemplateUIInstance(Landroid/content/Context;)Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->mTemplateUI:Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->mCurrentView:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->mTemplateUI:Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->setFrameworkTemplateUI(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->mCurrentView:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->mCurrentView:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onStart()V

    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->mCurrentView:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->mCurrentView:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onStop()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->mCurrentView:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->setFrameworkTemplateUI(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V

    :cond_0
    invoke-static {}, Lcom/tencent/qqpimsecure/uilib/view/template/TemplateUIFactory;->Instance()Lcom/tencent/qqpimsecure/uilib/view/template/TemplateUIFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->mTemplateUI:Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/template/TemplateUIFactory;->recycleTemplateUI(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V

    iput-object v2, p0, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->mTemplateUI:Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseActivityGroup;->onStop()V

    return-void
.end method

.method public startActivityWithAnim()V
    .locals 2

    const v0, 0x7f040017

    const v1, 0x7f040016

    invoke-virtual {p0, v0, v1}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->overridePendingTransition(II)V

    return-void
.end method
