.class public Lcom/ijinshan/kinghelper/firewall/IpDialSettingPopActivity;
.super Landroid/app/Activity;
.source "IpDialSettingPopActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 13
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 14
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingPopActivity;->requestWindowFeature(I)Z

    .line 15
    const v0, 0x7f03004f

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingPopActivity;->setContentView(I)V

    .line 16
    return-void
.end method
