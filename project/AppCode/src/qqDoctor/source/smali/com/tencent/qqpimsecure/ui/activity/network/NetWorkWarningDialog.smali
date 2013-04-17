.class public Lcom/tencent/qqpimsecure/ui/activity/network/NetWorkWarningDialog;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

.field private b:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

.field private c:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

.field private d:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

.field private e:Landroid/widget/LinearLayout;

.field private f:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Lit;

.field private j:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/ui/activity/network/NetWorkWarningDialog;->j:Z

    return-void
.end method

.method public static a(Landroid/content/Context;FZ)V
    .locals 4

    new-instance v0, Liu;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Liu;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Liu;->getTotalForMonth()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tencent/qqpimsecure/ui/activity/network/NetWorkWarningDialog;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "radio"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    const-string v1, "closeConnection"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/ui/activity/network/NetWorkWarningDialog;->j:Z

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/network/NetWorkWarningDialog;->f:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->getChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/network/NetWorkWarningDialog;->i:Lit;

    invoke-virtual {v0}, Lit;->d()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/network/NetWorkWarningDialog;->a:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    if-ne p1, v0, :cond_1

    invoke-static {p0}, Lfs;->a(Landroid/content/Context;)I

    :cond_1
    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/ui/activity/network/NetWorkWarningDialog;->finish()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/network/NetWorkWarningDialog;->i:Lit;

    invoke-virtual {v0}, Lit;->b()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/network/NetWorkWarningDialog;->f:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->getChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/network/NetWorkWarningDialog;->f:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->setChecked(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/network/NetWorkWarningDialog;->f:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->setChecked(Z)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/high16 v4, 0x3f80

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v3, 0x8

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v6}, Lcom/tencent/qqpimsecure/ui/activity/network/NetWorkWarningDialog;->requestWindowFeature(I)Z

    const v0, 0x7f030016

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/network/NetWorkWarningDialog;->setContentView(I)V

    const v0, 0x7f080020

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/network/NetWorkWarningDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/network/NetWorkWarningDialog;->f:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/network/NetWorkWarningDialog;->f:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    invoke-virtual {v0, v5}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->setChecked(Z)V

    const v0, 0x7f08003d

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/network/NetWorkWarningDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/network/NetWorkWarningDialog;->a:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    const v0, 0x7f08002b

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/network/NetWorkWarningDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/network/NetWorkWarningDialog;->b:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/network/NetWorkWarningDialog;->a:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/network/NetWorkWarningDialog;->b:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080023

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/network/NetWorkWarningDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/network/NetWorkWarningDialog;->g:Landroid/widget/TextView;

    const v0, 0x7f08003e

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/network/NetWorkWarningDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/network/NetWorkWarningDialog;->c:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/network/NetWorkWarningDialog;->c:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08003c

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/network/NetWorkWarningDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/network/NetWorkWarningDialog;->e:Landroid/widget/LinearLayout;

    const v0, 0x7f08003b

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/network/NetWorkWarningDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/network/NetWorkWarningDialog;->d:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    const v0, 0x7f08003a

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/network/NetWorkWarningDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/network/NetWorkWarningDialog;->h:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/network/NetWorkWarningDialog;->d:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/network/NetWorkWarningDialog;->i:Lit;

    if-nez v0, :cond_0

    new-instance v0, Liu;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Liu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/network/NetWorkWarningDialog;->i:Lit;

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/ui/activity/network/NetWorkWarningDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "radio"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v0

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/ui/activity/network/NetWorkWarningDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "closeConnection"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/network/NetWorkWarningDialog;->g:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/ui/activity/network/NetWorkWarningDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b04ae

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/network/NetWorkWarningDialog;->a:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/network/NetWorkWarningDialog;->b:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/network/NetWorkWarningDialog;->d:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/network/NetWorkWarningDialog;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/network/NetWorkWarningDialog;->c:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    const v1, 0x7f0b08a1

    invoke-virtual {p0, v1}, Lcom/tencent/qqpimsecure/ui/activity/network/NetWorkWarningDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setText(Ljava/lang/String;)V

    iput-boolean v6, p0, Lcom/tencent/qqpimsecure/ui/activity/network/NetWorkWarningDialog;->j:Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    cmpl-float v1, v0, v4

    if-ltz v1, :cond_3

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/network/NetWorkWarningDialog;->g:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/ui/activity/network/NetWorkWarningDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b04af

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/network/NetWorkWarningDialog;->a:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, v5}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/network/NetWorkWarningDialog;->b:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    const v1, 0x7f0b0033

    invoke-virtual {p0, v1}, Lcom/tencent/qqpimsecure/ui/activity/network/NetWorkWarningDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/network/NetWorkWarningDialog;->c:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/network/NetWorkWarningDialog;->d:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/network/NetWorkWarningDialog;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/network/NetWorkWarningDialog;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    new-instance v0, Liu;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Liu;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lit;->getTotalForMonth()J

    move-result-wide v1

    invoke-static {v1, v2}, La;->c(J)Ljava/lang/String;

    const v1, 0x7f0b009b

    invoke-virtual {p0, v1}, Lcom/tencent/qqpimsecure/ui/activity/network/NetWorkWarningDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Lit;->getTotalForMonth()J

    move-result-wide v3

    invoke-static {v3, v4}, La;->c(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/network/NetWorkWarningDialog;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput-boolean v6, p0, Lcom/tencent/qqpimsecure/ui/activity/network/NetWorkWarningDialog;->j:Z

    goto :goto_0

    :cond_3
    const v1, 0x3f666666

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_1

    cmpg-float v0, v0, v4

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/network/NetWorkWarningDialog;->g:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/ui/activity/network/NetWorkWarningDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b04ad

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/network/NetWorkWarningDialog;->a:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/network/NetWorkWarningDialog;->b:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/network/NetWorkWarningDialog;->c:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    const v1, 0x7f0b0045

    invoke-virtual {p0, v1}, Lcom/tencent/qqpimsecure/ui/activity/network/NetWorkWarningDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/network/NetWorkWarningDialog;->d:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/network/NetWorkWarningDialog;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/network/NetWorkWarningDialog;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iput-boolean v5, p0, Lcom/tencent/qqpimsecure/ui/activity/network/NetWorkWarningDialog;->j:Z

    goto/16 :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/ui/activity/network/NetWorkWarningDialog;->finish()V

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method
