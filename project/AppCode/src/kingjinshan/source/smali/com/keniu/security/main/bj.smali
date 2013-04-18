.class public final Lcom/keniu/security/main/bj;
.super Ljava/lang/Object;
.source "MainActivity.java"


# instance fields
.field public a:I

.field public b:Lcom/keniu/security/main/a/m;

.field final synthetic c:Lcom/keniu/security/main/bi;


# direct methods
.method public constructor <init>(Lcom/keniu/security/main/bi;)V
    .locals 1
    .parameter

    .prologue
    .line 2378
    iput-object p1, p0, Lcom/keniu/security/main/bj;->c:Lcom/keniu/security/main/bi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2379
    const/4 v0, 0x0

    iput v0, p0, Lcom/keniu/security/main/bj;->a:I

    .line 2380
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/keniu/security/main/bj;->b:Lcom/keniu/security/main/a/m;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2383
    iget v0, p0, Lcom/keniu/security/main/bj;->a:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/keniu/security/main/bj;->a:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/keniu/security/main/bj;->a:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/keniu/security/main/bj;->a:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2390
    iget v0, p0, Lcom/keniu/security/main/bj;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2391
    const-string v0, "\u4e00\u952e\u4f18\u5316\u9879"

    .line 2399
    :goto_0
    return-object v0

    .line 2392
    :cond_0
    iget v0, p0, Lcom/keniu/security/main/bj;->a:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 2393
    const-string v0, "\u624b\u52a8\u4f18\u5316\u9879"

    goto :goto_0

    .line 2394
    :cond_1
    iget v0, p0, Lcom/keniu/security/main/bj;->a:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 2395
    const-string v0, "\u68c0\u6d4b\u63d0\u793a\u9879"

    goto :goto_0

    .line 2396
    :cond_2
    iget v0, p0, Lcom/keniu/security/main/bj;->a:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_3

    .line 2397
    const-string v0, "\u5b89\u5168\u9879"

    goto :goto_0

    .line 2399
    :cond_3
    const-string v0, ""

    goto :goto_0
.end method
