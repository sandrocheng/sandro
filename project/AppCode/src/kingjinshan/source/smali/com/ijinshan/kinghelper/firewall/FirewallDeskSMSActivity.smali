.class public Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivity;
.super Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;
.source "FirewallDeskSMSActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 2

    .prologue
    .line 9
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 10
    invoke-super {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->onAttachedToWindow()V

    .line 11
    return-void
.end method
