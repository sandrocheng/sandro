.class public Lcom/google/a/x;
.super Ljava/io/IOException;
.source "InvalidProtocolBufferException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method static a()Lcom/google/a/x;
    .locals 2

    .prologue
    .line 49
    new-instance v0, Lcom/google/a/x;

    const-string v1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either than the input has been truncated or that an embedded message misreported its own length."

    invoke-direct {v0, v1}, Lcom/google/a/x;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static b()Lcom/google/a/x;
    .locals 2

    .prologue
    .line 57
    new-instance v0, Lcom/google/a/x;

    const-string v1, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    invoke-direct {v0, v1}, Lcom/google/a/x;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static c()Lcom/google/a/x;
    .locals 2

    .prologue
    .line 63
    new-instance v0, Lcom/google/a/x;

    const-string v1, "CodedInputStream encountered a malformed varint."

    invoke-direct {v0, v1}, Lcom/google/a/x;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static d()Lcom/google/a/x;
    .locals 2

    .prologue
    .line 68
    new-instance v0, Lcom/google/a/x;

    const-string v1, "Protocol message contained an invalid tag (zero)."

    invoke-direct {v0, v1}, Lcom/google/a/x;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static e()Lcom/google/a/x;
    .locals 2

    .prologue
    .line 73
    new-instance v0, Lcom/google/a/x;

    const-string v1, "Protocol message end-group tag did not match expected tag."

    invoke-direct {v0, v1}, Lcom/google/a/x;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static f()Lcom/google/a/x;
    .locals 2

    .prologue
    .line 78
    new-instance v0, Lcom/google/a/x;

    const-string v1, "Protocol message tag had invalid wire type."

    invoke-direct {v0, v1}, Lcom/google/a/x;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static g()Lcom/google/a/x;
    .locals 2

    .prologue
    .line 83
    new-instance v0, Lcom/google/a/x;

    const-string v1, "Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit."

    invoke-direct {v0, v1}, Lcom/google/a/x;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static h()Lcom/google/a/x;
    .locals 2

    .prologue
    .line 89
    new-instance v0, Lcom/google/a/x;

    const-string v1, "Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit."

    invoke-direct {v0, v1}, Lcom/google/a/x;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
