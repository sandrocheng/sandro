.class public Lcom/avast/android/mobilesecurity/app/firewall/core/FirewallHandlingService;
.super Lcom/avast/android/generic/service/WakefulIntentService;
.source "FirewallHandlingService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/avast/android/generic/service/WakefulIntentService;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 81
    :try_start_0
    const-string v0, "Applying firewall rules in FirewallHandlingService..."

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 83
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/avast/android/mobilesecurity/app/firewall/core/b;->a(Landroid/content/Context;Lcom/avast/android/mobilesecurity/app/firewall/core/a;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    const-string v0, "Applying firewall rules in FirewallHandlingService failed"

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 85
    const v0, 0x7f0c0330

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/avast/android/mobilesecurity/app/firewall/core/FirewallHandlingService;->a(II)V

    .line 88
    :cond_0
    const-string v0, "Applied firewall rules in FirewallHandlingService"

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :goto_0
    return-void

    .line 89
    :catch_0
    move-exception v0

    .line 91
    const-string v1, "Error in FW app boot completed handling"

    invoke-static {v1, v0}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private b(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 103
    :try_start_0
    const-string v0, "Roaming state handling, subthread entered"

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 105
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/avast/android/mobilesecurity/app/firewall/core/b;->a(Landroid/content/Context;Lcom/avast/android/mobilesecurity/app/firewall/core/a;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    const-string v0, "Roaming state handling, error in applying FW rules, disabling"

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 109
    const v0, 0x7f0c0331

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/avast/android/mobilesecurity/app/firewall/core/FirewallHandlingService;->a(II)V

    .line 111
    const-class v0, Lcom/avast/android/mobilesecurity/t;

    invoke-static {p1, v0}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/t;

    .line 112
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/t;->g(Z)Z

    .line 114
    invoke-static {p1}, Lcom/avast/android/mobilesecurity/app/widget/WidgetControlProvider;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 116
    :catch_0
    move-exception v0

    .line 118
    const-string v1, "Error in FW app roaming state handling"

    invoke-static {v1, v0}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".app.firewall.core.FirewallHandlingService"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/avast/android/generic/service/WakefulIntentService;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    .line 169
    return-void
.end method

.method private c(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 63
    :try_start_0
    const-string v0, "pkg"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 64
    const-string v1, "uid"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 66
    invoke-static {p1, v0, v1}, Lcom/avast/android/mobilesecurity/app/firewall/core/b;->a(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_0
    return-void

    .line 67
    :catch_0
    move-exception v0

    .line 69
    const-string v1, "Error in FW app remove handling"

    invoke-static {v1, v0}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private d(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 131
    :try_start_0
    const-string v0, "enabled"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 133
    if-eqz v1, :cond_1

    .line 134
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/avast/android/mobilesecurity/app/firewall/core/b;->a(Landroid/content/Context;Lcom/avast/android/mobilesecurity/app/firewall/core/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    const v0, 0x7f0c031f

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/avast/android/mobilesecurity/app/firewall/core/FirewallHandlingService;->a(II)V

    .line 149
    :goto_0
    const-class v0, Lcom/avast/android/mobilesecurity/t;

    invoke-static {p1, v0}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/t;

    .line 150
    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/t;->g(Z)Z

    .line 152
    invoke-static {p1}, Lcom/avast/android/mobilesecurity/app/widget/WidgetControlProvider;->a(Landroid/content/Context;)V

    .line 157
    :goto_1
    return-void

    .line 137
    :cond_0
    const v0, 0x7f0c0326

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/avast/android/mobilesecurity/app/firewall/core/FirewallHandlingService;->a(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 153
    :catch_0
    move-exception v0

    .line 155
    const-string v1, "Error in FW app remove handling"

    invoke-static {v1, v0}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 141
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p1, v0}, Lcom/avast/android/mobilesecurity/app/firewall/core/b;->b(Landroid/content/Context;Lcom/avast/android/mobilesecurity/app/firewall/core/a;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 142
    const v0, 0x7f0c0323

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/avast/android/mobilesecurity/app/firewall/core/FirewallHandlingService;->a(II)V

    goto :goto_0

    .line 144
    :cond_2
    const v0, 0x7f0c032d

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/avast/android/mobilesecurity/app/firewall/core/FirewallHandlingService;->a(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method


# virtual methods
.method protected a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 37
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 39
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 52
    :cond_0
    :goto_1
    return-void

    .line 37
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 42
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Firewall handling service started for intent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 44
    const-string v1, "com.avast.android.mobilesecurity.app.firewall.core.APP_REMOVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/avast/android/mobilesecurity/app/firewall/core/FirewallHandlingService;->c(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 46
    :cond_3
    const-string v1, "com.avast.android.mobilesecurity.app.firewall.core.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 47
    invoke-direct {p0, p1}, Lcom/avast/android/mobilesecurity/app/firewall/core/FirewallHandlingService;->a(Landroid/content/Context;)V

    goto :goto_1

    .line 48
    :cond_4
    const-string v1, "com.avast.android.mobilesecurity.app.firewall.core.ROAMING_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 49
    invoke-direct {p0, p1}, Lcom/avast/android/mobilesecurity/app/firewall/core/FirewallHandlingService;->b(Landroid/content/Context;)V

    goto :goto_1

    .line 50
    :cond_5
    const-string v1, "com.avast.android.mobilesecurity.app.firewall.core.WIDGET_COMMAND"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/avast/android/mobilesecurity/app/firewall/core/FirewallHandlingService;->d(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1
.end method
