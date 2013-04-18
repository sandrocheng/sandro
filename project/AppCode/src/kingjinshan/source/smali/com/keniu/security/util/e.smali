.class public final Lcom/keniu/security/util/e;
.super Ljava/lang/Object;
.source "ApkTool.java"


# static fields
.field public static a:I

.field public static b:I

.field public static c:I

.field private static d:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v0, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 30
    sput v3, Lcom/keniu/security/util/e;->a:I

    .line 31
    sput v4, Lcom/keniu/security/util/e;->b:I

    .line 32
    sput v0, Lcom/keniu/security/util/e;->c:I

    .line 34
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "AndroidManifest.xml"

    aput-object v2, v0, v1

    const-string v1, "classes.dex"

    aput-object v1, v0, v3

    const-string v1, "META-INF"

    aput-object v1, v0, v4

    sput-object v0, Lcom/keniu/security/util/e;->d:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)I
    .locals 4
    .parameter

    .prologue
    .line 38
    :try_start_0
    new-instance v0, Ljava/util/zip/ZipFile;

    invoke-direct {v0, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    .line 40
    const/4 v1, 0x0

    .line 41
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 42
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/zip/ZipEntry;

    .line 43
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    .line 44
    sget-object v3, Lcom/keniu/security/util/e;->d:[Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/keniu/security/util/g;->a([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 45
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 47
    :cond_1
    sget-object v0, Lcom/keniu/security/util/e;->d:[Ljava/lang/String;

    array-length v0, v0

    if-ne v1, v0, :cond_2

    .line 48
    sget v0, Lcom/keniu/security/util/e;->a:I

    .line 54
    :goto_1
    return v0

    .line 49
    :cond_2
    sget v0, Lcom/keniu/security/util/e;->b:I
    :try_end_0
    .catch Ljava/security/AccessControlException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 51
    :catch_0
    move-exception v0

    sget v0, Lcom/keniu/security/util/e;->c:I

    goto :goto_1

    .line 52
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 54
    sget v0, Lcom/keniu/security/util/e;->b:I

    goto :goto_1
.end method
