.class public Lcom/ijinshan/kinghelper/firewall/IPDialTypeActivity;
.super Landroid/app/Activity;
.source "IPDialTypeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final b:I = 0x1

.field private static final c:I = 0x2


# instance fields
.field private a:Landroid/widget/RadioGroup;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private a()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 78
    new-instance v0, Lcom/keniu/security/util/aq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 79
    const v1, 0x7f0b0219

    invoke-virtual {p0, v1}, Lcom/ijinshan/kinghelper/firewall/IPDialTypeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    .line 81
    const v1, 0x7f0b009a

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->b(I)Lcom/keniu/security/util/aq;

    .line 82
    const v1, 0x7f0b00d5

    invoke-virtual {p0, v1}, Lcom/ijinshan/kinghelper/firewall/IPDialTypeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/ijinshan/kinghelper/firewall/bx;

    invoke-direct {v2, p0}, Lcom/ijinshan/kinghelper/firewall/bx;-><init>(Lcom/ijinshan/kinghelper/firewall/IPDialTypeActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 94
    const v1, 0x7f0b00d6

    invoke-virtual {p0, v1}, Lcom/ijinshan/kinghelper/firewall/IPDialTypeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/ijinshan/kinghelper/firewall/by;

    invoke-direct {v2, p0}, Lcom/ijinshan/kinghelper/firewall/by;-><init>(Lcom/ijinshan/kinghelper/firewall/IPDialTypeActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 104
    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    .line 105
    return-object v0
.end method

.method static synthetic a(Lcom/ijinshan/kinghelper/firewall/IPDialTypeActivity;)Landroid/widget/RadioGroup;
    .locals 1
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IPDialTypeActivity;->a:Landroid/widget/RadioGroup;

    return-object v0
.end method

.method private b()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 111
    new-instance v0, Lcom/keniu/security/util/aq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 112
    const v1, 0x7f0b0219

    invoke-virtual {p0, v1}, Lcom/ijinshan/kinghelper/firewall/IPDialTypeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    .line 114
    const v1, 0x7f0b0099

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->b(I)Lcom/keniu/security/util/aq;

    .line 115
    const v1, 0x7f0b009b

    invoke-virtual {p0, v1}, Lcom/ijinshan/kinghelper/firewall/IPDialTypeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/ijinshan/kinghelper/firewall/bz;

    invoke-direct {v2, p0}, Lcom/ijinshan/kinghelper/firewall/bz;-><init>(Lcom/ijinshan/kinghelper/firewall/IPDialTypeActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 123
    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    .line 124
    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 144
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f080168

    if-ne v0, v1, :cond_1

    .line 146
    const v0, 0x7f0b00ae

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/IPDialTypeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/dc;->c(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/IPDialTypeActivity;->finish()V

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f080166

    if-ne v0, v1, :cond_2

    .line 150
    const v0, 0x7f0b00ac

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/IPDialTypeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/dc;->c(Ljava/lang/String;)V

    .line 151
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ijinshan/kinghelper/firewall/IpProvinceCityActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 152
    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/IPDialTypeActivity;->startActivity(Landroid/content/Intent;)V

    .line 153
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/IPDialTypeActivity;->finish()V

    goto :goto_0

    .line 154
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f080167

    if-ne v0, v1, :cond_0

    .line 155
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/IPDialTypeActivity;->showDialog(I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    const v4, 0x7f080168

    const v3, 0x7f080167

    const v2, 0x7f080166

    .line 26
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/IPDialTypeActivity;->requestWindowFeature(I)Z

    .line 28
    const v0, 0x7f030050

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/IPDialTypeActivity;->setContentView(I)V

    .line 29
    const v0, 0x7f080007

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/IPDialTypeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 30
    const v1, 0x7f0b0077

    invoke-virtual {p0, v1}, Lcom/ijinshan/kinghelper/firewall/IPDialTypeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    const v0, 0x7f080165

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/IPDialTypeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IPDialTypeActivity;->a:Landroid/widget/RadioGroup;

    .line 33
    const v0, 0x7f0b00ae

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/IPDialTypeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/dc;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 35
    const v1, 0x7f0b00ad

    invoke-virtual {p0, v1}, Lcom/ijinshan/kinghelper/firewall/IPDialTypeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 37
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IPDialTypeActivity;->a:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v3}, Landroid/widget/RadioGroup;->check(I)V

    .line 46
    :goto_0
    invoke-virtual {p0, v4}, Lcom/ijinshan/kinghelper/firewall/IPDialTypeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    invoke-virtual {p0, v2}, Lcom/ijinshan/kinghelper/firewall/IPDialTypeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    invoke-virtual {p0, v3}, Lcom/ijinshan/kinghelper/firewall/IPDialTypeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    return-void

    .line 38
    :cond_0
    const v1, 0x7f0b00ac

    invoke-virtual {p0, v1}, Lcom/ijinshan/kinghelper/firewall/IPDialTypeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IPDialTypeActivity;->a:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 43
    :cond_1
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IPDialTypeActivity;->a:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v4}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter

    .prologue
    const v2, 0x7f0b0219

    const/4 v1, 0x0

    .line 65
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 67
    new-instance v0, Lcom/keniu/security/util/aq;

    invoke-direct {v0, p0, v1}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    invoke-virtual {p0, v2}, Lcom/ijinshan/kinghelper/firewall/IPDialTypeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    const v1, 0x7f0b0099

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->b(I)Lcom/keniu/security/util/aq;

    const v1, 0x7f0b009b

    invoke-virtual {p0, v1}, Lcom/ijinshan/kinghelper/firewall/IPDialTypeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/ijinshan/kinghelper/firewall/bz;

    invoke-direct {v2, p0}, Lcom/ijinshan/kinghelper/firewall/bz;-><init>(Lcom/ijinshan/kinghelper/firewall/IPDialTypeActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    .line 73
    :goto_0
    return-object v0

    .line 68
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 70
    new-instance v0, Lcom/keniu/security/util/aq;

    invoke-direct {v0, p0, v1}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    invoke-virtual {p0, v2}, Lcom/ijinshan/kinghelper/firewall/IPDialTypeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    const v1, 0x7f0b009a

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->b(I)Lcom/keniu/security/util/aq;

    const v1, 0x7f0b00d5

    invoke-virtual {p0, v1}, Lcom/ijinshan/kinghelper/firewall/IPDialTypeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/ijinshan/kinghelper/firewall/bx;

    invoke-direct {v2, p0}, Lcom/ijinshan/kinghelper/firewall/bx;-><init>(Lcom/ijinshan/kinghelper/firewall/IPDialTypeActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    const v1, 0x7f0b00d6

    invoke-virtual {p0, v1}, Lcom/ijinshan/kinghelper/firewall/IPDialTypeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/ijinshan/kinghelper/firewall/by;

    invoke-direct {v2, p0}, Lcom/ijinshan/kinghelper/firewall/by;-><init>(Lcom/ijinshan/kinghelper/firewall/IPDialTypeActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    goto :goto_0

    .line 73
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 130
    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 132
    :cond_0
    const v0, 0x7f0b00ae

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/IPDialTypeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/dc;->c(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/IPDialTypeActivity;->finish()V

    .line 137
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/IPDialTypeActivity;->showDialog(I)V

    .line 56
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 57
    return-void
.end method
