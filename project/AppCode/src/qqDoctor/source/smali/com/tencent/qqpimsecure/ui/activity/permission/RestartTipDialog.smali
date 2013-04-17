.class public Lcom/tencent/qqpimsecure/ui/activity/permission/RestartTipDialog;
.super Landroid/app/Activity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qqpimsecure/ui/activity/permission/RestartTipDialog$a;
    }
.end annotation


# instance fields
.field private a:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

.field private b:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

.field private c:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/qqpimsecure/ui/activity/permission/RestartTipDialog;)Lcom/tencent/qqpimsecure/uilib/view/ButtonView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/permission/RestartTipDialog;->a:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    return-object v0
.end method

.method static synthetic b(Lcom/tencent/qqpimsecure/ui/activity/permission/RestartTipDialog;)Lcom/tencent/qqpimsecure/uilib/view/ButtonView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/permission/RestartTipDialog;->b:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/permission/RestartTipDialog;->requestWindowFeature(I)Z

    const v0, 0x7f0300c2

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/permission/RestartTipDialog;->setContentView(I)V

    const v0, 0x7f080230

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/permission/RestartTipDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/permission/RestartTipDialog;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/permission/RestartTipDialog;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/ui/activity/permission/RestartTipDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "reboot_tips"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f080231

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/permission/RestartTipDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/permission/RestartTipDialog;->a:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/permission/RestartTipDialog;->a:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    new-instance v1, Lcom/tencent/qqpimsecure/ui/activity/permission/RestartTipDialog$a;

    invoke-direct {v1, p0}, Lcom/tencent/qqpimsecure/ui/activity/permission/RestartTipDialog$a;-><init>(Lcom/tencent/qqpimsecure/ui/activity/permission/RestartTipDialog;)V

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080232

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/permission/RestartTipDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/permission/RestartTipDialog;->b:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/permission/RestartTipDialog;->b:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    new-instance v1, Lcom/tencent/qqpimsecure/ui/activity/permission/RestartTipDialog$a;

    invoke-direct {v1, p0}, Lcom/tencent/qqpimsecure/ui/activity/permission/RestartTipDialog$a;-><init>(Lcom/tencent/qqpimsecure/ui/activity/permission/RestartTipDialog;)V

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/permission/RestartTipDialog;->b:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/permission/RestartTipDialog;->b:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->performClick()Z

    sget-object v1, Lxg;->a:Lxg$a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lxg;->a:Lxg$a;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
