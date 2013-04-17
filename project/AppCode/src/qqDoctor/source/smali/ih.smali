.class public final Lih;
.super Ljava/lang/Object;


# static fields
.field public static a:Z

.field private static b:Lih;


# instance fields
.field private c:Landroid/content/SharedPreferences;

.field private d:Landroid/content/SharedPreferences$Editor;

.field private e:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lih;->a:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lih;->e:Landroid/content/Context;

    iget-object v0, p0, Lih;->e:Landroid/content/Context;

    const-string v1, "firewallData"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lih;->c:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lih;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lih;->d:Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lih;
    .locals 2

    const-class v1, Lih;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lih;->b:Lih;

    if-nez v0, :cond_0

    new-instance v0, Lih;

    invoke-direct {v0, p0}, Lih;-><init>(Landroid/content/Context;)V

    sput-object v0, Lih;->b:Lih;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lih;->b:Lih;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(Z)V
    .locals 2

    iget-object v0, p0, Lih;->d:Landroid/content/SharedPreferences$Editor;

    const-string v1, "last_init_success"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final a()Z
    .locals 3

    iget-object v0, p0, Lih;->c:Landroid/content/SharedPreferences;

    const-string v1, "is_warn_no_root"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Lih;->d:Landroid/content/SharedPreferences$Editor;

    const-string v1, "is_warn_no_root"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final c()Z
    .locals 3

    iget-object v0, p0, Lih;->c:Landroid/content/SharedPreferences;

    const-string v1, "is_get_root"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final d()V
    .locals 3

    iget-object v0, p0, Lih;->d:Landroid/content/SharedPreferences$Editor;

    const-string v1, "is_get_root"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final e()Z
    .locals 3

    iget-object v0, p0, Lih;->c:Landroid/content/SharedPreferences;

    const-string v1, "last_init_success"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
