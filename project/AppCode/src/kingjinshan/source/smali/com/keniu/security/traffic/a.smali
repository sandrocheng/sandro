.class public final Lcom/keniu/security/traffic/a;
.super Ljava/lang/Object;
.source "AdjustByHandReport.java"

# interfaces
.implements Lcom/keniu/security/monitor/b;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/keniu/security/traffic/a;->b:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/keniu/security/traffic/a;->a:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Lcom/keniu/security/traffic/a;->c:Landroid/content/Context;

    .line 23
    return-void
.end method

.method private a(Lcom/ijinshan/kinghelper/firewall/core/w;)V
    .locals 6
    .parameter

    .prologue
    .line 37
    if-nez p1, :cond_1

    .line 48
    :cond_0
    :goto_0
    return-void

    .line 39
    :cond_1
    iget-boolean v0, p1, Lcom/ijinshan/kinghelper/firewall/core/w;->e:Z

    if-nez v0, :cond_0

    .line 41
    iget-object v0, p1, Lcom/ijinshan/kinghelper/firewall/core/w;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/keniu/security/traffic/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/keniu/security/traffic/d;

    iget-object v2, p1, Lcom/ijinshan/kinghelper/firewall/core/w;->a:Landroid/content/Context;

    iget-object v3, p1, Lcom/ijinshan/kinghelper/firewall/core/w;->c:Ljava/lang/String;

    iget-object v4, p1, Lcom/ijinshan/kinghelper/firewall/core/w;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/keniu/security/traffic/a;->a:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/keniu/security/traffic/d;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 46
    invoke-virtual {p0}, Lcom/keniu/security/traffic/a;->a()V

    goto :goto_0
.end method


# virtual methods
.method public final a(ILjava/lang/Object;Ljava/lang/Object;)I
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    sget v0, Lcom/keniu/security/monitor/a;->r:I

    if-ne p1, v0, :cond_0

    .line 29
    check-cast p2, Lcom/ijinshan/kinghelper/firewall/core/w;

    .line 30
    if-eqz p2, :cond_0

    iget-boolean v0, p2, Lcom/ijinshan/kinghelper/firewall/core/w;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p2, Lcom/ijinshan/kinghelper/firewall/core/w;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/keniu/security/traffic/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/keniu/security/traffic/d;

    iget-object v2, p2, Lcom/ijinshan/kinghelper/firewall/core/w;->a:Landroid/content/Context;

    iget-object v3, p2, Lcom/ijinshan/kinghelper/firewall/core/w;->c:Ljava/lang/String;

    iget-object v4, p2, Lcom/ijinshan/kinghelper/firewall/core/w;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/keniu/security/traffic/a;->a:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/keniu/security/traffic/d;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    invoke-virtual {p0}, Lcom/keniu/security/traffic/a;->a()V

    .line 33
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final a()V
    .locals 2

    .prologue
    .line 83
    invoke-static {}, Lcom/keniu/security/monitor/a;->a()Lcom/keniu/security/monitor/a;

    move-result-object v0

    .line 84
    sget v1, Lcom/keniu/security/monitor/a;->r:I

    invoke-virtual {v0, v1, p0}, Lcom/keniu/security/monitor/a;->a(ILcom/keniu/security/monitor/b;)Z

    .line 85
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 88
    invoke-static {}, Lcom/keniu/security/monitor/a;->a()Lcom/keniu/security/monitor/a;

    move-result-object v0

    .line 89
    sget v1, Lcom/keniu/security/monitor/a;->r:I

    const/4 v2, 0x2

    invoke-virtual {v0, v1, p0, v2}, Lcom/keniu/security/monitor/a;->a(ILcom/keniu/security/monitor/b;I)Z

    .line 91
    return-void
.end method

.method public final c()V
    .locals 4

    .prologue
    .line 94
    iget-object v0, p0, Lcom/keniu/security/traffic/a;->c:Landroid/content/Context;

    new-instance v1, Lcom/keniu/security/traffic/c;

    invoke-direct {v1, p0}, Lcom/keniu/security/traffic/c;-><init>(Lcom/keniu/security/traffic/a;)V

    const-wide/32 v2, 0x2bf20

    invoke-static {v0, v1, v2, v3}, Lcom/keniu/security/traffic/dd;->a(Landroid/content/Context;Ljava/lang/Runnable;J)V

    .line 96
    return-void
.end method
