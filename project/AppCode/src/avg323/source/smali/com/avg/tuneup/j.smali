.class public Lcom/avg/tuneup/j;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/content/SharedPreferences;

.field private static b:Landroid/content/SharedPreferences$Editor;

.field private static c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/avg/tuneup/j;->c:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/avg/tuneup/j;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const-string v0, "av"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/avg/tuneup/j;->a:Landroid/content/SharedPreferences;

    sget-object v0, Lcom/avg/tuneup/j;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_1

    const-string v0, "pref is null"

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-static {p1}, Lcom/avg/tuneup/j;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/avg/tuneup/j;->c(Landroid/content/Context;)V

    :cond_2
    sget-object v0, Lcom/avg/tuneup/j;->a:Landroid/content/SharedPreferences;

    const-string v1, "VERSION_INITIALY_UPDATED"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/avg/tuneup/j;->c(Landroid/content/Context;)V

    invoke-static {}, Lcom/avg/tuneup/j;->v()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "VERSION_INITIALY_UPDATED"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static a(F)V
    .locals 2

    invoke-static {}, Lcom/avg/tuneup/j;->v()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "data_plan_quota"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lcom/avg/tuneup/j;->u()V

    return-void
.end method

.method public static a(I)V
    .locals 2

    invoke-static {}, Lcom/avg/tuneup/j;->v()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "data_plan_quota_units"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lcom/avg/tuneup/j;->u()V

    return-void
.end method

.method public static a(J)V
    .locals 2

    invoke-static {}, Lcom/avg/tuneup/j;->v()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "data_plan_quota_bytes"

    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lcom/avg/tuneup/j;->u()V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/avg/tuneup/j;->v()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "top_performance_activity_class_name"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lcom/avg/tuneup/j;->u()V

    return-void
.end method

.method public static a(Z)V
    .locals 2

    invoke-static {}, Lcom/avg/tuneup/j;->v()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "traffic_counter_on"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lcom/avg/tuneup/j;->u()V

    return-void
.end method

