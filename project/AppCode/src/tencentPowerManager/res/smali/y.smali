.class public Ly;
.super Ljava/lang/Object;


# static fields
.field private static a:Ly;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Landroid/content/SharedPreferences;

.field private d:Landroid/content/SharedPreferences$Editor;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly;->b:Landroid/content/Context;

    iget-object v0, p0, Ly;->b:Landroid/content/Context;

    const-string v1, "battery_setting_record"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Ly;->c:Landroid/content/SharedPreferences;

    iget-object v0, p0, Ly;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Ly;->d:Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method protected static a()Ly;
    .locals 3

    sget-object v0, Ly;->a:Ly;

    if-nez v0, :cond_1

    const-class v1, Ly;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ly;->a:Ly;

    if-nez v0, :cond_0

    new-instance v0, Ly;

    invoke-static {}, Lcom/tencent/powermanager/PowerManagerApplication;->a()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Ly;-><init>(Landroid/content/Context;)V

    sput-object v0, Ly;->a:Ly;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Ly;->a:Ly;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final A()I
    .locals 3

    iget-object v0, p0, Ly;->c:Landroid/content/SharedPreferences;

    const-string v1, "low_power_animation_record"

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final B()Z
    .locals 3

    iget-object v0, p0, Ly;->c:Landroid/content/SharedPreferences;

    const-string v1, "low_power_vibrate_record"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final C()V
    .locals 3

    iget-object v0, p0, Ly;->d:Landroid/content/SharedPreferences$Editor;

    const-string v1, "low_power_auto_sync_record"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final D()Z
    .locals 3

    iget-object v0, p0, Ly;->c:Landroid/content/SharedPreferences;

    const-string v1, "low_power_auto_sync_record"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final E()Z
    .locals 3

    iget-object v0, p0, Ly;->c:Landroid/content/SharedPreferences;

    const-string v1, "low_power_haptic_feedback_record"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final a(I)V
    .locals 2

    iget-object v0, p0, Ly;->d:Landroid/content/SharedPreferences$Editor;

    const-string v1, "bright_record"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final a(Z)V
    .locals 2

    iget-object v0, p0, Ly;->d:Landroid/content/SharedPreferences$Editor;

    const-string v1, "blue_tooth_record"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final b(I)V
    .locals 2

    iget-object v0, p0, Ly;->d:Landroid/content/SharedPreferences$Editor;

    const-string v1, "screen_time_record"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final b(Z)V
    .locals 2

    iget-object v0, p0, Ly;->d:Landroid/content/SharedPreferences$Editor;

    const-string v1, "wifi_record"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final b()Z
    .locals 3

    iget-object v0, p0, Ly;->c:Landroid/content/SharedPreferences;

    const-string v1, "blue_tooth_record"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final c(I)V
    .locals 2

    iget-object v0, p0, Ly;->d:Landroid/content/SharedPreferences$Editor;

    const-string v1, "animation_record"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final c(Z)V
    .locals 2

    iget-object v0, p0, Ly;->d:Landroid/content/SharedPreferences$Editor;

    const-string v1, "gprs_record"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final c()Z
    .locals 3

    iget-object v0, p0, Ly;->c:Landroid/content/SharedPreferences;

    const-string v1, "wifi_record"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final d(I)V
    .locals 2

    iget-object v0, p0, Ly;->d:Landroid/content/SharedPreferences$Editor;

    const-string v1, "low_power_bright_record"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final d(Z)V
    .locals 2

    iget-object v0, p0, Ly;->d:Landroid/content/SharedPreferences$Editor;

    const-string v1, "vibrate_record"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final d()Z
    .locals 3

    iget-object v0, p0, Ly;->c:Landroid/content/SharedPreferences;

    const-string v1, "gprs_record"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final e()I
    .locals 3

    iget-object v0, p0, Ly;->c:Landroid/content/SharedPreferences;

    const-string v1, "bright_record"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final e(I)V
    .locals 2

    iget-object v0, p0, Ly;->d:Landroid/content/SharedPreferences$Editor;

    const-string v1, "low_power_screen_time_record"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final e(Z)V
    .locals 2

    iget-object v0, p0, Ly;->d:Landroid/content/SharedPreferences$Editor;

    const-string v1, "auto_sync_record"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final f()I
    .locals 3

    iget-object v0, p0, Ly;->c:Landroid/content/SharedPreferences;

    const-string v1, "screen_time_record"

    const/16 v2, 0x7530

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final f(I)V
    .locals 2

    iget-object v0, p0, Ly;->d:Landroid/content/SharedPreferences$Editor;

    const-string v1, "low_power_animation_record"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final f(Z)V
    .locals 2

    iget-object v0, p0, Ly;->d:Landroid/content/SharedPreferences$Editor;

    const-string v1, "haptic_feedback_record"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final g()I
    .locals 3

    iget-object v0, p0, Ly;->c:Landroid/content/SharedPreferences;

    const-string v1, "animation_record"

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final g(Z)V
    .locals 2

    iget-object v0, p0, Ly;->d:Landroid/content/SharedPreferences$Editor;

    const-string v1, "is_air_mode_record"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final h(Z)V
    .locals 3

    iget-object v1, p0, Ly;->d:Landroid/content/SharedPreferences$Editor;

    const-string v2, "common_mode_wifi_record"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final h()Z
    .locals 3

    iget-object v0, p0, Ly;->c:Landroid/content/SharedPreferences;

    const-string v1, "vibrate_record"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final i(Z)V
    .locals 3

    iget-object v1, p0, Ly;->d:Landroid/content/SharedPreferences$Editor;

    const-string v2, "common_mode_gprs_record"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final i()Z
    .locals 3

    iget-object v0, p0, Ly;->c:Landroid/content/SharedPreferences;

    const-string v1, "auto_sync_record"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final j(Z)V
    .locals 3

    iget-object v1, p0, Ly;->d:Landroid/content/SharedPreferences$Editor;

    const-string v2, "common_mode_vibrate_record"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final j()Z
    .locals 3

    iget-object v0, p0, Ly;->c:Landroid/content/SharedPreferences;

    const-string v1, "haptic_feedback_record"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final k(Z)V
    .locals 3

    iget-object v1, p0, Ly;->d:Landroid/content/SharedPreferences$Editor;

    const-string v2, "common_mode_haptic_feedback_record"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final k()Z
    .locals 3

    iget-object v0, p0, Ly;->c:Landroid/content/SharedPreferences;

    const-string v1, "is_save_record"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final l()V
    .locals 3

    iget-object v0, p0, Ly;->d:Landroid/content/SharedPreferences$Editor;

    const-string v1, "is_save_record"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final l(Z)V
    .locals 3

    iget-object v1, p0, Ly;->d:Landroid/content/SharedPreferences$Editor;

    const-string v2, "strong_mode_gprs_record"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final m(Z)V
    .locals 3

    iget-object v1, p0, Ly;->d:Landroid/content/SharedPreferences$Editor;

    const-string v2, "strong_mode_vibrate_record"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final m()Z
    .locals 3

    iget-object v0, p0, Ly;->c:Landroid/content/SharedPreferences;

    const-string v1, "is_air_mode_record"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final n()I
    .locals 3

    iget-object v0, p0, Ly;->c:Landroid/content/SharedPreferences;

    const-string v1, "common_mode_wifi_record"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final n(Z)V
    .locals 3

    iget-object v1, p0, Ly;->d:Landroid/content/SharedPreferences$Editor;

    const-string v2, "extream_mode_vibrate_record"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final o()I
    .locals 3

    iget-object v0, p0, Ly;->c:Landroid/content/SharedPreferences;

    const-string v1, "common_mode_gprs_record"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final o(Z)V
    .locals 2

    iget-object v0, p0, Ly;->d:Landroid/content/SharedPreferences$Editor;

    const-string v1, "low_power_has_save_record"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final p()I
    .locals 3

    iget-object v0, p0, Ly;->c:Landroid/content/SharedPreferences;

    const-string v1, "common_mode_vibrate_record"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final p(Z)V
    .locals 2

    iget-object v0, p0, Ly;->d:Landroid/content/SharedPreferences$Editor;

    const-string v1, "low_power_blue_tooth_record"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final q()I
    .locals 3

    iget-object v0, p0, Ly;->c:Landroid/content/SharedPreferences;

    const-string v1, "common_mode_haptic_feedback_record"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final q(Z)V
    .locals 2

    iget-object v0, p0, Ly;->d:Landroid/content/SharedPreferences$Editor;

    const-string v1, "low_power_wifi_record"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final r()I
    .locals 3

    iget-object v0, p0, Ly;->c:Landroid/content/SharedPreferences;

    const-string v1, "strong_mode_gprs_record"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final r(Z)V
    .locals 2

    iget-object v0, p0, Ly;->d:Landroid/content/SharedPreferences$Editor;

    const-string v1, "low_power_gprs_record"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final s()I
    .locals 3

    iget-object v0, p0, Ly;->c:Landroid/content/SharedPreferences;

    const-string v1, "extream_mode_vibrate_record"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final s(Z)V
    .locals 2

    iget-object v0, p0, Ly;->d:Landroid/content/SharedPreferences$Editor;

    const-string v1, "low_power_vibrate_record"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final t()I
    .locals 3

    iget-object v0, p0, Ly;->c:Landroid/content/SharedPreferences;

    const-string v1, "strong_mode_vibrate_record"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final t(Z)V
    .locals 2

    iget-object v0, p0, Ly;->d:Landroid/content/SharedPreferences$Editor;

    const-string v1, "low_power_haptic_feedback_record"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final u()Z
    .locals 3

    iget-object v0, p0, Ly;->c:Landroid/content/SharedPreferences;

    const-string v1, "low_power_has_save_record"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final v()Z
    .locals 3

    iget-object v0, p0, Ly;->c:Landroid/content/SharedPreferences;

    const-string v1, "low_power_blue_tooth_record"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final w()Z
    .locals 3

    iget-object v0, p0, Ly;->c:Landroid/content/SharedPreferences;

    const-string v1, "low_power_wifi_record"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final x()Z
    .locals 3

    iget-object v0, p0, Ly;->c:Landroid/content/SharedPreferences;

    const-string v1, "low_power_gprs_record"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final y()I
    .locals 3

    iget-object v0, p0, Ly;->c:Landroid/content/SharedPreferences;

    const-string v1, "low_power_bright_record"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final z()I
    .locals 3

    iget-object v0, p0, Ly;->c:Landroid/content/SharedPreferences;

    const-string v1, "low_power_screen_time_record"

    const/16 v2, 0x7530

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method
