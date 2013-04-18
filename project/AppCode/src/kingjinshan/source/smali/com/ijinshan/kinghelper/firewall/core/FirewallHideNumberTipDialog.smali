.class public Lcom/ijinshan/kinghelper/firewall/core/FirewallHideNumberTipDialog;
.super Landroid/content/BroadcastReceiver;
.source "FirewallHideNumberTipDialog.java"


# static fields
.field public static a:Ljava/lang/String;


# instance fields
.field private b:Lcom/ijinshan/kinghelper/firewall/core/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-string v0, "com.ijinshan.kinghelper.firewall.core.FirewallHideNumberTipDialog"

    sput-object v0, Lcom/ijinshan/kinghelper/firewall/core/FirewallHideNumberTipDialog;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/core/FirewallHideNumberTipDialog;->b:Lcom/ijinshan/kinghelper/firewall/core/c;

    .line 47
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 37
    invoke-static {p0}, Lcom/ijinshan/kinghelper/firewall/dd;->a(Landroid/content/Context;)V

    .line 39
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->u()Z

    move-result v0

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 41
    sget-object v1, Lcom/ijinshan/kinghelper/firewall/core/FirewallHideNumberTipDialog;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 43
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->t()V

    .line 45
    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ijinshan/kinghelper/firewall/core/FirewallHideNumberTipDialog;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    new-instance v0, Lcom/ijinshan/kinghelper/firewall/core/c;

    invoke-direct {v0, p0, p1}, Lcom/ijinshan/kinghelper/firewall/core/c;-><init>(Lcom/ijinshan/kinghelper/firewall/core/FirewallHideNumberTipDialog;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/core/FirewallHideNumberTipDialog;->b:Lcom/ijinshan/kinghelper/firewall/core/c;

    .line 32
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/core/FirewallHideNumberTipDialog;->b:Lcom/ijinshan/kinghelper/firewall/core/c;

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/core/c;->d()V

    .line 34
    :cond_0
    return-void
.end method
