.class final Lcom/keniu/security/traffic/dj;
.super Ljava/lang/Object;
.source "TrafficUpdater2.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 754
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 755
    iput-object p1, p0, Lcom/keniu/security/traffic/dj;->a:Landroid/content/Context;

    .line 756
    iput-boolean p2, p0, Lcom/keniu/security/traffic/dj;->b:Z

    .line 757
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 761
    iget-boolean v0, p0, Lcom/keniu/security/traffic/dj;->b:Z

    invoke-static {v0}, Lcom/keniu/security/traffic/z;->a(Z)V

    .line 762
    iget-object v0, p0, Lcom/keniu/security/traffic/dj;->a:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/keniu/security/traffic/dd;->b(Landroid/content/Context;Lcom/ijinshan/kinghelper/firewall/core/b;)V

    .line 763
    iget-boolean v0, p0, Lcom/keniu/security/traffic/dj;->b:Z

    if-nez v0, :cond_0

    .line 764
    iget-object v0, p0, Lcom/keniu/security/traffic/dj;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/keniu/security/traffic/z;->c(Landroid/content/Context;)V

    .line 766
    :cond_0
    return-void
.end method
