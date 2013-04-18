.class public final Lcom/c/a/a/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(B)V
    .locals 2
    .parameter

    .prologue
    .line 1202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1204
    const/4 v0, 0x0

    iput v0, p0, Lcom/c/a/a/j;->a:I

    .line 1206
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/c/a/a/j;->b:J

    return-void
.end method

.method public static a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x0

    .line 15
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 16
    if-nez v0, :cond_0

    move-object v0, v8

    .line 42
    :goto_0
    return-object v0

    .line 19
    :cond_0
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 20
    const-string v0, "SYSTEM"

    goto :goto_0

    .line 22
    :cond_1
    const/16 v0, 0x40

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 23
    if-eqz v0, :cond_2

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v1, :cond_2

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v1, v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    if-nez v1, :cond_3

    :cond_2
    move-object v0, v8

    .line 26
    goto :goto_0

    .line 28
    :cond_3
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    .line 29
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 30
    if-nez v1, :cond_4

    move-object v0, v8

    .line 31
    goto :goto_0

    .line 33
    :cond_4
    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 34
    if-nez v0, :cond_5

    move-object v0, v8

    .line 35
    goto :goto_0

    .line 37
    :cond_5
    new-instance v1, Ljava/lang/StringBuffer;

    array-length v2, v0

    shl-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    array-length v2, v0

    :goto_1
    if-ge v3, v2, :cond_6

    aget-byte v4, v0, v3

    const-string v5, "%02x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    .line 39
    :catch_0
    move-exception v0

    move-object v0, v8

    goto :goto_0

    .line 42
    :catch_1
    move-exception v0

    move-object v0, v8

    goto :goto_0
.end method
