.class public Lcom/ijinshan/kinghelper/firewall/FirewallSettingTimeLanjie;
.super Lcom/keniu/security/main/BaseTitleActivity;
.source "FirewallSettingTimeLanjie.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 17
    invoke-direct {p0}, Lcom/keniu/security/main/BaseTitleActivity;-><init>()V

    .line 19
    iput v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSettingTimeLanjie;->a:I

    .line 20
    iput v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSettingTimeLanjie;->b:I

    return-void
.end method

.method private a()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 63
    const v0, 0x7f08007f

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingTimeLanjie;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "%02d : %02d"

    new-array v2, v6, [Ljava/lang/Object;

    iget v3, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSettingTimeLanjie;->a:I

    div-int/lit8 v3, v3, 0x3c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget v3, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSettingTimeLanjie;->a:I

    rem-int/lit8 v3, v3, 0x3c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    const v0, 0x7f080080

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingTimeLanjie;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "%02d : %02d"

    new-array v2, v6, [Ljava/lang/Object;

    iget v3, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSettingTimeLanjie;->b:I

    div-int/lit8 v3, v3, 0x3c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget v3, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSettingTimeLanjie;->b:I

    rem-int/lit8 v3, v3, 0x3c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->f()Lcom/ijinshan/kinghelper/firewall/dg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/dg;->a()Ljava/lang/String;

    move-result-object v0

    .line 71
    const v1, 0x7f08007e

    invoke-virtual {p0, v1}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingTimeLanjie;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5f53\u524d\u6a21\u5f0f\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    return-void
.end method

.method static synthetic a(Lcom/ijinshan/kinghelper/firewall/FirewallSettingTimeLanjie;ZI)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const v2, 0x7f0b01f7

    const/4 v1, 0x0

    .line 17
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSettingTimeLanjie;->b:I

    if-ne v0, p2, :cond_1

    invoke-virtual {p0, v2}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingTimeLanjie;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSettingTimeLanjie;->a:I

    if-ne v0, p2, :cond_1

    invoke-virtual {p0, v2}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingTimeLanjie;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    iput p2, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSettingTimeLanjie;->a:I

    :goto_1
    iget v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSettingTimeLanjie;->a:I

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/dd;->a(I)V

    iget v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSettingTimeLanjie;->b:I

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/dd;->b(I)V

    invoke-direct {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingTimeLanjie;->a()V

    goto :goto_0

    :cond_2
    iput p2, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSettingTimeLanjie;->b:I

    goto :goto_1
.end method

.method private a(Z)V
    .locals 6
    .parameter

    .prologue
    .line 100
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSettingTimeLanjie;->a:I

    div-int/lit8 v0, v0, 0x3c

    move v3, v0

    .line 101
    :goto_0
    if-eqz p1, :cond_1

    iget v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSettingTimeLanjie;->a:I

    rem-int/lit8 v0, v0, 0x3c

    move v4, v0

    .line 102
    :goto_1
    new-instance v0, Landroid/app/TimePickerDialog;

    new-instance v2, Lcom/ijinshan/kinghelper/firewall/ai;

    invoke-direct {v2, p0, p1}, Lcom/ijinshan/kinghelper/firewall/ai;-><init>(Lcom/ijinshan/kinghelper/firewall/FirewallSettingTimeLanjie;Z)V

    const/4 v5, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 113
    invoke-virtual {v0}, Landroid/app/TimePickerDialog;->show()V

    .line 114
    return-void

    .line 100
    :cond_0
    iget v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSettingTimeLanjie;->b:I

    div-int/lit8 v0, v0, 0x3c

    move v3, v0

    goto :goto_0

    .line 101
    :cond_1
    iget v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSettingTimeLanjie;->b:I

    rem-int/lit8 v0, v0, 0x3c

    move v4, v0

    goto :goto_1
.end method

.method private a(ZI)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const v2, 0x7f0b01f7

    const/4 v1, 0x0

    .line 76
    if-eqz p1, :cond_0

    .line 77
    iget v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSettingTimeLanjie;->b:I

    if-ne v0, p2, :cond_1

    .line 78
    invoke-virtual {p0, v2}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingTimeLanjie;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 97
    :goto_0
    return-void

    .line 82
    :cond_0
    iget v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSettingTimeLanjie;->a:I

    if-ne v0, p2, :cond_1

    .line 83
    invoke-virtual {p0, v2}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingTimeLanjie;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 88
    :cond_1
    if-eqz p1, :cond_2

    .line 89
    iput p2, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSettingTimeLanjie;->a:I

    .line 93
    :goto_1
    iget v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSettingTimeLanjie;->a:I

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/dd;->a(I)V

    .line 94
    iget v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSettingTimeLanjie;->b:I

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/dd;->b(I)V

    .line 96
    invoke-direct {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingTimeLanjie;->a()V

    goto :goto_0

    .line 91
    :cond_2
    iput p2, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSettingTimeLanjie;->b:I

    goto :goto_1
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const v4, 0x7f08007d

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 136
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    const v1, 0x7f08007c

    if-ne v0, v1, :cond_0

    .line 137
    if-eqz p2, :cond_1

    .line 138
    invoke-virtual {p0, v4}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingTimeLanjie;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 139
    invoke-static {v3}, Lcom/ijinshan/kinghelper/firewall/dd;->b(Z)V

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    invoke-virtual {p0, v4}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingTimeLanjie;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 143
    invoke-static {v2}, Lcom/ijinshan/kinghelper/firewall/dd;->b(Z)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 118
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f08007f

    if-ne v0, v1, :cond_1

    .line 119
    invoke-direct {p0, v3}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingTimeLanjie;->a(Z)V

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f080080

    if-ne v0, v1, :cond_2

    .line 122
    invoke-direct {p0, v2}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingTimeLanjie;->a(Z)V

    goto :goto_0

    .line 124
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f08007d

    if-ne v0, v1, :cond_3

    .line 125
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsNightActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 126
    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingTimeLanjie;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 128
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f08007b

    if-ne v0, v1, :cond_0

    .line 129
    const v0, 0x7f08007c

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingTimeLanjie;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/CheckBox;

    .line 130
    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v3

    :goto_1
    invoke-virtual {p0, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const v2, 0x7f08007d

    .line 24
    const v0, 0x7f03000e

    invoke-super {p0, p1, v0}, Lcom/keniu/security/main/BaseTitleActivity;->a(Landroid/os/Bundle;I)V

    .line 26
    const v0, 0x7f08007f

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingTimeLanjie;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 27
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    const v0, 0x7f080080

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingTimeLanjie;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 30
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    invoke-virtual {p0, v2}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingTimeLanjie;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    const v0, 0x7f08007b

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingTimeLanjie;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    invoke-static {p0}, Lcom/ijinshan/kinghelper/firewall/dd;->a(Landroid/content/Context;)V

    .line 36
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->n()I

    move-result v0

    iput v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSettingTimeLanjie;->a:I

    .line 37
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->o()I

    move-result v0

    iput v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSettingTimeLanjie;->b:I

    .line 39
    invoke-direct {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingTimeLanjie;->a()V

    .line 41
    const v0, 0x7f08007c

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingTimeLanjie;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 42
    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 44
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 46
    invoke-virtual {p0, v2}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingTimeLanjie;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 53
    :goto_0
    return-void

    .line 49
    :cond_0
    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 50
    invoke-virtual {p0, v2}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingTimeLanjie;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 57
    invoke-super {p0}, Lcom/keniu/security/main/BaseTitleActivity;->onResume()V

    .line 58
    invoke-direct {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingTimeLanjie;->a()V

    .line 59
    return-void
.end method
