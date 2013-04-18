.class public Lcom/ijinshan/kinghelper/firewall/FirewallCallActivity;
.super Lcom/keniu/security/main/BaseTitleActivity;
.source "FirewallCallActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field protected static final a:Z = true

.field protected static final b:Ljava/lang/String; = "FirewallCallActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/keniu/security/main/BaseTitleActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 77
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 109
    :goto_0
    return-void

    .line 79
    :sswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 80
    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallCallActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 83
    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/keniu/security/commumgr/NumLocateQueryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 84
    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallCallActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 87
    :sswitch_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/keniu/security/commumgr/CallLocateSettingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 88
    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallCallActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 93
    :sswitch_3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 94
    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallCallActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 99
    :sswitch_4
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/keniu/security/rates/RatesRequestMainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 100
    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallCallActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 104
    :sswitch_5
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ijinshan/kinghelper/firewall/FirewallCommonServiceQueryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 105
    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallCallActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 77
    :sswitch_data_0
    .sparse-switch
        0x7f080031 -> :sswitch_0
        0x7f080035 -> :sswitch_1
        0x7f080039 -> :sswitch_2
        0x7f08003d -> :sswitch_5
        0x7f080041 -> :sswitch_3
        0x7f080046 -> :sswitch_4
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0x8

    .line 37
    const v0, 0x7f030006

    const v1, 0x7f0b0011

    invoke-super {p0, p1, v0, v1}, Lcom/keniu/security/main/BaseTitleActivity;->a(Landroid/os/Bundle;II)V

    .line 44
    if-nez p1, :cond_0

    .line 45
    const-string v0, "telman"

    invoke-static {p0, v0}, Lcom/jxphone/mosecurity/a/a;->i(Landroid/content/Context;Ljava/lang/String;)V

    .line 48
    :cond_0
    const v0, 0x7f080035

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    const v0, 0x7f080039

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    const v0, 0x7f080031

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    const v0, 0x7f08003d

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    const v0, 0x7f080046

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 57
    invoke-static {}, Lcom/keniu/security/h/b;->a()Z

    move-result v1

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/keniu/security/h/b;->a:Z

    if-eqz v1, :cond_2

    .line 58
    :cond_1
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 60
    :cond_2
    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    const v0, 0x7f080041

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 63
    const v0, 0x7f080045

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 64
    invoke-static {}, Lcom/jxphone/mosecurity/d/l;->a()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {p0}, Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 65
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 72
    :goto_0
    return-void

    .line 68
    :cond_3
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 69
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
