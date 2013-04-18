.class public abstract Lcom/b/a/ef;
.super Lcom/b/a/d;
.source "GeneratedMessageLite.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final a:J = 0x1L


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/b/a/d;-><init>()V

    .line 56
    return-void
.end method

.method protected constructor <init>(B)V
    .locals 0
    .parameter

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/b/a/d;-><init>()V

    .line 53
    return-void
.end method

.method private static a(Lcom/b/a/ex;Lcom/b/a/ex;Lcom/b/a/er;ILcom/b/a/gq;Z)Lcom/b/a/en;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 552
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    .line 553
    new-instance v7, Lcom/b/a/en;

    new-instance v0, Lcom/b/a/em;

    const/4 v4, 0x1

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/b/a/em;-><init>(Lcom/b/a/er;ILcom/b/a/gq;ZZ)V

    invoke-direct {v7, p0, v6, p1, v0}, Lcom/b/a/en;-><init>(Lcom/b/a/ex;Ljava/lang/Object;Lcom/b/a/ex;Lcom/b/a/em;)V

    return-object v7
.end method

.method private static a(Lcom/b/a/ex;Ljava/lang/Object;Lcom/b/a/ex;Lcom/b/a/er;ILcom/b/a/gq;)Lcom/b/a/en;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 532
    new-instance v6, Lcom/b/a/en;

    new-instance v0, Lcom/b/a/em;

    move-object v1, p3

    move v2, p4

    move-object v3, p5

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/b/a/em;-><init>(Lcom/b/a/er;ILcom/b/a/gq;ZZ)V

    invoke-direct {v6, p0, p1, p2, v0}, Lcom/b/a/en;-><init>(Lcom/b/a/ex;Ljava/lang/Object;Lcom/b/a/ex;Lcom/b/a/em;)V

    return-object v6
.end method

.method private e()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 729
    new-instance v0, Lcom/b/a/eo;

    invoke-direct {v0, p0}, Lcom/b/a/eo;-><init>(Lcom/b/a/ex;)V

    return-object v0
.end method
