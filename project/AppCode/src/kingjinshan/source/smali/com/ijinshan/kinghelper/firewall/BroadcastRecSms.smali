.class public Lcom/ijinshan/kinghelper/firewall/BroadcastRecSms;
.super Landroid/content/BroadcastReceiver;
.source "BroadcastRecSms.java"


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;


# instance fields
.field private c:Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-string v0, "android.desksms.RECIVER"

    sput-object v0, Lcom/ijinshan/kinghelper/firewall/BroadcastRecSms;->a:Ljava/lang/String;

    .line 11
    const-string v0, "nTreadId"

    sput-object v0, Lcom/ijinshan/kinghelper/firewall/BroadcastRecSms;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/BroadcastRecSms;->c:Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;

    return-void
.end method


# virtual methods
.method public final a(Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/BroadcastRecSms;->c:Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;

    .line 35
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 17
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 18
    sget-object v1, Lcom/ijinshan/kinghelper/firewall/BroadcastRecSms;->b:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 19
    sget-object v2, Lcom/ijinshan/kinghelper/firewall/BroadcastRecSms;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/BroadcastRecSms;->c:Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;

    if-eqz v0, :cond_1

    .line 22
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/BroadcastRecSms;->c:Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->finish()V

    .line 31
    :cond_0
    :goto_0
    return-void

    .line 25
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://mms-sms/conversations/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 27
    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 28
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
