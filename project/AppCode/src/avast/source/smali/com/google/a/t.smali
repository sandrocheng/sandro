.class public final Lcom/google/a/t;
.super Ljava/lang/Object;
.source "GeneratedMessageLite.java"


# instance fields
.field private final a:Lcom/google/a/aa;

.field private final b:Lcom/google/a/s;


# direct methods
.method static synthetic a(Lcom/google/a/t;)Lcom/google/a/s;
    .locals 1
    .parameter

    .prologue
    .line 623
    iget-object v0, p0, Lcom/google/a/t;->b:Lcom/google/a/s;

    return-object v0
.end method

.method static synthetic b(Lcom/google/a/t;)Lcom/google/a/aa;
    .locals 1
    .parameter

    .prologue
    .line 623
    iget-object v0, p0, Lcom/google/a/t;->a:Lcom/google/a/aa;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 662
    iget-object v0, p0, Lcom/google/a/t;->b:Lcom/google/a/s;

    invoke-virtual {v0}, Lcom/google/a/s;->a()I

    move-result v0

    return v0
.end method
