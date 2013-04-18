.class public Lking/org/apache/commons/codec/binary/Base64OutputStream;
.super Lking/org/apache/commons/codec/binary/BaseNCodecOutputStream;
.source "Base64OutputStream.java"


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .parameter

    .prologue
    .line 53
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lking/org/apache/commons/codec/binary/Base64OutputStream;-><init>(Ljava/io/OutputStream;Z)V

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 66
    new-instance v0, Lking/org/apache/commons/codec/binary/Base64;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lking/org/apache/commons/codec/binary/Base64;-><init>(Z)V

    invoke-direct {p0, p1, v0, p2}, Lking/org/apache/commons/codec/binary/BaseNCodecOutputStream;-><init>(Ljava/io/OutputStream;Lking/org/apache/commons/codec/binary/BaseNCodec;Z)V

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;ZI[B)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 86
    new-instance v0, Lking/org/apache/commons/codec/binary/Base64;

    invoke-direct {v0, p3, p4}, Lking/org/apache/commons/codec/binary/Base64;-><init>(I[B)V

    invoke-direct {p0, p1, v0, p2}, Lking/org/apache/commons/codec/binary/BaseNCodecOutputStream;-><init>(Ljava/io/OutputStream;Lking/org/apache/commons/codec/binary/BaseNCodec;Z)V

    .line 87
    return-void
.end method
