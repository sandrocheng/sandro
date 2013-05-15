.class Lcom/avast/android/mobilesecurity/app/firewall/a/i;
.super Ljava/lang/Object;
.source "FirewallEnableRowDAO.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/app/ProgressDialog;

.field final synthetic b:Landroid/os/Handler;

.field final synthetic c:Landroid/os/Handler;

.field final synthetic d:Landroid/os/Handler;

.field final synthetic e:Lcom/avast/android/mobilesecurity/app/firewall/a/e;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/app/firewall/a/e;Landroid/app/ProgressDialog;Landroid/os/Handler;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/firewall/a/i;->e:Lcom/avast/android/mobilesecurity/app/firewall/a/e;

    iput-object p2, p0, Lcom/avast/android/mobilesecurity/app/firewall/a/i;->a:Landroid/app/ProgressDialog;

    iput-object p3, p0, Lcom/avast/android/mobilesecurity/app/firewall/a/i;->b:Landroid/os/Handler;

    iput-object p4, p0, Lcom/avast/android/mobilesecurity/app/firewall/a/i;->c:Landroid/os/Handler;

    iput-object p5, p0, Lcom/avast/android/mobilesecurity/app/firewall/a/i;->d:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const-wide/16 v7, 0x0

    .line 127
    :try_start_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/a/i;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 131
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/a/i;->e:Lcom/avast/android/mobilesecurity/app/firewall/a/e;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/firewall/a/e;->e(Lcom/avast/android/mobilesecurity/app/firewall/a/e;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/firewall/a/i;->e:Lcom/avast/android/mobilesecurity/app/firewall/a/e;

    invoke-static {v2}, Lcom/avast/android/mobilesecurity/app/firewall/a/e;->f(Lcom/avast/android/mobilesecurity/app/firewall/a/e;)Lcom/avast/android/mobilesecurity/app/firewall/core/a;

    move-result-object v2

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/avast/android/mobilesecurity/app/firewall/a/i;->b:Landroid/os/Handler;

    iget-object v5, p0, Lcom/avast/android/mobilesecurity/app/firewall/a/i;->c:Landroid/os/Handler;

    invoke-static/range {v0 .. v5}, Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;->a(Landroid/content/Context;ZLcom/avast/android/mobilesecurity/app/firewall/core/a;ZLandroid/os/Handler;Landroid/os/Handler;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 132
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/a/i;->e:Lcom/avast/android/mobilesecurity/app/firewall/a/e;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/firewall/a/e;->g(Lcom/avast/android/mobilesecurity/app/firewall/a/e;)Lcom/avast/android/generic/ae;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/t;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/t;->g(Z)Z

    move-result v0

    .line 133
    if-nez v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/a/i;->e:Lcom/avast/android/mobilesecurity/app/firewall/a/e;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/firewall/a/e;->f(Lcom/avast/android/mobilesecurity/app/firewall/a/e;)Lcom/avast/android/mobilesecurity/app/firewall/core/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/a/i;->e:Lcom/avast/android/mobilesecurity/app/firewall/a/e;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/firewall/a/e;->f(Lcom/avast/android/mobilesecurity/app/firewall/a/e;)Lcom/avast/android/mobilesecurity/app/firewall/core/a;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/firewall/a/i;->e:Lcom/avast/android/mobilesecurity/app/firewall/a/e;

    invoke-static {v1}, Lcom/avast/android/mobilesecurity/app/firewall/a/e;->h(Lcom/avast/android/mobilesecurity/app/firewall/a/e;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c0321

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/avast/android/mobilesecurity/app/firewall/core/a;->a(Ljava/lang/String;)V

    .line 136
    :cond_0
    invoke-static {}, Lcom/avast/android/generic/util/ga/a;->a()Lcom/google/analytics/tracking/android/bo;

    move-result-object v0

    const-string v1, "ms-Firewall"

    const-string v2, "operation"

    const-string v3, "failedEnable"

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/analytics/tracking/android/bo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 158
    :goto_1
    return-void

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/a/i;->e:Lcom/avast/android/mobilesecurity/app/firewall/a/e;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/firewall/a/e;->i(Lcom/avast/android/mobilesecurity/app/firewall/a/e;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/widget/WidgetControlProvider;->a(Landroid/content/Context;)V

    .line 143
    invoke-static {}, Lcom/avast/android/generic/util/ga/a;->a()Lcom/google/analytics/tracking/android/bo;

    move-result-object v0

    const-string v1, "ms-Firewall"

    const-string v2, "operation"

    const-string v3, "enabled"

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/analytics/tracking/android/bo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 144
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/a/i;->d:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 148
    :catch_0
    move-exception v0

    .line 149
    :try_start_2
    invoke-static {}, Lcom/avast/android/generic/util/ga/a;->a()Lcom/google/analytics/tracking/android/bo;

    move-result-object v1

    const-string v2, "ms-Firewall"

    const-string v3, "failedReason"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/google/analytics/tracking/android/bo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 150
    invoke-static {}, Lcom/avast/android/generic/util/ga/a;->a()Lcom/google/analytics/tracking/android/bo;

    move-result-object v1

    const-string v2, "ms-Firewall"

    const-string v3, "operation"

    const-string v4, "failedEnable"

    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/google/analytics/tracking/android/bo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 151
    const-string v1, "FirewallEnableRowDAO: Error applying rules"

    invoke-static {v1, v0}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 153
    :catch_1
    move-exception v0

    .line 154
    invoke-static {}, Lcom/avast/android/generic/util/ga/a;->a()Lcom/google/analytics/tracking/android/bo;

    move-result-object v1

    const-string v2, "ms-Firewall"

    const-string v3, "failedReason"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/google/analytics/tracking/android/bo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 155
    invoke-static {}, Lcom/avast/android/generic/util/ga/a;->a()Lcom/google/analytics/tracking/android/bo;

    move-result-object v1

    const-string v2, "ms-Firewall"

    const-string v3, "operation"

    const-string v4, "failedEnable"

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/google/analytics/tracking/android/bo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 156
    const-string v1, "FirewallEnableRowDAO: Error in apply or save rules handler"

    invoke-static {v1, v0}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 146
    :cond_2
    :try_start_3
    invoke-static {}, Lcom/avast/android/generic/util/ga/a;->a()Lcom/google/analytics/tracking/android/bo;

    move-result-object v0

    const-string v1, "ms-Firewall"

    const-string v2, "operation"

    const-string v3, "failedEnable"

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/analytics/tracking/android/bo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    .line 128
    :catch_2
    move-exception v0

    goto/16 :goto_0
.end method
