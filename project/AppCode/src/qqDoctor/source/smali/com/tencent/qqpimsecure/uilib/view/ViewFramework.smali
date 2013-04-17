.class public abstract Lcom/tencent/qqpimsecure/uilib/view/ViewFramework;
.super Ljava/lang/Object;


# instance fields
.field protected mContext:Landroid/content/Context;

.field private mCreated:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/ViewFramework;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ViewFramework;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ViewFramework;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public abstract getView()Landroid/view/View;
.end method

.method public isCreated()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ViewFramework;->mCreated:Z

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onBackClick()V
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/ViewFramework;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->finish()V

    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCreate()V
    .locals 0

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onOptionsItemSelected(Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuModel;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ViewFramework;->mCreated:Z

    return-void
.end method

.method public onStop()V
    .locals 0

    return-void
.end method

.method public setCreated(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/qqpimsecure/uilib/view/ViewFramework;->mCreated:Z

    return-void
.end method
