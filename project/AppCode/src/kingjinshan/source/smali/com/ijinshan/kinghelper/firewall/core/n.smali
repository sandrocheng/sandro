.class final Lcom/ijinshan/kinghelper/firewall/core/n;
.super Ljava/lang/Object;
.source "FirewallTelephonyListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/ijinshan/kinghelper/firewall/core/m;


# direct methods
.method constructor <init>(Lcom/ijinshan/kinghelper/firewall/core/m;)V
    .locals 0
    .parameter

    .prologue
    .line 305
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/core/n;->a:Lcom/ijinshan/kinghelper/firewall/core/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 308
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/core/n;->a:Lcom/ijinshan/kinghelper/firewall/core/m;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/core/m;->c(Lcom/ijinshan/kinghelper/firewall/core/m;)Lcom/jxphone/mosecurity/logic/a/g;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/jxphone/mosecurity/logic/a/g;->a(I)V

    .line 309
    return-void
.end method
