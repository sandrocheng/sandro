.class public final Lcom/ijinshan/kinghelper/firewall/core/w;
.super Ljava/lang/Object;
.source "SmsFirewallBroadcastReceiver.java"


# instance fields
.field public a:Landroid/content/Context;

.field public b:Landroid/content/Intent;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Z

.field public f:[Landroid/telephony/SmsMessage;

.field public g:Landroid/content/BroadcastReceiver;

.field public h:Z

.field final synthetic i:Lcom/ijinshan/kinghelper/firewall/core/SmsFirewallBroadcastReceiver;


# direct methods
.method public constructor <init>(Lcom/ijinshan/kinghelper/firewall/core/SmsFirewallBroadcastReceiver;)V
    .locals 1
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/core/w;->i:Lcom/ijinshan/kinghelper/firewall/core/SmsFirewallBroadcastReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ijinshan/kinghelper/firewall/core/w;->h:Z

    return-void
.end method
