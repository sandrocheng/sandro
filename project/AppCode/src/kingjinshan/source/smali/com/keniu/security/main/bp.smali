.class final Lcom/keniu/security/main/bp;
.super Ljava/lang/Object;
.source "MainManager.java"


# instance fields
.field a:I

.field b:Ljava/util/List;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter

    .prologue
    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    iput p1, p0, Lcom/keniu/security/main/bp;->a:I

    .line 205
    invoke-static {}, Lcom/keniu/security/main/bn;->f()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/main/bp;->b:Ljava/util/List;

    .line 206
    return-void
.end method
