.class final Lcom/jxphone/mosecurity/logic/v;
.super Ljava/lang/Object;
.source "SystemContactLogicImpl.java"

# interfaces
.implements Lcom/jxphone/mosecurity/logic/a/l;


# instance fields
.field private final a:Lcom/keniu/security/b/r;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-static {p1}, Lcom/keniu/security/b/e;->e(Landroid/content/Context;)Lcom/keniu/security/b/r;

    move-result-object v0

    iput-object v0, p0, Lcom/jxphone/mosecurity/logic/v;->a:Lcom/keniu/security/b/r;

    .line 23
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Z)Lcom/jxphone/mosecurity/c/b;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/v;->a:Lcom/keniu/security/b/r;

    invoke-static {p1}, Lcom/ijinshan/kinghelper/a/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/keniu/security/b/r;->a(Ljava/lang/String;Z)Lcom/jxphone/mosecurity/c/b;

    move-result-object v0

    return-object v0
.end method

.method public final a()Ljava/util/List;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/v;->a:Lcom/keniu/security/b/r;

    invoke-interface {v0}, Lcom/keniu/security/b/r;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/v;->a:Lcom/keniu/security/b/r;

    invoke-interface {v0, p1, p2}, Lcom/keniu/security/b/r;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
