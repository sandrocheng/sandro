.class public abstract Lcom/google/a/n;
.super Lcom/google/a/b;
.source "GeneratedMessageLite.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/google/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/google/a/l;)Lcom/google/a/n;
.end method

.method protected a(Lcom/google/a/d;Lcom/google/a/g;I)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 93
    invoke-virtual {p1, p3}, Lcom/google/a/d;->b(I)Z

    move-result v0

    return v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/google/a/n;->h()Lcom/google/a/n;

    move-result-object v0

    return-object v0
.end method

.method public abstract g()Lcom/google/a/l;
.end method

.method public h()Lcom/google/a/n;
    .locals 2

    .prologue
    .line 75
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is supposed to be overridden by subclasses."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic i()Lcom/google/a/b;
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/google/a/n;->h()Lcom/google/a/n;

    move-result-object v0

    return-object v0
.end method
