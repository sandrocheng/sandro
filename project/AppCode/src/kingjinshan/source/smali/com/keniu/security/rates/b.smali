.class final Lcom/keniu/security/rates/b;
.super Ljava/lang/Object;
.source "FixSmsFilter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lcom/keniu/security/rates/a;


# direct methods
.method public constructor <init>(Lcom/keniu/security/rates/a;)V
    .locals 0
    .parameter

    .prologue
    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iput-object p1, p0, Lcom/keniu/security/rates/b;->a:Lcom/keniu/security/rates/a;

    .line 158
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 163
    invoke-static {}, Lcom/keniu/security/rates/a;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 165
    :try_start_0
    invoke-static {}, Lcn/com/wali/zft/plugin;->getInstance()Lcn/com/wali/zft/plugin;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/com/wali/zft/plugin;->load_today_cache(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 167
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 169
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/keniu/security/rates/a;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 173
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 179
    :cond_0
    invoke-static {}, Lcom/keniu/security/rates/a;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 181
    sget-object v0, Lcom/keniu/security/rates/RatesRequestMainActivity;->e:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 193
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/keniu/security/rates/b;->a:Lcom/keniu/security/rates/a;

    if-eqz v0, :cond_2

    .line 194
    invoke-static {}, Lcom/keniu/security/monitor/a;->a()Lcom/keniu/security/monitor/a;

    move-result-object v0

    .line 195
    sget v1, Lcom/keniu/security/monitor/a;->r:I

    iget-object v2, p0, Lcom/keniu/security/rates/b;->a:Lcom/keniu/security/rates/a;

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/monitor/a;->a(ILcom/keniu/security/monitor/b;)Z

    .line 198
    invoke-static {}, Lcom/keniu/security/rates/a;->c()Lcn/com/wali/zft/plugin;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/rates/b;->a:Lcom/keniu/security/rates/a;

    invoke-virtual {v0, v1}, Lcn/com/wali/zft/plugin;->unregistCallBack(Lcn/com/wali/zft/ZftPluginCallBack;)V

    .line 199
    invoke-static {}, Lcom/keniu/security/rates/a;->c()Lcn/com/wali/zft/plugin;

    move-result-object v0

    invoke-virtual {v0}, Lcn/com/wali/zft/plugin;->endAsyn_1_1()I

    .line 201
    invoke-static {}, Lcom/keniu/security/MoSecurityApplication;->a()Lcom/keniu/security/MoSecurityApplication;

    move-result-object v0

    .line 202
    invoke-static {v0}, Lcom/ijinshan/kpref/t;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 205
    const-string v1, "traffic_updater2_report_fix_sms"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 207
    if-nez v1, :cond_2

    .line 208
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 209
    const-string v1, "traffic_updater2_report_fix_sms"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 210
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 211
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "reported = true"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 215
    :cond_2
    return-void

    .line 185
    :cond_3
    invoke-static {}, Lcom/keniu/security/rates/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/rates/a;->b(Ljava/lang/String;)V

    .line 186
    invoke-static {}, Lcom/keniu/security/rates/a;->b()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b037a

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
