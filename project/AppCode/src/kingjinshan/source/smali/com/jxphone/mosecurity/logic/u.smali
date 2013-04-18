.class final Lcom/jxphone/mosecurity/logic/u;
.super Ljava/lang/Object;
.source "SystemCallLogLogicImpl.java"

# interfaces
.implements Lcom/jxphone/mosecurity/logic/a/k;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/jxphone/mosecurity/logic/u;->a:Landroid/content/Context;

    .line 20
    return-void
.end method


# virtual methods
.method public final a(Lcom/jxphone/mosecurity/c/j;)Z
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/u;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/keniu/security/b/e;->c(Landroid/content/Context;)Lcom/keniu/security/b/o;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/keniu/security/b/o;->a(Lcom/jxphone/mosecurity/c/j;)Z

    move-result v0

    return v0
.end method

.method public final a()[Lcom/jxphone/mosecurity/c/j;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/u;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/keniu/security/b/e;->c(Landroid/content/Context;)Lcom/keniu/security/b/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/keniu/security/b/o;->a()[Lcom/jxphone/mosecurity/c/j;

    move-result-object v0

    return-object v0
.end method
