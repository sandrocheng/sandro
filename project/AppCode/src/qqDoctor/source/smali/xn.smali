.class public final Lxn;
.super Ljava/lang/Object;


# instance fields
.field a:Landroid/content/Context;

.field b:Lho;

.field c:Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;

.field d:Landroid/content/BroadcastReceiver;

.field private e:Landroid/view/LayoutInflater;

.field private f:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lxn;->d:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lxn;->a:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lxn;->e:Landroid/view/LayoutInflater;

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    iput-object v0, p0, Lxn;->b:Lho;

    const-class v0, Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;

    iput-object v0, p0, Lxn;->c:Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;

    return-void
.end method

.method public static a(Landroid/content/Context;I)V
    .locals 4

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-direct {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b07a9

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(I)V

    invoke-virtual {v0, p1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(I)V

    const v1, 0x7f0b0045

    new-instance v2, Lxq;

    invoke-direct {v2, v0}, Lxq;-><init>(Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setPositiveButton(ILandroid/view/View$OnClickListener;I)V

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lxn;->b:Lho;

    invoke-virtual {v0}, Lho;->bD()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lxn;->c:Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;->getBindQQNum()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "BIND_QQ"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lxn;->a:Landroid/content/Context;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v1, p0, Lxn;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lxn;->c:Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;->getPassword()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lxn;->b:Lho;

    invoke-virtual {v0}, Lho;->bF()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lxn;->c:Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;

    invoke-virtual {v1, v0}, Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;->setPassword(Ljava/lang/String;)V

    :cond_1
    if-eqz v0, :cond_2

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lxn;->a:Landroid/content/Context;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v1, p0, Lxn;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lxn;->c()Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    goto :goto_0

    :cond_4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lxn;->a:Landroid/content/Context;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofGuidelActivity1;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "bind_qq"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lxn;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public final a(I)V
    .locals 4

    const/4 v3, 0x2

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v1, p0, Lxn;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b081d

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(I)V

    const v1, 0x7f0b07f7

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(I)V

    const v1, 0x7f0b0045

    new-instance v2, Lxr;

    invoke-direct {v2, p0, v0}, Lxr;-><init>(Lxn;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setPositiveButton(ILandroid/view/View$OnClickListener;I)V

    const v1, 0x7f0b0033

    new-instance v2, Lxs;

    invoke-direct {v2, p0, v0, p1}, Lxs;-><init>(Lxn;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;I)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setPositiveButton(ILandroid/view/View$OnClickListener;I)V

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    return-void
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lxn;->c:Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;->getPassword()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lxn;->b:Lho;

    invoke-virtual {v0}, Lho;->bF()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lxn;->c:Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;

    invoke-virtual {v1, v0}, Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;->setPassword(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final b()Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;
    .locals 8

    const/4 v7, 0x2

    iget-object v0, p0, Lxn;->e:Landroid/view/LayoutInflater;

    const v1, 0x7f03001a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lxn;->f:Landroid/view/View;

    iget-object v0, p0, Lxn;->f:Landroid/view/View;

    const v1, 0x7f080046

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iget-object v0, p0, Lxn;->f:Landroid/view/View;

    const v1, 0x7f080047

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iget-object v0, p0, Lxn;->f:Landroid/view/View;

    const v1, 0x7f080048

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    new-instance v5, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v0, p0, Lxn;->a:Landroid/content/Context;

    invoke-direct {v5, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lxn;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b080a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lxn;->f:Landroid/view/View;

    invoke-virtual {v5, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setView(Landroid/view/View;)V

    const v6, 0x7f0b0045

    new-instance v0, Lxt;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lxt;-><init>(Lxn;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v5, v6, v0, v7}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setPositiveButton(ILandroid/view/View$OnClickListener;I)V

    const v0, 0x7f0b0047

    new-instance v1, Lxu;

    invoke-direct {v1, v5}, Lxu;-><init>(Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v5, v0, v1, v7}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setNegativeButton(ILandroid/view/View$OnClickListener;I)V

    iget-object v0, p0, Lxn;->f:Landroid/view/View;

    const v1, 0x7f080042

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lxv;

    invoke-direct {v1, p0, v5}, Lxv;-><init>(Lxn;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lxn;->f:Landroid/view/View;

    const v1, 0x7f080041

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    new-instance v1, Lxw;

    invoke-direct {v1, v0, v2, v3, v4}, Lxw;-><init>(Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->setClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v5}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    return-object v5
.end method

.method public final c()Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;
    .locals 5

    iget-object v0, p0, Lxn;->e:Landroid/view/LayoutInflater;

    const v1, 0x7f030018

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lxn;->f:Landroid/view/View;

    iget-object v0, p0, Lxn;->f:Landroid/view/View;

    const v1, 0x7f080040

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iget-object v1, p0, Lxn;->f:Landroid/view/View;

    const v2, 0x7f08003f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lxn;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b080e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lxn;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b080d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v1, p0, Lxn;->a:Landroid/content/Context;

    invoke-direct {v2, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lxn;->f:Landroid/view/View;

    invoke-virtual {v2, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setView(Landroid/view/View;)V

    const v1, 0x7f0b0045

    new-instance v3, Lxx;

    invoke-direct {v3, p0, v0, v2}, Lxx;-><init>(Lxn;Landroid/widget/EditText;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setPositiveButton(ILandroid/view/View$OnClickListener;I)V

    const v1, 0x7f0b0047

    new-instance v3, Lxy;

    invoke-direct {v3, v2}, Lxy;-><init>(Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    const/4 v4, 0x2

    invoke-virtual {v2, v1, v3, v4}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setNegativeButton(ILandroid/view/View$OnClickListener;I)V

    iget-object v1, p0, Lxn;->f:Landroid/view/View;

    const v3, 0x7f080041

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    new-instance v3, Lxz;

    invoke-direct {v3, v1, v0}, Lxz;-><init>(Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;Landroid/widget/EditText;)V

    invoke-virtual {v1, v3}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->setClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lxn;->f:Landroid/view/View;

    const v1, 0x7f080042

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lya;

    invoke-direct {v1, p0, v2}, Lya;-><init>(Lxn;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    return-object v2
.end method
