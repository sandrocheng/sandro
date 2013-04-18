.class public final Lcom/b/a/o;
.super Ljava/io/IOException;
.source "CodedOutputStream.java"


# static fields
.field private static final a:J = -0x606a6e83ad3191dbL


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
