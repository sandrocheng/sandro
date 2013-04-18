.class public Lcom/ijinshan/kinghelper/firewall/FireWallSmsAndCallActivity;
.super Landroid/app/Activity;
.source "FireWallSmsAndCallActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 30
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 44
    :goto_0
    return-void

    .line 32
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 33
    const-class v1, Lcom/ijinshan/kinghelper/firewall/FirewallSmsActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 34
    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FireWallSmsAndCallActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 37
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 38
    const-class v1, Lcom/ijinshan/kinghelper/firewall/FirewallCallActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 39
    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FireWallSmsAndCallActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 30
    :pswitch_data_0
    .packed-switch 0x7f080079
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 17
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FireWallSmsAndCallActivity;->requestWindowFeature(I)Z

    .line 18
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    const v0, 0x7f03000d

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FireWallSmsAndCallActivity;->setContentView(I)V

    .line 20
    const v0, 0x7f080079

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FireWallSmsAndCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 21
    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    const v0, 0x7f08007a

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FireWallSmsAndCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 24
    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    return-void
.end method
