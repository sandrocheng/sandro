.class public final Lk;
.super Ljava/lang/Object;

# interfaces
.implements Ldm;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/InputStream;)Let;
    .locals 5

    const/4 v4, 0x4

    const/4 v0, 0x0

    new-instance v1, Let;

    invoke-direct {v1}, Let;-><init>()V

    new-array v2, v4, [B

    :try_start_0
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    array-length v3, v2

    if-eq v3, v4, :cond_0

    :goto_0
    iput v0, v1, Let;->a:I

    const/16 v0, 0x10

    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    :goto_1
    return-object v1

    :cond_0
    const/4 v0, 0x0

    aget-byte v0, v2, v0

    and-int/lit16 v0, v0, 0xff

    const/4 v3, 0x1

    aget-byte v3, v2, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v0, v3

    const/4 v3, 0x2

    aget-byte v3, v2, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v0, v3

    const/4 v3, 0x3

    aget-byte v2, v2, v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public final a(Landroid/app/Dialog;)V
    .locals 1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    sput-boolean v0, Le;->a:Z

    return-void
.end method
