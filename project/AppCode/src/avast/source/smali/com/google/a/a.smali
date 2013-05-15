.class public abstract Lcom/google/a/a;
.super Ljava/lang/Object;
.source "AbstractMessageLite.java"

# interfaces
.implements Lcom/google/a/aa;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    return-void
.end method


# virtual methods
.method public bo()[B
    .locals 3

    .prologue
    .line 62
    :try_start_0
    invoke-virtual {p0}, Lcom/google/a/a;->w()I

    move-result v0

    new-array v0, v0, [B

    .line 63
    invoke-static {v0}, Lcom/google/a/e;->a([B)Lcom/google/a/e;

    move-result-object v1

    .line 64
    invoke-virtual {p0, v1}, Lcom/google/a/a;->a(Lcom/google/a/e;)V

    .line 65
    invoke-virtual {v1}, Lcom/google/a/e;->b()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    return-object v0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Serializing to a byte array threw an IOException (should never happen)."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
