.class public final Lcom/jxphone/mosecurity/d/s;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SQLiteUtils.java"


# static fields
.field private static final a:Ljava/util/Set;

.field private static b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/jxphone/mosecurity/d/s;->a:Ljava/util/Set;

    .line 19
    const/4 v0, 0x1

    sput v0, Lcom/jxphone/mosecurity/d/s;->b:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 22
    const/4 v0, 0x0

    sget v1, Lcom/jxphone/mosecurity/d/s;->b:I

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 23
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 26
    new-instance v0, Lcom/jxphone/mosecurity/d/s;

    invoke-direct {v0, p0, p1}, Lcom/jxphone/mosecurity/d/s;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/jxphone/mosecurity/d/s;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public static a()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x4

    sput v0, Lcom/jxphone/mosecurity/d/s;->b:I

    .line 40
    return-void
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 31
    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 32
    :cond_1
    return-void
.end method

.method public static a(Lcom/jxphone/mosecurity/d/t;)V
    .locals 1
    .parameter

    .prologue
    .line 55
    sget-object v0, Lcom/jxphone/mosecurity/d/s;->a:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 56
    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 59
    sget-object v0, Lcom/jxphone/mosecurity/d/s;->a:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 60
    return-void
.end method

.method private static b()I
    .locals 1

    .prologue
    .line 35
    sget v0, Lcom/jxphone/mosecurity/d/s;->b:I

    return v0
.end method


# virtual methods
.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter

    .prologue
    .line 44
    sget-object v0, Lcom/jxphone/mosecurity/d/s;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/jxphone/mosecurity/d/t;

    .line 45
    invoke-virtual {p0, p1}, Lcom/jxphone/mosecurity/d/t;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 46
    :cond_0
    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 50
    sget-object v0, Lcom/jxphone/mosecurity/d/s;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/jxphone/mosecurity/d/t;

    .line 51
    invoke-virtual {p0, p1, p2}, Lcom/jxphone/mosecurity/d/t;->a(Landroid/database/sqlite/SQLiteDatabase;I)V

    goto :goto_0

    .line 52
    :cond_0
    return-void
.end method
