.class public final Lcom/keniu/security/sync/d/b/a;
.super Ljava/lang/Exception;
.source "NoSpaceException.java"


# static fields
.field private static final a:J = -0x244146d90e6408dL


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    const-string v0, "no space in target"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static a()I
    .locals 1

    .prologue
    .line 19
    const/4 v0, -0x4

    return v0
.end method
