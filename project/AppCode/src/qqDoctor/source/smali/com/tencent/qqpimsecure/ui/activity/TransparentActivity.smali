.class public Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;
.super Landroid/app/Activity;


# instance fields
.field public a:Landroid/os/Handler;

.field private b:LQQPIM/CloudInfo;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "LQQPIM/CloudCmd;",
            ">;"
        }
    .end annotation
.end field

.field private d:LQQPIM/CloudInfoRes;

.field private e:Lqr;

.field private f:I

.field private g:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Lss;

.field private m:Lacg;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput v1, p0, Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;->f:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;->g:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iput-boolean v1, p0, Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;->j:Z

    iput-boolean v1, p0, Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;->k:Z

    new-instance v0, Lafh;

    invoke-direct {v0, p0}, Lafh;-><init>(Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;->a:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic a(Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;->c:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic a(Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;ILQQPIM/CloudCmd;)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;->d:LQQPIM/CloudInfoRes;

    if-eqz v0, :cond_0

    new-instance v1, LQQPIM/CloudCmdRes;

    invoke-virtual {p2}, LQQPIM/CloudCmd;->getSeqid()I

    move-result v2

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {v1, v2, v0}, LQQPIM/CloudCmdRes;-><init>(II)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;->d:LQQPIM/CloudInfoRes;

    invoke-virtual {v0}, LQQPIM/CloudInfoRes;->getCmdres()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;->d:LQQPIM/CloudInfoRes;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LQQPIM/CloudInfoRes;->setRes(I)V

    :cond_0
    return-void

    :cond_1
    move v0, p1

    goto :goto_0
.end method

.method public static synthetic a(Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;LQQPIM/CloudInfo;LQQPIM/CloudCmd;)V
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p2}, LQQPIM/CloudCmd;->getCmdid()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;->g:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;->g:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    :cond_0
    const v0, 0x7f0b0a10

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, La;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;->g:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;->g:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setCancelable(Z)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lafk;

    invoke-direct {v1, p0, p1, p2}, Lafk;-><init>(Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;LQQPIM/CloudInfo;LQQPIM/CloudCmd;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void

    :pswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;->j:Z

    new-instance v0, Lss;

    iget-boolean v1, p0, Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;->i:Z

    invoke-virtual {p1}, LQQPIM/CloudInfo;->getBase()LQQPIM/BaseInfo;

    move-result-object v2

    invoke-virtual {v2}, LQQPIM/BaseInfo;->getTipsid()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lss;-><init>(Landroid/content/Context;ZLjava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;->l:Lss;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;->l:Lss;

    iget-boolean v1, p0, Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;->h:Z

    invoke-virtual {v0, v1}, Lss;->a(Z)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;->l:Lss;

    new-instance v1, Lafi;

    invoke-direct {v1, p0, p2}, Lafi;-><init>(Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;LQQPIM/CloudCmd;)V

    invoke-virtual {v0, v1}, Lss;->a(Lpe$a;)V

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;->k:Z

    if-eqz v0, :cond_1

    invoke-static {p0, p1}, Laaq;->a(Landroid/content/Context;LQQPIM/CloudInfo;)Lcom/tencent/tmsecure/module/update/CheckResult;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;->l:Lss;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lss;->a(Lcom/tencent/tmsecure/module/update/CheckResult;Lcom/tencent/tmsecure/module/update/IUpdateListener;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;->l:Lss;

    invoke-virtual {v0}, Lss;->c()V

    goto :goto_0

    :pswitch_1
    new-instance v0, Lacg;

    invoke-direct {v0, p0, v1, v1}, Lacg;-><init>(Landroid/content/Context;ZZ)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;->m:Lacg;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;->m:Lacg;

    new-instance v1, Lafj;

    invoke-direct {v1, p0, p2}, Lafj;-><init>(Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;LQQPIM/CloudCmd;)V

    invoke-virtual {v0, v1}, Lacg;->a(Lpe$a;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;->m:Lacg;

    invoke-virtual {v0}, Lacg;->c()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static synthetic b(Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;)I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;->f:I

    return v0
.end method

.method public static synthetic c(Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;)LQQPIM/CloudInfo;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;->b:LQQPIM/CloudInfo;

    return-object v0
.end method

.method public static synthetic d(Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;->g:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    return-object v0
.end method

.method public static synthetic e(Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;->j:Z

    return v0
.end method

.method public static synthetic f(Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;)LQQPIM/CloudInfoRes;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;->d:LQQPIM/CloudInfoRes;

    return-object v0
.end method

.method public static synthetic g(Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;)Lqr;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;->e:Lqr;

    return-object v0
.end method

.method public static synthetic h(Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;)I
    .locals 2

    iget v0, p0, Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;->f:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;->f:I

    return v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v5, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v5}, Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "key_cloud_info"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, LQQPIM/CloudInfo;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;->b:LQQPIM/CloudInfo;

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "key_tips_warning"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;->h:Z

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "key_is_confirm"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;->i:Z

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "key_is_dialog_soft_update"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;->k:Z

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lqr;->a(Landroid/content/Context;)Lqr;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;->e:Lqr;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;->b:LQQPIM/CloudInfo;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;->b:LQQPIM/CloudInfo;

    invoke-virtual {v0}, LQQPIM/CloudInfo;->getBase()LQQPIM/BaseInfo;

    move-result-object v0

    invoke-virtual {v0}, LQQPIM/BaseInfo;->getTipsid()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;->e:Lqr;

    invoke-virtual {v1, v0}, Lqr;->c(Ljava/lang/String;)LQQPIM/CloudInfoRes;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;->d:LQQPIM/CloudInfoRes;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;->d:LQQPIM/CloudInfoRes;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;->d:LQQPIM/CloudInfoRes;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, LQQPIM/CloudInfoRes;->setPhase(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;->d:LQQPIM/CloudInfoRes;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v1, v1

    invoke-virtual {v0, v1}, LQQPIM/CloudInfoRes;->setTime(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;->d:LQQPIM/CloudInfoRes;

    invoke-virtual {v0, v5}, LQQPIM/CloudInfoRes;->setAction(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;->d:LQQPIM/CloudInfoRes;

    invoke-virtual {v0, v5}, LQQPIM/CloudInfoRes;->setRes(I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;->d:LQQPIM/CloudInfoRes;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;->e:Lqr;

    invoke-virtual {v1, v0}, Lqr;->a(Ljava/util/ArrayList;)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;->d:LQQPIM/CloudInfoRes;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;->d:LQQPIM/CloudInfoRes;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, LQQPIM/CloudInfoRes;->setPhase(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;->d:LQQPIM/CloudInfoRes;

    invoke-virtual {v0, v5}, LQQPIM/CloudInfoRes;->setRes(I)V

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;->b:LQQPIM/CloudInfo;

    invoke-virtual {v0}, LQQPIM/CloudInfo;->getCloudcmds()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;->c:Ljava/util/List;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;->a:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;->finish()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;->m:Lacg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;->m:Lacg;

    invoke-virtual {v0}, Lacg;->a()V

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;->l:Lss;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;->l:Lss;

    invoke-virtual {v0}, Lss;->a()V

    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method
