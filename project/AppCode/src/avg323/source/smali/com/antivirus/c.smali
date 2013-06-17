.class public Lcom/antivirus/c;
.super Ljava/lang/Object;


# static fields
.field public static a:I

.field public static b:Z

.field public static c:[I

.field private static d:Landroid/content/SharedPreferences;

.field private static e:Landroid/content/SharedPreferences$Editor;

.field private static f:Lcom/a/a/a/c;

.field private static g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/avg/ui/general/o;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8c

    :goto_0
    sput v0, Lcom/antivirus/c;->a:I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/antivirus/c;->b:Z

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/antivirus/c;->c:[I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/antivirus/c;->g:Z

    return-void

    :cond_0
    const/16 v0, 0x64

    goto :goto_0

    :array_0
    .array-data 0x4
        0xet 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v2, "av"

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    sput-object v2, Lcom/antivirus/c;->d:Landroid/content/SharedPreferences;

    sget-object v2, Lcom/antivirus/c;->d:Landroid/content/SharedPreferences;

    if-nez v2, :cond_1

    const-string v0, "pref is null"

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/antivirus/c;->C()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v1, Lcom/antivirus/c;->d:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "tatzpinbekalut"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_1
    new-instance v1, Lcom/a/a/a/c;

    const-string v2, "noel"

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3, v0}, Lcom/a/a/a/c;-><init>(Landroid/content/Context;Ljava/lang/String;IZ)V

    sput-object v1, Lcom/antivirus/c;->f:Lcom/a/a/a/c;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :goto_2
    :try_start_1
    sget-object v0, Lcom/antivirus/c;->d:Landroid/content/SharedPreferences;

    new-instance v1, Lcom/antivirus/d;

    invoke-direct {v1, p0}, Lcom/antivirus/d;-><init>(Lcom/antivirus/c;)V

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    invoke-static {p1}, Lcom/antivirus/c;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/antivirus/c;->h(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_2
    :try_start_2
    sget-object v0, Lcom/antivirus/c;->d:Landroid/content/SharedPreferences;

    const-string v2, "tatzpinbekalut"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v0

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_3
    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move v0, v1

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_2
.end method

.method public static A()F
    .locals 3

    sget-object v0, Lcom/antivirus/c;->d:Landroid/content/SharedPreferences;

    const-string v1, "sms_filter_rpc_client_success_ratio"

    const/high16 v2, 0x3f80

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public static B()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/antivirus/c;->d:Landroid/content/SharedPreferences;

    const-string v1, "country_iso_code"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static C()Z
    .locals 3

    sget-object v0, Lcom/antivirus/c;->d:Landroid/content/SharedPreferences;

    const-string v1, "first_use"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static D()Landroid/content/SharedPreferences$Editor;
    .locals 1

    sget-object v0, Lcom/antivirus/c;->e:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_0

    sget-object v0, Lcom/antivirus/c;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sput-object v0, Lcom/antivirus/c;->e:Landroid/content/SharedPreferences$Editor;

    :cond_0
    sget-object v0, Lcom/antivirus/c;->e:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/antivirus/c;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/antivirus/c;->h(Landroid/content/Context;)V

    :cond_0
    sget-object v0, Lcom/antivirus/c;->d:Landroid/content/SharedPreferences;

    const-string v1, "xx6"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/antivirus/c;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(F)V
    .locals 2

    invoke-static {}, Lcom/antivirus/c;->D()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "sms_filter_rpc_client_success_ratio"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lcom/antivirus/c;->n()V

    return-void
.end method

.method public static a(I)V
    .locals 2

    invoke-static {}, Lcom/antivirus/c;->D()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "buy_notification"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lcom/antivirus/c;->n()V

    return-void
.end method

.method public static a(J)V
    .locals 2

    invoke-static {}, Lcom/antivirus/c;->D()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "version_update_last_time"

    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lcom/antivirus/c;->n()V

    return-void
.end method

.method static synthetic a(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/antivirus/c;->b(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/antivirus/c;->D()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "user_backup_dir"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lcom/antivirus/c;->n()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/antivirus/c;->D()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "commManager_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lcom/antivirus/c;->n()V

    return-void
.end method

.method public static a(Z)V
    .locals 2

    invoke-static {}, Lcom/antivirus/c;->D()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "le"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public static a()Z
    .locals 3

    sget-object v0, Lcom/antivirus/c;->d:Landroid/content/SharedPreferences;

    const-string v1, "le"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/antivirus/c;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/antivirus/c;->h(Landroid/content/Context;)V

    :cond_0
    sget-object v0, Lcom/antivirus/c;->f:Lcom/a/a/a/c;

    const-string v1, "xx1"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(I)V
    .locals 2

    invoke-static {}, Lcom/antivirus/c;->D()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "show_spam_warning"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lcom/antivirus/c;->n()V

    return-void
.end method

.method public static b(J)V
    .locals 2

    invoke-static {}, Lcom/antivirus/c;->D()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_backup_time"

    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lcom/antivirus/c;->n()V

    return-void
.end method

.method private static b(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/antivirus/c;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "xx6"

    invoke-static {p0}, Lcom/antivirus/c;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static b(Z)V
    .locals 2

    invoke-static {}, Lcom/antivirus/c;->D()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ltf"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public static b()Z
    .locals 3

    sget-object v0, Lcom/antivirus/c;->d:Landroid/content/SharedPreferences;

    const-string v1, "ltf"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/antivirus/c;->f:Lcom/a/a/a/c;

    const-string v1, "doarxahazala_tajlei"

    invoke-static {p0}, Lcom/antivirus/c/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/antivirus/c;->f:Lcom/a/a/a/c;

    const-string v1, "xx1"

    invoke-virtual {v0, v1, p0}, Lcom/a/a/a/c;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static c(Z)V
    .locals 2

    invoke-static {}, Lcom/antivirus/c;->D()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "send_location"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public static c()Z
    .locals 3

    sget-object v0, Lcom/antivirus/c;->d:Landroid/content/SharedPreferences;

    const-string v1, "auto_scan_app"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static d(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/antivirus/c;->f:Lcom/a/a/a/c;

    const-string v1, "doarxahazala_tajlei"

    invoke-virtual {v0, v1, p0}, Lcom/a/a/a/c;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static d(Z)V
    .locals 2

    invoke-static {}, Lcom/antivirus/c;->D()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "is_user_backup_dir_external"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lcom/antivirus/c;->n()V

    return-void
.end method

.method public static d()Z
    .locals 3

    sget-object v0, Lcom/antivirus/c;->d:Landroid/content/SharedPreferences;

    const-string v1, "send_location"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static d(Landroid/content/Context;)Z
    .locals 3

    invoke-static {p0}, Lcom/antivirus/c;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/antivirus/c;->h(Landroid/content/Context;)V

    :cond_0
    sget-object v0, Lcom/antivirus/c;->f:Lcom/a/a/a/c;

    const-string v1, "xx3"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/c;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/antivirus/c;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/antivirus/c;->h(Landroid/content/Context;)V

    :cond_0
    sget-object v0, Lcom/antivirus/c;->d:Landroid/content/SharedPreferences;

    const-string v1, "xx5"

    const-string v2, "1234"

    invoke-static {v2}, Lcom/antivirus/c;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/antivirus/c;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static e(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/antivirus/c;->D()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "updated_lost_msg"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lcom/antivirus/c;->n()V

    return-void
.end method

.method public static e(Z)V
    .locals 2

    sget-object v0, Lcom/antivirus/c;->f:Lcom/a/a/a/c;

    const-string v1, "xx3"

    invoke-virtual {v0, v1, p0}, Lcom/a/a/a/c;->b(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static e()Z
    .locals 3

    sget-object v0, Lcom/antivirus/c;->d:Landroid/content/SharedPreferences;

    const-string v1, "show_tutorial"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static f(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/antivirus/c;->d:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "commManager_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EMPTY"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static f()V
    .locals 3

    invoke-static {}, Lcom/antivirus/c;->D()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "show_tutorial"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lcom/antivirus/c;->n()V

    return-void
.end method

.method public static f(Z)V
    .locals 2

    invoke-static {}, Lcom/antivirus/c;->D()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "loxxer"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lcom/antivirus/c;->n()V

    return-void
.end method

.method private static f(Landroid/content/Context;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    sget-boolean v2, Lcom/antivirus/c;->g:Z

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    sget-object v2, Lcom/antivirus/c;->d:Landroid/content/SharedPreferences;

    const-string v3, "version"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {p0}, Lcom/antivirus/c;->g(Landroid/content/Context;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-lt v2, v3, :cond_1

    :goto_1
    sput-boolean v1, Lcom/antivirus/c;->g:Z

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private static g(Landroid/content/Context;)I
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    return v0
.end method

.method public static g(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/antivirus/c;->D()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "commManager_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lcom/antivirus/c;->n()V

    return-void
.end method

.method public static g(Z)V
    .locals 2

    invoke-static {}, Lcom/antivirus/c;->D()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "applocker_timer"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lcom/antivirus/c;->n()V

    return-void
.end method

.method public static g()Z
    .locals 3

    sget-object v0, Lcom/antivirus/c;->d:Landroid/content/SharedPreferences;

    const-string v1, "notify_on_data_plan_threshold"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static h()I
    .locals 3

    sget-object v0, Lcom/antivirus/c;->d:Landroid/content/SharedPreferences;

    const-string v1, "data_plan_notification_threshold"

    const/16 v2, 0x5a

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static h(Landroid/content/Context;)V
    .locals 12

    const/16 v5, 0x1434

    const/16 v4, 0xc09

    const/16 v3, 0xa42

    const/4 v2, 0x0

    const/4 v11, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    :try_start_0
    sget-object v0, Lcom/antivirus/c;->d:Landroid/content/SharedPreferences;

    const-string v1, "version"

    const/4 v7, 0x0

    invoke-interface {v0, v1, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :try_start_1
    invoke-static {v6}, Lcom/antivirus/c;->g(Landroid/content/Context;)I

    move-result v0

    sget-object v7, Lcom/antivirus/c;->d:Landroid/content/SharedPreferences;

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "version"

    invoke-interface {v7, v8, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move v0, v1

    :goto_0
    if-lez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-wide/32 v9, 0x5265c00

    sub-long/2addr v7, v9

    new-instance v1, Lcom/antivirus/core/b;

    invoke-direct {v1, v6}, Lcom/antivirus/core/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v7, v8}, Lcom/antivirus/core/b;->b(J)V

    invoke-static {v6}, Lcom/antivirus/e/b;->a(Landroid/content/Context;)V

    invoke-static {v6}, Lcom/antivirus/core/a/b;->a(Landroid/content/Context;)V

    :cond_0
    if-gt v0, v3, :cond_2

    move v0, v3

    :cond_1
    :goto_1
    sparse-switch v0, :sswitch_data_0

    :goto_2
    return-void

    :catch_0
    move-exception v0

    move v1, v2

    :goto_3
    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    move v0, v1

    goto :goto_0

    :cond_2
    if-gt v0, v4, :cond_3

    move v0, v4

    goto :goto_1

    :cond_3
    if-gt v0, v5, :cond_4

    move v0, v5

    goto :goto_1

    :cond_4
    const v1, 0x29334

    if-gt v0, v1, :cond_5

    const v0, 0x29334

    goto :goto_1

    :cond_5
    const v1, 0x29a2a

    if-gt v0, v1, :cond_6

    const v0, 0x29a2a

    goto :goto_1

    :cond_6
    const v1, 0x29eb6

    if-gt v0, v1, :cond_7

    const v0, 0x29eb6

    goto :goto_1

    :cond_7
    const v1, 0x2a046

    if-gt v0, v1, :cond_8

    const v0, 0x2a046

    goto :goto_1

    :cond_8
    const v1, 0x2a472

    if-gt v0, v1, :cond_9

    const v0, 0x2a472

    goto :goto_1

    :cond_9
    const v1, 0x2a892

    if-gt v0, v1, :cond_a

    const v0, 0x2a892

    goto :goto_1

    :cond_a
    const v1, 0x2aaa5

    if-gt v0, v1, :cond_b

    const v0, 0x2aaa5

    goto :goto_1

    :cond_b
    const v1, 0x2af14

    if-gt v0, v1, :cond_c

    const v0, 0x2af14

    goto :goto_1

    :cond_c
    const v1, 0x2b89e

    if-gt v0, v1, :cond_1

    const v0, 0x2b89e

    goto :goto_1

    :sswitch_0
    sget-object v0, Lcom/antivirus/c;->f:Lcom/a/a/a/c;

    if-nez v0, :cond_d

    new-instance v0, Lcom/a/a/a/c;

    const-string v1, "noel"

    invoke-direct {v0, v6, v1, v2, v2}, Lcom/a/a/a/c;-><init>(Landroid/content/Context;Ljava/lang/String;IZ)V

    sput-object v0, Lcom/antivirus/c;->f:Lcom/a/a/a/c;

    :cond_d
    sget-object v0, Lcom/antivirus/c;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "password"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v0, "applocker_user_password"

    sget-object v1, Lcom/antivirus/c;->d:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e

    sget-object v3, Lcom/antivirus/c;->d:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    sget-object v0, Lcom/antivirus/c;->f:Lcom/a/a/a/c;

    const-string v3, "xx1"

    invoke-virtual {v0, v3, v1}, Lcom/a/a/a/c;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_e
    const-string v0, "applocker_email_password_entered"

    sget-object v1, Lcom/antivirus/c;->d:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    sget-object v1, Lcom/antivirus/c;->f:Lcom/a/a/a/c;

    const-string v3, "xx3"

    sget-object v4, Lcom/antivirus/c;->d:Landroid/content/SharedPreferences;

    invoke-interface {v4, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/a/a/a/c;->b(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    sget-object v1, Lcom/antivirus/c;->d:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_f
    const-string v0, "unlock_pass"

    sget-object v1, Lcom/antivirus/c;->d:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_10

    sget-object v3, Lcom/antivirus/c;->d:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    sget-object v0, Lcom/antivirus/c;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "xx4"

    invoke-static {v1}, Lcom/antivirus/c;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_10
    const-string v0, "loxxer_pass"

    sget-object v1, Lcom/antivirus/c;->d:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_11

    sget-object v3, Lcom/antivirus/c;->d:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    sget-object v0, Lcom/antivirus/c;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "xx5"

    invoke-static {v1}, Lcom/antivirus/c;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_11
    const-string v0, "findR_user"

    sget-object v1, Lcom/antivirus/c;->d:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_12

    sget-object v3, Lcom/antivirus/c;->d:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    sget-object v0, Lcom/antivirus/c;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "xx6"

    invoke-static {v1}, Lcom/antivirus/c;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_12
    :sswitch_1
    const-string v0, "lang"

    sget-object v1, Lcom/antivirus/c;->d:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_13

    sget-object v3, Lcom/antivirus/c;->d:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-static {v6, v1}, Lcom/antivirus/m;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_13
    :try_start_2
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "next_alarm_formatted"

    const-string v3, ""

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_4
    const-string v0, ""

    invoke-static {v0}, Lcom/antivirus/c;->c(Ljava/lang/String;)V

    new-instance v0, Lcom/antivirus/applocker/c;

    invoke-direct {v0}, Lcom/antivirus/applocker/c;-><init>()V

    invoke-virtual {v0, v6, v11}, Lcom/antivirus/applocker/c;->a(Landroid/content/Context;[Ljava/lang/String;)V

    :sswitch_2
    const-string v0, "ads_keywords"

    sget-object v1, Lcom/antivirus/c;->d:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_14

    sget-object v1, Lcom/antivirus/c;->d:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_14
    :sswitch_3
    const-string v0, "use_jni_Scan"

    sget-object v1, Lcom/antivirus/c;->d:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_15

    sget-object v1, Lcom/antivirus/c;->d:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_15
    :sswitch_4
    const-string v0, "finder_mail"

    invoke-virtual {v6, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "finder_mail"

    const-string v3, ""

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_16

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    new-instance v3, Lcom/a/a/a/c;

    const-string v4, "XX8R"

    const/4 v5, 0x1

    invoke-direct {v3, v6, v4, v2, v5}, Lcom/a/a/a/c;-><init>(Landroid/content/Context;Ljava/lang/String;IZ)V

    const-string v2, "XX8R"

    invoke-virtual {v3, v2, v1}, Lcom/a/a/a/c;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-virtual {v3}, Lcom/a/a/a/c;->a()Z

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "finder_mail"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_16
    new-instance v0, Ljava/io/File;

    invoke-virtual {v6}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/shared_prefs"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "finder_mail.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :sswitch_5
    new-instance v0, Ljava/io/File;

    invoke-virtual {v6}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/shared_prefs"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "lock"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :sswitch_6
    sget-object v0, Lcom/antivirus/c;->f:Lcom/a/a/a/c;

    const-string v1, "pass_recover_mail_addr"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    sget-object v1, Lcom/antivirus/c;->f:Lcom/a/a/a/c;

    const-string v2, "doarxahazala_tajlei"

    invoke-virtual {v1, v2, v0}, Lcom/a/a/a/c;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_17
    sget-object v0, Lcom/antivirus/c;->f:Lcom/a/a/a/c;

    const-string v1, "pass_recover_mail_addr"

    invoke-virtual {v0, v1}, Lcom/a/a/a/c;->a(Ljava/lang/String;)Z

    sget-object v0, Lcom/antivirus/c;->f:Lcom/a/a/a/c;

    invoke-virtual {v0}, Lcom/a/a/a/c;->a()Z

    :sswitch_7
    new-instance v0, Lcom/antivirus/core/e/b;

    invoke-direct {v0}, Lcom/antivirus/core/e/b;-><init>()V

    invoke-virtual {v0, v6}, Lcom/antivirus/core/e/b;->b(Landroid/content/Context;)V

    :sswitch_8
    invoke-static {v6}, Lcom/antivirus/core/scanners/h;->c(Landroid/content/Context;)V

    :sswitch_9
    new-instance v0, Lcom/antivirus/core/e/b;

    invoke-direct {v0}, Lcom/antivirus/core/e/b;-><init>()V

    invoke-virtual {v0, v6}, Lcom/antivirus/core/e/b;->b(Landroid/content/Context;)V

    :sswitch_a
    invoke-static {v6}, Lcom/antivirus/core/scanners/h;->c(Landroid/content/Context;)V

    goto/16 :goto_2

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto/16 :goto_4

    :catch_2
    move-exception v0

    goto/16 :goto_3

    nop

    :sswitch_data_0
    .sparse-switch
        0xa42 -> :sswitch_0
        0xc09 -> :sswitch_1
        0x1434 -> :sswitch_2
        0x29334 -> :sswitch_3
        0x29a2a -> :sswitch_4
        0x29eb6 -> :sswitch_5
        0x2a046 -> :sswitch_6
        0x2a892 -> :sswitch_7
        0x2aaa5 -> :sswitch_8
        0x2af14 -> :sswitch_9
        0x2b89e -> :sswitch_a
    .end sparse-switch
.end method

.method public static h(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/antivirus/c;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "xx5"

    invoke-static {p0}, Lcom/antivirus/c;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static h(Z)V
    .locals 2

    invoke-static {}, Lcom/antivirus/c;->D()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "show_blocked_warning"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lcom/antivirus/c;->n()V

    return-void
.end method

.method public static i()I
    .locals 3

    sget-object v0, Lcom/antivirus/c;->d:Landroid/content/SharedPreferences;

    const-string v1, "buy_notification"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static i(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/antivirus/c;->D()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "default_auto_reject_message"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lcom/antivirus/c;->n()V

    return-void
.end method

.method public static i(Z)V
    .locals 2

    invoke-static {}, Lcom/antivirus/c;->D()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "AUTO_SCAN_SMS_ENABLED"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lcom/antivirus/c;->n()V

    return-void
.end method

.method public static j()J
    .locals 4

    sget-object v0, Lcom/antivirus/c;->d:Landroid/content/SharedPreferences;

    const-string v1, "version_update_last_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static j(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/antivirus/c;->D()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "country_iso_code"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lcom/antivirus/c;->n()V

    return-void
.end method

.method public static k()J
    .locals 4

    sget-object v0, Lcom/antivirus/c;->d:Landroid/content/SharedPreferences;

    const-string v1, "last_backup_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static k(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    if-nez p0, :cond_0

    const-string v0, "got null"

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/16 v2, 0xc

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    move v0, v1

    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_1

    aget-byte v4, v3, v0

    xor-int/2addr v4, v2

    int-to-byte v4, v4

    aput-byte v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/16 v4, 0x5f

    const-string v0, ""

    move-object v2, v0

    move v0, v1

    :goto_2
    const/4 v5, 0x5

    if-ge v0, v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v2, Ljava/lang/String;

    invoke-static {v3, v1}, La/a/a/a/a/a;->a([BZ)[B

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static l()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/antivirus/c;->d:Landroid/content/SharedPreferences;

    const-string v1, "user_backup_dir"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static l(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x5

    const/4 v1, 0x0

    if-nez p0, :cond_1

    const-string v0, "got null"

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v3, 0xc

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v6, :cond_0

    move v2, v1

    move v0, v1

    :goto_1
    if-ge v2, v6, :cond_3

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x5f

    if-eq v4, v5, :cond_2

    const/4 v0, 0x1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    if-nez v0, :cond_0

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La/a/a/a/a/a;->b(Ljava/lang/String;)[B

    move-result-object v2

    move v0, v1

    :goto_2
    array-length v1, v2

    if-ge v0, v1, :cond_4

    aget-byte v1, v2, v0

    xor-int/2addr v1, v3

    int-to-byte v1, v1

    aput-byte v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method public static m()Z
    .locals 3

    sget-object v0, Lcom/antivirus/c;->d:Landroid/content/SharedPreferences;

    const-string v1, "is_user_backup_dir_external"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static n()V
    .locals 1

    sget-object v0, Lcom/antivirus/c;->e:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/antivirus/c;->e:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 v0, 0x0

    sput-object v0, Lcom/antivirus/c;->e:Landroid/content/SharedPreferences$Editor;

    :cond_0
    return-void
.end method

.method public static o()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/antivirus/c;->d:Landroid/content/SharedPreferences;

    const-string v1, "updated_lost_msg"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static p()Z
    .locals 3

    sget-object v0, Lcom/antivirus/c;->d:Landroid/content/SharedPreferences;

    const-string v1, "loxxer"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static q()Z
    .locals 3

    sget-object v0, Lcom/antivirus/c;->d:Landroid/content/SharedPreferences;

    const-string v1, "applocker_timer"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static r()Z
    .locals 3

    sget-object v0, Lcom/antivirus/c;->d:Landroid/content/SharedPreferences;

    const-string v1, "show_blocked_warning"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static s()V
    .locals 3

    invoke-static {}, Lcom/antivirus/c;->D()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "show_trusted_warning"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lcom/antivirus/c;->n()V

    return-void
.end method

.method public static t()I
    .locals 3

    sget-object v0, Lcom/antivirus/c;->d:Landroid/content/SharedPreferences;

    const-string v1, "show_spam_warning"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static u()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/antivirus/c;->d:Landroid/content/SharedPreferences;

    const-string v1, "default_auto_reject_message"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static v()Z
    .locals 3

    sget-object v0, Lcom/antivirus/c;->d:Landroid/content/SharedPreferences;

    const-string v1, "show_redirect_dialog"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static w()V
    .locals 3

    invoke-static {}, Lcom/antivirus/c;->D()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "show_redirect_dialog"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lcom/antivirus/c;->n()V

    return-void
.end method

.method public static x()Z
    .locals 3

    sget-object v0, Lcom/antivirus/c;->d:Landroid/content/SharedPreferences;

    const-string v1, "show_sms_auto_scan_dialog"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static y()V
    .locals 3

    invoke-static {}, Lcom/antivirus/c;->D()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "show_sms_auto_scan_dialog"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lcom/antivirus/c;->n()V

    return-void
.end method

.method public static z()Z
    .locals 3

    sget-object v0, Lcom/antivirus/c;->d:Landroid/content/SharedPreferences;

    const-string v1, "AUTO_SCAN_SMS_ENABLED"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
