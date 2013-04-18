.class public final Lcom/jxphone/mosecurity/logic/w;
.super Ljava/lang/Object;
.source "SystemSmsLogicImpl.java"

# interfaces
.implements Lcom/jxphone/mosecurity/logic/a/m;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/jxphone/mosecurity/logic/w;->a:Landroid/content/Context;

    .line 18
    return-void
.end method


# virtual methods
.method public final a(Lcom/jxphone/mosecurity/c/l;)Z
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/w;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/keniu/security/b/e;->f(Landroid/content/Context;)Lcom/keniu/security/b/u;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/keniu/security/b/u;->a(Lcom/jxphone/mosecurity/c/l;)Z

    move-result v0

    return v0
.end method

.method public final a()[Lcom/jxphone/mosecurity/c/l;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/w;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/keniu/security/b/e;->f(Landroid/content/Context;)Lcom/keniu/security/b/u;

    move-result-object v0

    invoke-interface {v0}, Lcom/keniu/security/b/u;->a()[Lcom/jxphone/mosecurity/c/l;

    move-result-object v0

    return-object v0
.end method
