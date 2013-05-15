.class final Lcom/google/a/s;
.super Ljava/lang/Object;
.source "GeneratedMessageLite.java"

# interfaces
.implements Lcom/google/a/k;


# instance fields
.field private final a:Lcom/google/a/w;

.field private final b:I

.field private final c:Lcom/google/a/ar;

.field private final d:Z

.field private final e:Z


# direct methods
.method static synthetic b(Lcom/google/a/s;)Z
    .locals 1
    .parameter

    .prologue
    .line 560
    iget-boolean v0, p0, Lcom/google/a/s;->d:Z

    return v0
.end method

.method static synthetic c(Lcom/google/a/s;)Lcom/google/a/ar;
    .locals 1
    .parameter

    .prologue
    .line 560
    iget-object v0, p0, Lcom/google/a/s;->c:Lcom/google/a/ar;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 583
    iget v0, p0, Lcom/google/a/s;->b:I

    return v0
.end method

.method public a(Lcom/google/a/s;)I
    .locals 2
    .parameter

    .prologue
    .line 613
    iget v0, p0, Lcom/google/a/s;->b:I

    iget v1, p1, Lcom/google/a/s;->b:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public a(Lcom/google/a/ab;Lcom/google/a/aa;)Lcom/google/a/ab;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 609
    check-cast p1, Lcom/google/a/n;

    check-cast p2, Lcom/google/a/l;

    invoke-virtual {p1, p2}, Lcom/google/a/n;->a(Lcom/google/a/l;)Lcom/google/a/n;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/google/a/ar;
    .locals 1

    .prologue
    .line 587
    iget-object v0, p0, Lcom/google/a/s;->c:Lcom/google/a/ar;

    return-object v0
.end method

.method public c()Lcom/google/a/aw;
    .locals 1

    .prologue
    .line 591
    iget-object v0, p0, Lcom/google/a/s;->c:Lcom/google/a/ar;

    invoke-virtual {v0}, Lcom/google/a/ar;->a()Lcom/google/a/aw;

    move-result-object v0

    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 560
    check-cast p1, Lcom/google/a/s;

    invoke-virtual {p0, p1}, Lcom/google/a/s;->a(Lcom/google/a/s;)I

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 595
    iget-boolean v0, p0, Lcom/google/a/s;->d:Z

    return v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 599
    iget-boolean v0, p0, Lcom/google/a/s;->e:Z

    return v0
.end method

.method public f()Lcom/google/a/w;
    .locals 1

    .prologue
    .line 603
    iget-object v0, p0, Lcom/google/a/s;->a:Lcom/google/a/w;

    return-object v0
.end method
