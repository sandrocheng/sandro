.class public final Lmqq/sdet/server/a/a;
.super Ljava/lang/Object;
.source "ProGuard"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 6
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)Lmqq/sdet/server/a/b;
    .locals 1
    .parameter

    .prologue
    .line 8
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 9
    new-instance v0, Lmqq/sdet/server/a/b;

    invoke-direct {v0}, Lmqq/sdet/server/a/b;-><init>()V

    .line 11
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
