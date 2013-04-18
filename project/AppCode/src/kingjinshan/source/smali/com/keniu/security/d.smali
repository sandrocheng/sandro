.class public final Lcom/keniu/security/d;
.super Ljava/lang/Object;
.source "DataBaseCrashFixer.java"


# static fields
.field static a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 13
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "-shm"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "-wal"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "-journal"

    aput-object v2, v0, v1

    sput-object v0, Lcom/keniu/security/d;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/content/Context;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 16
    invoke-static {}, Lcom/keniu/security/f/f;->c()Ljava/lang/String;

    move-result-object v0

    move v1, v4

    .line 18
    :goto_0
    sget-object v2, Lcom/keniu/security/d;->a:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/keniu/security/d;->a:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 20
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 22
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 18
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 26
    :cond_1
    const-string v0, "mosecurity_traffic.db"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    move v1, v4

    .line 27
    :goto_1
    sget-object v2, Lcom/keniu/security/d;->a:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 28
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/keniu/security/d;->a:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 29
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 31
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 27
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 34
    :cond_3
    return-void
.end method