.method public static a()Z
    .locals 3

    sget-object v0, Lcom/avg/tuneup/j;->a:Landroid/content/SharedPreferences;

    const-string v1, "traffic_counter_on"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static a(Landroid/content/Context;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    sget-boolean v2, Lcom/avg/tuneup/j;->c:Z

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    sget-object v2, Lcom/avg/tuneup/j;->a:Landroid/content/SharedPreferences;

    const-string v3, "version"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {p0}, Lcom/avg/tuneup/j;->b(Landroid/content/Context;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-lt v2, v3, :cond_1

    :goto_1
    sput-boolean v1, Lcom/avg/tuneup/j;->c:Z

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public static b()F
    .locals 3

    sget-object v0, Lcom/avg/tuneup/j;->a:Landroid/content/SharedPreferences;

    const-string v1, "data_plan_quota"

    const/high16 v2, 0x4000

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method private static b(Landroid/content/Context;)I
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

.method public static b(I)V
    .locals 2

    invoke-static {}, Lcom/avg/tuneup/j;->v()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "data_plan_cycle_units"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lcom/avg/tuneup/j;->u()V

    return-void
.end method

.method public static b(J)V
    .locals 2

    invoke-static {}, Lcom/avg/tuneup/j;->v()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "billing_date"

    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lcom/avg/tuneup/j;->u()V

    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/avg/tuneup/j;->v()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "service_name"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lcom/avg/tuneup/j;->u()V

    return-void
.end method

.method public static b(Z)V
    .locals 2

    invoke-static {}, Lcom/avg/tuneup/j;->v()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "restart_data_count"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lcom/avg/tuneup/j;->u()V

    return-void
.end method

.method public static c()J
    .locals 4

    sget-object v0, Lcom/avg/tuneup/j;->a:Landroid/content/SharedPreferences;

    const-string v1, "data_plan_quota_bytes"

    const-wide/16 v2, 0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static c(I)V
    .locals 2

    invoke-static {}, Lcom/avg/tuneup/j;->v()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "data_plan_cycle_value"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lcom/avg/tuneup/j;->u()V

    return-void
.end method

.method private static c(Landroid/content/Context;)V
    .locals 3

    :try_start_0
    sget-object v0, Lcom/avg/tuneup/j;->a:Landroid/content/SharedPreferences;

    const-string v1, "data_plan_quota"

    const/high16 v2, 0x4000

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v0, Lcom/avg/tuneup/j;->a:Landroid/content/SharedPreferences;

    const-string v1, "data_plan_quota"

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {}, Lcom/avg/tuneup/j;->v()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "data_plan_quota"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    int-to-float v0, v0

    invoke-static {v0}, Lcom/avg/tuneup/j;->a(F)V

    goto :goto_0
.end method

.method public static c(Z)V
    .locals 2

    invoke-static {}, Lcom/avg/tuneup/j;->v()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "notify_on_data_plan_threshold"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lcom/avg/tuneup/j;->u()V

    return-void
.end method

.method public static d()I
    .locals 3

    sget-object v0, Lcom/avg/tuneup/j;->a:Landroid/content/SharedPreferences;

    const-string v1, "data_plan_quota_units"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static d(I)V
    .locals 2

    invoke-static {}, Lcom/avg/tuneup/j;->v()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "refresh_rate"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lcom/avg/tuneup/j;->u()V

    return-void
.end method

.method public static d(Z)V
    .locals 2

    invoke-static {}, Lcom/avg/tuneup/j;->v()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "quota_ongoing_notification"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lcom/avg/tuneup/j;->u()V

    return-void
.end method

.method public static e()I
    .locals 3

    sget-object v0, Lcom/avg/tuneup/j;->a:Landroid/content/SharedPreferences;

    const-string v1, "data_plan_cycle_units"

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static e(I)V
    .locals 2

    invoke-static {}, Lcom/avg/tuneup/j;->v()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "data_plan_notification_threshold"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lcom/avg/tuneup/j;->u()V

    return-void
.end method

.method public static e(Z)V
    .locals 2

    invoke-static {}, Lcom/avg/tuneup/j;->v()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "notify_on_low_battery"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lcom/avg/tuneup/j;->u()V

    return-void
.end method

.method public static f()I
    .locals 3

    sget-object v0, Lcom/avg/tuneup/j;->a:Landroid/content/SharedPreferences;

    const-string v1, "data_plan_cycle_value"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static f(I)V
    .locals 2

    invoke-static {}, Lcom/avg/tuneup/j;->v()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "quota_usage_notified_warning_id"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lcom/avg/tuneup/j;->u()V

    return-void
.end method

.method public static g(I)V
    .locals 2

    invoke-static {}, Lcom/avg/tuneup/j;->v()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "notify_on_low_battery_threshold"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lcom/avg/tuneup/j;->u()V

    return-void
.end method

.method public static g()Z
    .locals 3

    sget-object v0, Lcom/avg/tuneup/j;->a:Landroid/content/SharedPreferences;

    const-string v1, "restart_data_count"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static h()I
    .locals 3

    sget-object v0, Lcom/avg/tuneup/j;->a:Landroid/content/SharedPreferences;

    const-string v1, "refresh_rate"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static h(I)V
    .locals 2

    invoke-static {}, Lcom/avg/tuneup/j;->v()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_battery_threshold"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lcom/avg/tuneup/j;->u()V

    return-void
.end method

.method public static i()Z
    .locals 3

    sget-object v0, Lcom/avg/tuneup/j;->a:Landroid/content/SharedPreferences;

    const-string v1, "notify_on_data_plan_threshold"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static j()I
    .locals 3

    sget-object v0, Lcom/avg/tuneup/j;->a:Landroid/content/SharedPreferences;

    const-string v1, "data_plan_notification_threshold"

    const/16 v2, 0x5a

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static k()J
    .locals 4

    sget-object v0, Lcom/avg/tuneup/j;->a:Landroid/content/SharedPreferences;

    const-string v1, "billing_date"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static l()I
    .locals 3

    sget-object v0, Lcom/avg/tuneup/j;->a:Landroid/content/SharedPreferences;

    const-string v1, "quota_usage_notified_warning_id"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static m()Z
    .locals 3

    sget-object v0, Lcom/avg/tuneup/j;->a:Landroid/content/SharedPreferences;

    const-string v1, "quota_ongoing_notification"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static n()Z
    .locals 3

    sget-object v0, Lcom/avg/tuneup/j;->a:Landroid/content/SharedPreferences;

    const-string v1, "notify_on_low_battery"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static o()I
    .locals 4

    sget-object v0, Lcom/avg/tuneup/j;->a:Landroid/content/SharedPreferences;

    const-string v1, "notify_on_low_battery_threshold"

    sget-object v2, Lcom/avg/tuneup/battery/c;->b:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static p()I
    .locals 3

    sget-object v0, Lcom/avg/tuneup/j;->a:Landroid/content/SharedPreferences;

    const-string v1, "last_battery_threshold"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static q()Z
    .locals 3

    sget-object v0, Lcom/avg/tuneup/j;->a:Landroid/content/SharedPreferences;

    const-string v1, "show_close_all_confirm_dialog"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static r()V
    .locals 3

    invoke-static {}, Lcom/avg/tuneup/j;->v()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "show_close_all_confirm_dialog"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lcom/avg/tuneup/j;->u()V

    return-void
.end method

.method public static s()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/avg/tuneup/j;->a:Landroid/content/SharedPreferences;

    const-string v1, "top_performance_activity_class_name"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static t()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/avg/tuneup/j;->a:Landroid/content/SharedPreferences;

    const-string v1, "service_name"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static u()V
    .locals 1

    sget-object v0, Lcom/avg/tuneup/j;->b:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/avg/tuneup/j;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 v0, 0x0

    sput-object v0, Lcom/avg/tuneup/j;->b:Landroid/content/SharedPreferences$Editor;

    :cond_0
    return-void
.end method

.method private static v()Landroid/content/SharedPreferences$Editor;
    .locals 1

    sget-object v0, Lcom/avg/tuneup/j;->b:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_0

    sget-object v0, Lcom/avg/tuneup/j;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sput-object v0, Lcom/avg/tuneup/j;->b:Landroid/content/SharedPreferences$Editor;

    :cond_0
    sget-object v0, Lcom/avg/tuneup/j;->b:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method
