.class public Lcom/ijinshan/kinghelper/firewall/core/FirewallSmsTipDialog;
.super Landroid/content/BroadcastReceiver;
.source "FirewallSmsTipDialog.java"


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field private static c:Lcom/ijinshan/kinghelper/firewall/core/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/ijinshan/kinghelper/firewall/core/FirewallSmsTipDialog;->c:Lcom/ijinshan/kinghelper/firewall/core/l;

    .line 23
    const-string v0, "com.ijinshan.kinghelper.firewall.core.FirewallSmsTipDialog"

    sput-object v0, Lcom/ijinshan/kinghelper/firewall/core/FirewallSmsTipDialog;->a:Ljava/lang/String;

    .line 24
    const-string v0, "com.ijinshan.kinghelper.firewall.core.FirewallSmsTipDialog_mms"

    sput-object v0, Lcom/ijinshan/kinghelper/firewall/core/FirewallSmsTipDialog;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 49
    return-void
.end method

.method public static a(Landroid/content/Context;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-static {p0}, Lcom/ijinshan/kinghelper/firewall/dd;->a(Landroid/content/Context;)V

    .line 40
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->m()Z

    move-result v0

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 42
    sget-object v1, Lcom/ijinshan/kinghelper/firewall/core/FirewallSmsTipDialog;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    const-string v1, "sms"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 44
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 45
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->l()V

    .line 47
    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ijinshan/kinghelper/firewall/core/FirewallSmsTipDialog;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    const-string v0, "sms"

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 32
    new-instance v1, Lcom/ijinshan/kinghelper/firewall/core/l;

    invoke-direct {v1, p0, p1, v0}, Lcom/ijinshan/kinghelper/firewall/core/l;-><init>(Lcom/ijinshan/kinghelper/firewall/core/FirewallSmsTipDialog;Landroid/content/Context;Z)V

    .line 33
    sput-object v1, Lcom/ijinshan/kinghelper/firewall/core/FirewallSmsTipDialog;->c:Lcom/ijinshan/kinghelper/firewall/core/l;

    invoke-virtual {v1}, Lcom/ijinshan/kinghelper/firewall/core/l;->d()V

    .line 35
    :cond_0
    return-void
.end method
