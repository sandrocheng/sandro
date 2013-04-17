.class public final Ljc;
.super Ljava/lang/Object;


# static fields
.field private static d:Ljc;


# instance fields
.field public a:Landroid/content/SharedPreferences$Editor;

.field public b:Landroid/content/SharedPreferences;

.field private c:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljc;->c:Landroid/content/Context;

    iget-object v0, p0, Ljc;->c:Landroid/content/Context;

    const-string v1, "OneKeyCheckDao"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Ljc;->b:Landroid/content/SharedPreferences;

    iget-object v0, p0, Ljc;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Ljc;->a:Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Ljc;
    .locals 2

    const-class v1, Ljc;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ljc;->d:Ljc;

    if-nez v0, :cond_0

    new-instance v0, Ljc;

    invoke-direct {v0, p0}, Ljc;-><init>(Landroid/content/Context;)V

    sput-object v0, Ljc;->d:Ljc;

    :cond_0
    sget-object v0, Ljc;->d:Ljc;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
