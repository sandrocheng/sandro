.class final Lcom/keniu/security/traffic/dk;
.super Ljava/lang/Object;
.source "TrafficUpdater2.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/ijinshan/kinghelper/firewall/core/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/ijinshan/kinghelper/firewall/core/b;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 679
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 680
    iput-object p1, p0, Lcom/keniu/security/traffic/dk;->a:Landroid/content/Context;

    .line 681
    iput-object p2, p0, Lcom/keniu/security/traffic/dk;->b:Lcom/ijinshan/kinghelper/firewall/core/b;

    .line 682
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 686
    iget-object v0, p0, Lcom/keniu/security/traffic/dk;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/keniu/security/traffic/dk;->b:Lcom/ijinshan/kinghelper/firewall/core/b;

    invoke-static {v0, v1}, Lcom/keniu/security/traffic/dd;->b(Landroid/content/Context;Lcom/ijinshan/kinghelper/firewall/core/b;)V

    .line 687
    return-void
.end method
