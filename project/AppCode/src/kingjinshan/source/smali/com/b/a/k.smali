.class final Lcom/b/a/k;
.super Ljava/lang/Object;
.source "ByteString.java"


# instance fields
.field private final a:Lcom/b/a/n;

.field private final b:[B


# direct methods
.method synthetic constructor <init>(I)V
    .locals 1
    .parameter

    .prologue
    .line 381
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/b/a/k;-><init>(IB)V

    return-void
.end method

.method private constructor <init>(IB)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 386
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/b/a/k;->b:[B

    .line 387
    iget-object v0, p0, Lcom/b/a/k;->b:[B

    invoke-static {v0}, Lcom/b/a/n;->a([B)Lcom/b/a/n;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/k;->a:Lcom/b/a/n;

    .line 388
    return-void
.end method


# virtual methods
.method public final a()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 391
    iget-object v0, p0, Lcom/b/a/k;->a:Lcom/b/a/n;

    invoke-virtual {v0}, Lcom/b/a/n;->k()V

    .line 396
    new-instance v0, Lcom/b/a/i;

    iget-object v1, p0, Lcom/b/a/k;->b:[B

    invoke-direct {v0, v1}, Lcom/b/a/i;-><init>([B)V

    return-object v0
.end method

.method public final b()Lcom/b/a/n;
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/b/a/k;->a:Lcom/b/a/n;

    return-object v0
.end method
