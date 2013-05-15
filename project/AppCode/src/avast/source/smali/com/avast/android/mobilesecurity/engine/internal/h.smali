.class public Lcom/avast/android/mobilesecurity/engine/internal/h;
.super Ljava/lang/Object;
.source "MFFile.java"


# instance fields
.field private a:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/h;->a:Ljava/util/HashMap;

    .line 23
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;[B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/h;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    return-void
.end method

.method public a(Ljava/lang/String;)[B
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/h;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public b(Ljava/lang/String;[B)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 62
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/h;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 63
    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    array-length v1, v0

    array-length v3, p2

    if-eq v1, v3, :cond_1

    .line 69
    :cond_0
    :goto_0
    return v2

    :cond_1
    move v1, v2

    .line 65
    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_2

    .line 66
    aget-byte v3, v0, v1

    aget-byte v4, p2, v1

    if-ne v3, v4, :cond_0

    .line 65
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 69
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method
