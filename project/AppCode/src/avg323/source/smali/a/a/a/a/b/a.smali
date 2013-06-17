.class public La/a/a/a/b/a;
.super Ljava/lang/Object;


# direct methods
.method private static a()Ljava/security/MessageDigest;
    .locals 1

    const-string v0, "MD5"

    invoke-static {v0}, La/a/a/a/b/a;->a(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/lang/String;)Ljava/security/MessageDigest;
    .locals 2

    :try_start_0
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static a(Ljava/io/InputStream;)[B
    .locals 1

    invoke-static {}, La/a/a/a/b/a;->c()Ljava/security/MessageDigest;

    move-result-object v0

    invoke-static {v0, p0}, La/a/a/a/b/a;->a(Ljava/security/MessageDigest;Ljava/io/InputStream;)[B

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/security/MessageDigest;Ljava/io/InputStream;)[B
    .locals 5

    const/16 v4, 0x400

    const/4 v3, 0x0

    new-array v1, v4, [B

    invoke-virtual {p1, v1, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    :goto_0
    const/4 v2, -0x1

    if-gt v0, v2, :cond_0

    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0, v1, v3, v0}, Ljava/security/MessageDigest;->update([BII)V

    invoke-virtual {p1, v1, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    goto :goto_0
.end method

.method public static a([B)[B
    .locals 1

    invoke-static {}, La/a/a/a/b/a;->a()Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, La/a/a/a/b/a;->a(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-static {v0}, La/a/a/a/a/b;->b([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b([B)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, La/a/a/a/b/a;->a([B)[B

    move-result-object v0

    invoke-static {v0}, La/a/a/a/a/b;->b([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b()Ljava/security/MessageDigest;
    .locals 1

    const-string v0, "SHA-256"

    invoke-static {v0}, La/a/a/a/b/a;->a(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;)[B
    .locals 1

    invoke-static {p0}, La/a/a/a/b/a;->d(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, La/a/a/a/b/a;->a([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, La/a/a/a/b/a;->b(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, La/a/a/a/a/b;->b([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static c()Ljava/security/MessageDigest;
    .locals 1

    const-string v0, "SHA"

    invoke-static {v0}, La/a/a/a/b/a;->a(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    return-object v0
.end method

.method public static c([B)[B
    .locals 1

    invoke-static {}, La/a/a/a/b/a;->c()Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    return-object v0
.end method

.method private static d(Ljava/lang/String;)[B
    .locals 1

    invoke-static {p0}, La/a/a/a/a/c;->a(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static d([B)[B
    .locals 1

    invoke-static {}, La/a/a/a/b/a;->b()Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static e([B)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, La/a/a/a/b/a;->d([B)[B

    move-result-object v0

    invoke-static {v0}, La/a/a/a/a/b;->b([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static f([B)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, La/a/a/a/b/a;->c([B)[B

    move-result-object v0

    invoke-static {v0}, La/a/a/a/a/b;->b([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
