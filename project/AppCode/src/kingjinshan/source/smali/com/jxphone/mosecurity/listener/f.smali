.class public final Lcom/jxphone/mosecurity/listener/f;
.super Landroid/database/ContentObserver;
.source "SmsObserver.java"


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 19
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 20
    iput-object p1, p0, Lcom/jxphone/mosecurity/listener/f;->a:Landroid/content/Context;

    .line 21
    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 25
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 26
    if-eqz p1, :cond_1

    .line 55
    :cond_0
    :goto_0
    return-void

    .line 28
    :cond_1
    iget-object v0, p0, Lcom/jxphone/mosecurity/listener/f;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/keniu/security/b/e;->f(Landroid/content/Context;)Lcom/keniu/security/b/u;

    move-result-object v0

    .line 29
    invoke-interface {v0}, Lcom/keniu/security/b/u;->b()Lcom/jxphone/mosecurity/c/l;

    move-result-object v0

    .line 30
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jxphone/mosecurity/c/l;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/jxphone/mosecurity/c/l;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 33
    invoke-virtual {v0}, Lcom/jxphone/mosecurity/c/l;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 36
    sget-object v1, Lcom/jxphone/mosecurity/d/f;->a:Ljava/lang/String;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/jxphone/mosecurity/d/f;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/jxphone/mosecurity/c/l;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcom/jxphone/mosecurity/d/f;->a:Ljava/lang/String;

    goto :goto_0

    .line 41
    :cond_2
    invoke-virtual {v0}, Lcom/jxphone/mosecurity/c/l;->f()I

    move-result v1

    if-eq v1, v4, :cond_3

    .line 42
    iget-object v1, p0, Lcom/jxphone/mosecurity/listener/f;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/jxphone/mosecurity/logic/h;->a(Landroid/content/Context;)Lcom/jxphone/mosecurity/logic/a/j;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/jxphone/mosecurity/logic/a/j;->a(Lcom/jxphone/mosecurity/c/l;)Z

    goto :goto_0

    .line 47
    :cond_3
    invoke-virtual {v0}, Lcom/jxphone/mosecurity/c/l;->f()I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 49
    invoke-virtual {v0}, Lcom/jxphone/mosecurity/c/l;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/jxphone/mosecurity/c/l;->c()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/jxphone/mosecurity/d/f;->b:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    sget-object v3, Lcom/jxphone/mosecurity/d/f;->c:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    move v1, v5

    :goto_1
    if-nez v1, :cond_0

    .line 52
    invoke-static {}, Lcom/keniu/security/monitor/a;->a()Lcom/keniu/security/monitor/a;

    move-result-object v1

    .line 53
    sget v2, Lcom/keniu/security/monitor/a;->s:I

    iget-object v3, p0, Lcom/jxphone/mosecurity/listener/f;->a:Landroid/content/Context;

    invoke-virtual {v1, v2, v0, v3}, Lcom/keniu/security/monitor/a;->a(ILjava/lang/Object;Ljava/lang/Object;)I

    goto :goto_0

    .line 49
    :cond_5
    sget-object v3, Lcom/jxphone/mosecurity/d/f;->b:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Lcom/jxphone/mosecurity/d/f;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    move v1, v4

    goto :goto_1

    :cond_6
    move v1, v5

    goto :goto_1
.end method
