.class public Lcom/ijinshan/kinghelper/firewall/core/FakeSmsFirewallBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FakeSmsFirewallBroadcastReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 12
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/keniu/security/service/MoSecurityService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 13
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 14
    return-void
.end method
