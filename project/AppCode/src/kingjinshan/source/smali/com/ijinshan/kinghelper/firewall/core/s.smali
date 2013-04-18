.class final Lcom/ijinshan/kinghelper/firewall/core/s;
.super Landroid/os/Handler;
.source "GetLocationThread.java"


# instance fields
.field final synthetic a:Lcom/ijinshan/kinghelper/firewall/core/u;

.field final synthetic b:Lcom/ijinshan/kinghelper/firewall/core/r;


# direct methods
.method constructor <init>(Lcom/ijinshan/kinghelper/firewall/core/r;Lcom/ijinshan/kinghelper/firewall/core/u;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/core/s;->b:Lcom/ijinshan/kinghelper/firewall/core/r;

    iput-object p2, p0, Lcom/ijinshan/kinghelper/firewall/core/s;->a:Lcom/ijinshan/kinghelper/firewall/core/u;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter

    .prologue
    .line 45
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    .line 46
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/core/s;->a:Lcom/ijinshan/kinghelper/firewall/core/u;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-interface {v1, v2, v0}, Lcom/ijinshan/kinghelper/firewall/core/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    return-void
.end method
