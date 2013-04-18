.class public Lking/org/apache/commons/codec/binary/Base64InputStream;
.super Lking/org/apache/commons/codec/binary/BaseNCodecInputStream;
.source "Base64InputStream.java"


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .parameter

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lking/org/apache/commons/codec/binary/Base64InputStream;-><init>(Ljava/io/InputStream;Z)V

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 66
    new-instance v0, Lking/org/apache/commons/codec/binary/Base64;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lking/org/apache/commons/codec/binary/Base64;-><init>(Z)V

    invoke-direct {p0, p1, v0, p2}, Lking/org/apache/commons/codec/binary/BaseNCodecInputStream;-><init>(Ljava/io/InputStream;Lking/org/apache/commons/codec/binary/BaseNCodec;Z)V

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;ZI[B)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 86
    new-instance v0, Lking/org/apache/commons/codec/binary/Base64;

    invoke-direct {v0, p3, p4}, Lking/org/apache/commons/codec/binary/Base64;-><init>(I[B)V

    invoke-direct {p0, p1, v0, p2}, Lking/org/apache/commons/codec/binary/BaseNCodecInputStream;-><init>(Ljava/io/InputStream;Lking/org/apache/commons/codec/binary/BaseNCodec;Z)V

    .line 87
    return-void
.end method
