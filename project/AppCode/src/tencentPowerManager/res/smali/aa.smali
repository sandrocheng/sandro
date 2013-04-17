.class public Laa;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laa$c;,
        Laa$b;,
        Laa$a;
    }
.end annotation


# static fields
.field private static a:Laa$c;

.field private static b:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Laa;->b:Landroid/os/Looper;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-static {}, Lcom/tencent/powermanager/PowerManagerApplication;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "powermanager_asyn.db"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    const-class v1, Laa;

    monitor-enter v1

    :try_start_0
    sget-object v0, Laa;->b:Landroid/os/Looper;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "DBHelperAsyn"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    sput-object v0, Laa;->b:Landroid/os/Looper;

    :cond_0
    sget-object v0, Laa;->a:Laa$c;

    if-nez v0, :cond_1

    new-instance v0, Laa$c;

    sget-object v2, Laa;->b:Landroid/os/Looper;

    invoke-static {}, Lcom/tencent/powermanager/PowerManagerApplication;->a()Landroid/content/Context;

    invoke-direct {v0, p0, v2}, Laa$c;-><init>(Laa;Landroid/os/Looper;)V

    sput-object v0, Laa;->a:Laa$c;

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected static a(Ljava/lang/String;ILaa$a;)V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Laa;->a:Laa$c;

    invoke-virtual {v0, v1}, Laa$c;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput v1, v0, Landroid/os/Message;->arg1:I

    new-instance v1, Laa$b;

    invoke-direct {v1}, Laa$b;-><init>()V

    iput-object p0, v1, Laa$b;->h:Ljava/lang/String;

    iput-object p2, v1, Laa$b;->j:Laa$a;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v1, Laa;->a:Laa$c;

    invoke-virtual {v1, v0}, Laa$c;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected static a(Ljava/lang/String;Landroid/content/ContentValues;Laa$a;)V
    .locals 2

    sget-object v0, Laa;->a:Laa$c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laa$c;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->arg1:I

    new-instance v1, Laa$b;

    invoke-direct {v1}, Laa$b;-><init>()V

    iput-object p0, v1, Laa$b;->a:Ljava/lang/String;

    iput-object p1, v1, Laa$b;->i:Landroid/content/ContentValues;

    iput-object p2, v1, Laa$b;->j:Laa$a;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v1, Laa;->a:Laa$c;

    invoke-virtual {v1, v0}, Laa$c;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected static a(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Laa$a;)V
    .locals 2

    sget-object v0, Laa;->a:Laa$c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laa$c;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->arg1:I

    new-instance v1, Laa$b;

    invoke-direct {v1}, Laa$b;-><init>()V

    iput-object p0, v1, Laa$b;->a:Ljava/lang/String;

    iput-object p1, v1, Laa$b;->i:Landroid/content/ContentValues;

    iput-object p2, v1, Laa$b;->c:Ljava/lang/String;

    iput-object p3, v1, Laa$b;->d:[Ljava/lang/String;

    iput-object p4, v1, Laa$b;->j:Laa$a;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v1, Laa;->a:Laa$c;

    invoke-virtual {v1, v0}, Laa$c;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected static a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Laa$a;)V
    .locals 2

    sget-object v0, Laa;->a:Laa$c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laa$c;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->arg1:I

    new-instance v1, Laa$b;

    invoke-direct {v1}, Laa$b;-><init>()V

    iput-object p0, v1, Laa$b;->a:Ljava/lang/String;

    iput-object p1, v1, Laa$b;->c:Ljava/lang/String;

    iput-object p2, v1, Laa$b;->d:[Ljava/lang/String;

    iput-object p3, v1, Laa$b;->j:Laa$a;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v1, Laa;->a:Laa$c;

    invoke-virtual {v1, v0}, Laa$c;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected static a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Laa$a;)V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Laa;->a:Laa$c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laa$c;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    new-instance v1, Laa$b;

    invoke-direct {v1}, Laa$b;-><init>()V

    iput-object p2, v1, Laa$b;->c:Ljava/lang/String;

    iput-object p3, v1, Laa$b;->d:[Ljava/lang/String;

    iput-object p1, v1, Laa$b;->b:[Ljava/lang/String;

    iput-object p0, v1, Laa$b;->a:Ljava/lang/String;

    iput-object v2, v1, Laa$b;->e:Ljava/lang/String;

    iput-object v2, v1, Laa$b;->f:Ljava/lang/String;

    iput-object v2, v1, Laa$b;->g:Ljava/lang/String;

    iput-object p4, v1, Laa$b;->j:Laa$a;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v1, Laa;->a:Laa$c;

    invoke-virtual {v1, v0}, Laa$c;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "CREATE TABLE IF NOT EXISTS savemode_table (_id INTEGER PRIMARY KEY,mode_name TEXT,brightness INTEGER,screen_time INTEGER,animation INTEGER,wifi_state BOOLEAN,network_state BOOLEAN,bluetooth_state BOOLEAN,auto_sync BOOLEAN,vibrate BOOLEAN,airplane_state INTERGER,haptic_feedback BOOLEAN)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    if-le p3, p2, :cond_1

    const/4 v0, 0x1

    if-gt p2, v0, :cond_0

    const-string v0, "ALTER TABLE savemode_table ADD COLUMN airplane_state INTEGER"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, p1}, Laa;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_1
    return-void
.end method
