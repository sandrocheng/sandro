.class public abstract Lcom/b/a/eh;
.super Lcom/b/a/e;
.source "GeneratedMessageLite.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/b/a/e;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/b/a/eh;->h()Lcom/b/a/ef;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/b/a/m;Lcom/b/a/df;I)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 92
    invoke-virtual {p1, p3}, Lcom/b/a/m;->b(I)Z

    move-result v0

    return v0
.end method

.method public b()Lcom/b/a/eh;
    .locals 0

    .prologue
    .line 66
    return-object p0
.end method

.method public c()Lcom/b/a/eh;
    .locals 2

    .prologue
    .line 74
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is supposed to be overridden by subclasses."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/b/a/eh;->c()Lcom/b/a/eh;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d()Lcom/b/a/e;
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/b/a/eh;->c()Lcom/b/a/eh;

    move-result-object v0

    return-object v0
.end method

.method public synthetic e()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/b/a/eh;->c()Lcom/b/a/eh;

    move-result-object v0

    return-object v0
.end method

.method public synthetic f()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/b/a/eh;->b()Lcom/b/a/eh;

    move-result-object v0

    return-object v0
.end method

.method public abstract g()Lcom/b/a/eh;
.end method

.method public abstract h()Lcom/b/a/ef;
.end method
