.class public final Lcom/b/a/l;
.super Ljava/io/FilterOutputStream;
.source "ByteString.java"


# instance fields
.field private final a:Ljava/io/ByteArrayOutputStream;


# direct methods
.method synthetic constructor <init>(Ljava/io/ByteArrayOutputStream;)V
    .locals 1
    .parameter

    .prologue
    .line 343
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/b/a/l;-><init>(Ljava/io/ByteArrayOutputStream;B)V

    return-void
.end method

.method private constructor <init>(Ljava/io/ByteArrayOutputStream;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 350
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 351
    iput-object p1, p0, Lcom/b/a/l;->a:Ljava/io/ByteArrayOutputStream;

    .line 352
    return-void
.end method

.method private a()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 358
    iget-object v0, p0, Lcom/b/a/l;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 359
    new-instance v1, Lcom/b/a/i;

    invoke-direct {v1, v0}, Lcom/b/a/i;-><init>([B)V

    return-object v1
.end method
