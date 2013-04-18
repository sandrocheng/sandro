.class public final Lcom/b/a/fm;
.super Ljava/lang/RuntimeException;
.source "RpcUtil.java"


# static fields
.field private static final a:J = 0x4be86cb6ba5b1c4aL


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 131
    const-string v0, "This RpcCallback was already called and cannot be called multiple times."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 133
    return-void
.end method
