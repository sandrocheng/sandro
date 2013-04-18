.class public final Lcom/keniu/security/traffic/db;
.super Ljava/lang/Object;
.source "TrafficTimer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:I

.field private b:J

.field private c:Landroid/os/Handler;

.field private d:Lcom/keniu/security/traffic/dc;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 45
    iget-object v0, p0, Lcom/keniu/security/traffic/db;->c:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/keniu/security/traffic/db;->c:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 48
    iput-object v1, p0, Lcom/keniu/security/traffic/db;->c:Landroid/os/Handler;

    .line 50
    :cond_0
    iput-object v1, p0, Lcom/keniu/security/traffic/db;->d:Lcom/keniu/security/traffic/dc;

    .line 51
    return-void
.end method

.method public final a(IJLcom/keniu/security/traffic/dc;)Z
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/keniu/security/traffic/db;->c:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/keniu/security/traffic/db;->c:Landroid/os/Handler;

    .line 34
    :goto_0
    iput-wide p2, p0, Lcom/keniu/security/traffic/db;->b:J

    .line 35
    iput-object p4, p0, Lcom/keniu/security/traffic/db;->d:Lcom/keniu/security/traffic/dc;

    .line 36
    iput p1, p0, Lcom/keniu/security/traffic/db;->a:I

    .line 38
    iget-object v0, p0, Lcom/keniu/security/traffic/db;->c:Landroid/os/Handler;

    iget-wide v1, p0, Lcom/keniu/security/traffic/db;->b:J

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 39
    const/4 v0, 0x1

    return v0

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/traffic/db;->c:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final run()V
    .locals 3

    .prologue
    .line 55
    iget-object v0, p0, Lcom/keniu/security/traffic/db;->d:Lcom/keniu/security/traffic/dc;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/keniu/security/traffic/db;->d:Lcom/keniu/security/traffic/dc;

    iget v1, p0, Lcom/keniu/security/traffic/db;->a:I

    invoke-interface {v0, v1}, Lcom/keniu/security/traffic/dc;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/keniu/security/traffic/db;->c:Landroid/os/Handler;

    iget-wide v1, p0, Lcom/keniu/security/traffic/db;->b:J

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 62
    :cond_0
    return-void
.end method
