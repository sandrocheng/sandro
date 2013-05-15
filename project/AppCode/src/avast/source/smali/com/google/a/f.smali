.class public Lcom/google/a/f;
.super Ljava/io/IOException;
.source "CodedOutputStream.java"


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 854
    const-string v0, "CodedOutputStream was writing to a flat byte array and ran out of space."

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 856
    return-void
.end method
