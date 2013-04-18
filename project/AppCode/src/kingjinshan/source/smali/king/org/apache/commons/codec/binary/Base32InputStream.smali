.class public Lking/org/apache/commons/codec/binary/Base32InputStream;
.super Lking/org/apache/commons/codec/binary/BaseNCodecInputStream;
.source "Base32InputStream.java"


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .parameter

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lking/org/apache/commons/codec/binary/Base32InputStream;-><init>(Ljava/io/InputStream;Z)V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 61
    new-instance v0, Lking/org/apache/commons/codec/binary/Base32;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lking/org/apache/commons/codec/binary/Base32;-><init>(Z)V

    invoke-direct {p0, p1, v0, p2}, Lking/org/apache/commons/codec/binary/BaseNCodecInputStream;-><init>(Ljava/io/InputStream;Lking/org/apache/commons/codec/binary/BaseNCodec;Z)V

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;ZI[B)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 81
    new-instance v0, Lking/org/apache/commons/codec/binary/Base32;

    invoke-direct {v0, p3, p4}, Lking/org/apache/commons/codec/binary/Base32;-><init>(I[B)V

    invoke-direct {p0, p1, v0, p2}, Lking/org/apache/commons/codec/binary/BaseNCodecInputStream;-><init>(Ljava/io/InputStream;Lking/org/apache/commons/codec/binary/BaseNCodec;Z)V

    .line 82
    return-void
.end method
