.class public Lhx;
.super Lhz;


# static fields
.field public static final a:Ljava/lang/String;

.field private static c:Lhx;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-object v0, Lhx;->c:Lhx;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Llm;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "filesafe_db.sqlite"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lhx;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lhz;-><init>(Landroid/content/Context;)V

    new-instance v0, Lhy;

    const-string v1, "filesafe_db.sqlite"

    invoke-direct {v0, p0, p1, v1}, Lhy;-><init>(Lhx;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lhx;->b:Ljn;

    return-void
.end method

.method public static a()Lhx;
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lhx;->a(Landroid/content/Context;)Lhx;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;)Lhx;
    .locals 2

    sget-object v0, Lhx;->c:Lhx;

    if-nez v0, :cond_1

    const-class v1, Lhx;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lhx;->c:Lhx;

    if-nez v0, :cond_0

    new-instance v0, Lhx;

    invoke-direct {v0, p0}, Lhx;-><init>(Landroid/content/Context;)V

    sput-object v0, Lhx;->c:Lhx;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lhx;->c:Lhx;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "CREATE TABLE IF NOT EXISTS file_safe_file_info (id INTEGER PRIMARY KEY,mFileSrcPath TEXT,mFileDstPath TEXT,mFileType TEXT,mFileState BOOLEAN,mFileSuffix TEXT,mReserved1 TEXT,mReserved2 TEXT,mReserved3 TEXT )"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS privacy_secret_info (Module TEXT PRIMARY KEY,PP TEXT,PQ TEXT )"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    if-le p2, p1, :cond_0

    const-string v0, "CREATE TABLE IF NOT EXISTS file_safe_file_info (id INTEGER PRIMARY KEY,mFileSrcPath TEXT,mFileDstPath TEXT,mFileType TEXT,mFileState BOOLEAN,mFileSuffix TEXT,mReserved1 TEXT,mReserved2 TEXT,mReserved3 TEXT )"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS privacy_secret_info (Module TEXT PRIMARY KEY,PP TEXT,PQ TEXT )"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
