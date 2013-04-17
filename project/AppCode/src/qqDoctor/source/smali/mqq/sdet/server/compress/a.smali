.class public final Lmqq/sdet/server/compress/a;
.super Ljava/lang/Object;
.source "CompressFactory.java"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)Lmqq/sdet/server/compress/CompressInterface;
    .locals 2
    .parameter

    .prologue
    .line 13
    const/4 v0, 0x0

    .line 14
    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    .line 16
    new-instance v0, Lmqq/sdet/server/compress/c;

    invoke-direct {v0}, Lmqq/sdet/server/compress/c;-><init>()V

    .line 22
    :cond_0
    :goto_0
    return-object v0

    .line 17
    :cond_1
    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    .line 19
    new-instance v0, Lmqq/sdet/server/compress/b;

    invoke-direct {v0}, Lmqq/sdet/server/compress/b;-><init>()V

    goto :goto_0
.end method
