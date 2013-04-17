.class final Lht;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lhs;


# direct methods
.method constructor <init>(Lhs;)V
    .locals 0

    iput-object p1, p0, Lht;->a:Lhs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lht;->a:Lhs;

    invoke-static {v0}, Lhs;->a(Lhs;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lhs;->c()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lht;->a:Lhs;

    invoke-static {v0}, Lhs;->b(Lhs;)Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
