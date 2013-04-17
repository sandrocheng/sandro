.class public Lcom/tencent/qqpimsecure/ui/activity/TipsDialog;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

.field private d:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

.field private e:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

.field private f:Ljava/lang/String;

.field private g:LQQPIM/CloudInfo;

.field private h:Lqr;

.field private i:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/ui/activity/TipsDialog;->i:Z

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tencent/qqpimsecure/ui/activity/TipsDialog;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "key_tips_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    const/4 v7, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/tencent/qqpimsecure/ui/activity/TipsDialog;->h:Lqr;

    iget-object v3, p0, Lcom/tencent/qqpimsecure/ui/activity/TipsDialog;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lqr;->c(Ljava/lang/String;)LQQPIM/CloudInfoRes;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/qqpimsecure/ui/activity/TipsDialog;->d:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    if-ne p1, v3, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v2, "key_cloud_info"

    iget-object v3, p0, Lcom/tencent/qqpimsecure/ui/activity/TipsDialog;->g:LQQPIM/CloudInfo;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v2, "key_is_confirm"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "key_is_dialog_soft_update"

    iget-boolean v2, p0, Lcom/tencent/qqpimsecure/ui/activity/TipsDialog;->i:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/TipsDialog;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/ui/activity/TipsDialog;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/tencent/qqpimsecure/ui/activity/TipsDialog;->e:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    if-ne p1, v3, :cond_3

    if-eqz v2, :cond_2

    invoke-virtual {v2, v7}, LQQPIM/CloudInfoRes;->setPhase(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    long-to-int v1, v3

    invoke-virtual {v2, v1}, LQQPIM/CloudInfoRes;->setTime(I)V

    invoke-virtual {v2, v7}, LQQPIM/CloudInfoRes;->setAction(I)V

    invoke-virtual {v2, v0}, LQQPIM/CloudInfoRes;->setRes(I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/TipsDialog;->h:Lqr;

    invoke-virtual {v1, v0}, Lqr;->a(Ljava/util/ArrayList;)V

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/ui/activity/TipsDialog;->i:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/TipsDialog;->c:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->getChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/TipsDialog;->g:LQQPIM/CloudInfo;

    invoke-static {p0, v0}, Laaq;->a(Landroid/content/Context;LQQPIM/CloudInfo;)Lcom/tencent/tmsecure/module/update/CheckResult;

    move-result-object v0

    invoke-static {v0}, Lss;->a(Lcom/tencent/tmsecure/module/update/CheckResult;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "^^ tipsdialog, no longer warn "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lho;->a()Lho;

    move-result-object v1

    invoke-virtual {v1, v0}, Lho;->F(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/ui/activity/TipsDialog;->finish()V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/tencent/qqpimsecure/ui/activity/TipsDialog;->c:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    if-ne p1, v2, :cond_0

    iget-object v2, p0, Lcom/tencent/qqpimsecure/ui/activity/TipsDialog;->c:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    invoke-virtual {v2}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->getChecked()Z

    move-result v2

    if-nez v2, :cond_4

    :goto_1
    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/TipsDialog;->c:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->setChecked(Z)V

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/TipsDialog;->e:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    const v1, 0x7f0b0033

    invoke-virtual {p0, v1}, Lcom/tencent/qqpimsecure/ui/activity/TipsDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/TipsDialog;->e:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    const v1, 0x7f0b0a29

    invoke-virtual {p0, v1}, Lcom/tencent/qqpimsecure/ui/activity/TipsDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setText(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v2}, Lcom/tencent/qqpimsecure/ui/activity/TipsDialog;->requestWindowFeature(I)Z

    const v0, 0x7f030026

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/TipsDialog;->setContentView(I)V

    const v0, 0x7f080033

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/TipsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/TipsDialog;->a:Landroid/widget/TextView;

    const v0, 0x7f080020

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/TipsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/TipsDialog;->c:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/TipsDialog;->c:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    invoke-virtual {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08001e

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/TipsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/TipsDialog;->b:Landroid/widget/TextView;

    const v0, 0x7f080030

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/TipsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/TipsDialog;->d:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    const v0, 0x7f080031

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/TipsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/TipsDialog;->e:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/TipsDialog;->d:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/TipsDialog;->e:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/ui/activity/TipsDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "key_tips_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/TipsDialog;->f:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/ui/activity/TipsDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lqr;->a(Landroid/content/Context;)Lqr;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/TipsDialog;->h:Lqr;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/TipsDialog;->h:Lqr;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/TipsDialog;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lqr;->b(Ljava/lang/String;)LQQPIM/CloudInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/TipsDialog;->g:LQQPIM/CloudInfo;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/TipsDialog;->g:LQQPIM/CloudInfo;

    if-eqz v0, :cond_8

    iget-object v4, p0, Lcom/tencent/qqpimsecure/ui/activity/TipsDialog;->g:LQQPIM/CloudInfo;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/TipsDialog;->g:LQQPIM/CloudInfo;

    invoke-virtual {v0}, LQQPIM/CloudInfo;->getTips()LQQPIM/TipsInfo;

    move-result-object v5

    if-eqz v5, :cond_7

    iput-boolean v3, p0, Lcom/tencent/qqpimsecure/ui/activity/TipsDialog;->i:Z

    invoke-virtual {v5}, LQQPIM/TipsInfo;->getAtype()I

    move-result v0

    if-ne v0, v2, :cond_4

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/TipsDialog;->g:LQQPIM/CloudInfo;

    invoke-virtual {v0}, LQQPIM/CloudInfo;->getCloudcmds()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/CloudCmd;

    invoke-virtual {v0}, LQQPIM/CloudCmd;->getCmdid()I

    move-result v0

    const/16 v6, 0xc8

    if-ne v0, v6, :cond_0

    iput-boolean v2, p0, Lcom/tencent/qqpimsecure/ui/activity/TipsDialog;->i:Z

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/TipsDialog;->a:Landroid/widget/TextView;

    invoke-virtual {v5}, LQQPIM/TipsInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    iget-boolean v2, p0, Lcom/tencent/qqpimsecure/ui/activity/TipsDialog;->i:Z

    if-eqz v2, :cond_5

    invoke-static {p0, v4}, Laaq;->a(Landroid/content/Context;LQQPIM/CloudInfo;)Lcom/tencent/tmsecure/module/update/CheckResult;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/qqpimsecure/ui/activity/TipsDialog;->b:Landroid/widget/TextView;

    iget-object v6, v0, Lcom/tencent/tmsecure/module/update/CheckResult;->mMessage:Ljava/lang/String;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/tencent/qqpimsecure/ui/activity/TipsDialog;->d:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    const v6, 0x7f0b0a24

    invoke-virtual {p0, v6}, Lcom/tencent/qqpimsecure/ui/activity/TipsDialog;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setText(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/qqpimsecure/ui/activity/TipsDialog;->e:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    const v6, 0x7f0b0a29

    invoke-virtual {p0, v6}, Lcom/tencent/qqpimsecure/ui/activity/TipsDialog;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setText(Ljava/lang/String;)V

    if-nez v1, :cond_1

    const v2, 0x7f08001f

    invoke-virtual {p0, v2}, Lcom/tencent/qqpimsecure/ui/activity/TipsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/tencent/qqpimsecure/ui/activity/TipsDialog;->e:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setVisibility(I)V

    :cond_2
    iget-boolean v2, p0, Lcom/tencent/qqpimsecure/ui/activity/TipsDialog;->i:Z

    if-eqz v2, :cond_3

    invoke-static {p0, v4}, Lss;->b(Landroid/content/Context;LQQPIM/CloudInfo;)V

    if-eqz v1, :cond_6

    if-eqz v0, :cond_6

    invoke-static {}, Lqx;->a()Lqx;

    move-result-object v0

    invoke-virtual {v0}, Lqx;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lho;->a()Lho;

    move-result-object v1

    invoke-virtual {v1, v0}, Lho;->j(Ljava/lang/String;)V

    invoke-virtual {v5}, LQQPIM/TipsInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lho;->k(Ljava/lang/String;)V

    invoke-virtual {v5}, LQQPIM/TipsInfo;->getMsg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lho;->l(Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-void

    :cond_4
    move v1, v3

    goto/16 :goto_0

    :cond_5
    iget-object v2, p0, Lcom/tencent/qqpimsecure/ui/activity/TipsDialog;->b:Landroid/widget/TextView;

    invoke-virtual {v5}, LQQPIM/TipsInfo;->getMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_6
    invoke-static {p0, v4}, Lss;->a(Landroid/content/Context;LQQPIM/CloudInfo;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/ui/activity/TipsDialog;->finish()V

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/ui/activity/TipsDialog;->finish()V

    goto :goto_2

    :cond_8
    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/ui/activity/TipsDialog;->finish()V

    goto :goto_2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6

    const/4 v5, 0x2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/TipsDialog;->h:Lqr;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/TipsDialog;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lqr;->c(Ljava/lang/String;)LQQPIM/CloudInfoRes;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v5}, LQQPIM/CloudInfoRes;->setPhase(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v1, v1

    invoke-virtual {v0, v1}, LQQPIM/CloudInfoRes;->setTime(I)V

    invoke-virtual {v0, v5}, LQQPIM/CloudInfoRes;->setAction(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LQQPIM/CloudInfoRes;->setRes(I)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/TipsDialog;->h:Lqr;

    invoke-virtual {v0, v1}, Lqr;->a(Ljava/util/ArrayList;)V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
