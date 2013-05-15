.class public Lcom/avast/android/mobilesecurity/app/firewall/a/e;
.super Lcom/avast/android/generic/d/c;
.source "FirewallEnableRowDAO.java"


# instance fields
.field private a:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

.field private b:Lcom/avast/android/mobilesecurity/app/firewall/a/b;

.field private c:Lcom/avast/android/mobilesecurity/app/firewall/core/a;

.field private d:Lcom/avast/android/mobilesecurity/app/firewall/a/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/avast/android/generic/ui/widget/CheckBoxRow;Lcom/avast/android/mobilesecurity/app/firewall/a/b;Lcom/avast/android/mobilesecurity/app/firewall/core/a;Lcom/avast/android/mobilesecurity/app/firewall/a/a;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/avast/android/generic/d/c;-><init>(Landroid/content/Context;)V

    .line 32
    iput-object p2, p0, Lcom/avast/android/mobilesecurity/app/firewall/a/e;->a:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    .line 33
    iput-object p3, p0, Lcom/avast/android/mobilesecurity/app/firewall/a/e;->b:Lcom/avast/android/mobilesecurity/app/firewall/a/b;

    .line 34
    iput-object p4, p0, Lcom/avast/android/mobilesecurity/app/firewall/a/e;->c:Lcom/avast/android/mobilesecurity/app/firewall/core/a;

    .line 35
    iput-object p5, p0, Lcom/avast/android/mobilesecurity/app/firewall/a/e;->d:Lcom/avast/android/mobilesecurity/app/firewall/a/a;

    .line 36
    return-void
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/app/firewall/a/e;)Lcom/avast/android/generic/ui/widget/CheckBoxRow;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/a/e;->a:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    return-object v0
.end method

.method static synthetic b(Lcom/avast/android/mobilesecurity/app/firewall/a/e;)Lcom/avast/android/mobilesecurity/app/firewall/a/b;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/a/e;->b:Lcom/avast/android/mobilesecurity/app/firewall/a/b;

    return-object v0
.end method

.method static synthetic c(Lcom/avast/android/mobilesecurity/app/firewall/a/e;)Lcom/avast/android/mobilesecurity/app/firewall/a/a;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/a/e;->d:Lcom/avast/android/mobilesecurity/app/firewall/a/a;

    return-object v0
.end method

.method private c()V
    .locals 7

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/firewall/a/e;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/firewall/a/e;->b()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c031d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v2

    .line 85
    new-instance v5, Lcom/avast/android/mobilesecurity/app/firewall/a/f;

    invoke-direct {v5, p0}, Lcom/avast/android/mobilesecurity/app/firewall/a/f;-><init>(Lcom/avast/android/mobilesecurity/app/firewall/a/e;)V

    .line 110
    new-instance v3, Lcom/avast/android/mobilesecurity/app/firewall/a/g;

    invoke-direct {v3, p0}, Lcom/avast/android/mobilesecurity/app/firewall/a/g;-><init>(Lcom/avast/android/mobilesecurity/app/firewall/a/e;)V

    .line 115
    new-instance v4, Lcom/avast/android/mobilesecurity/app/firewall/a/h;

    invoke-direct {v4, p0}, Lcom/avast/android/mobilesecurity/app/firewall/a/h;-><init>(Lcom/avast/android/mobilesecurity/app/firewall/a/e;)V

    .line 121
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/avast/android/mobilesecurity/app/firewall/a/i;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/avast/android/mobilesecurity/app/firewall/a/i;-><init>(Lcom/avast/android/mobilesecurity/app/firewall/a/e;Landroid/app/ProgressDialog;Landroid/os/Handler;Landroid/os/Handler;Landroid/os/Handler;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 161
    return-void
.end method

.method static synthetic d(Lcom/avast/android/mobilesecurity/app/firewall/a/e;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/firewall/a/e;->b()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private d()V
    .locals 5

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/firewall/a/e;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/firewall/a/e;->b()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c0322

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 167
    new-instance v1, Lcom/avast/android/mobilesecurity/app/firewall/a/j;

    invoke-direct {v1, p0}, Lcom/avast/android/mobilesecurity/app/firewall/a/j;-><init>(Lcom/avast/android/mobilesecurity/app/firewall/a/e;)V

    .line 191
    new-instance v2, Lcom/avast/android/mobilesecurity/app/firewall/a/k;

    invoke-direct {v2, p0}, Lcom/avast/android/mobilesecurity/app/firewall/a/k;-><init>(Lcom/avast/android/mobilesecurity/app/firewall/a/e;)V

    .line 197
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/avast/android/mobilesecurity/app/firewall/a/l;

    invoke-direct {v4, p0, v0, v2, v1}, Lcom/avast/android/mobilesecurity/app/firewall/a/l;-><init>(Lcom/avast/android/mobilesecurity/app/firewall/a/e;Landroid/app/ProgressDialog;Landroid/os/Handler;Landroid/os/Handler;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 233
    return-void
.end method

.method static synthetic e(Lcom/avast/android/mobilesecurity/app/firewall/a/e;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/firewall/a/e;->b()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f(Lcom/avast/android/mobilesecurity/app/firewall/a/e;)Lcom/avast/android/mobilesecurity/app/firewall/core/a;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/a/e;->c:Lcom/avast/android/mobilesecurity/app/firewall/core/a;

    return-object v0
.end method

.method static synthetic g(Lcom/avast/android/mobilesecurity/app/firewall/a/e;)Lcom/avast/android/generic/ae;
    .locals 1
    .parameter

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/firewall/a/e;->a()Lcom/avast/android/generic/ae;

    move-result-object v0

    return-object v0
.end method

.method static synthetic h(Lcom/avast/android/mobilesecurity/app/firewall/a/e;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/firewall/a/e;->b()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic i(Lcom/avast/android/mobilesecurity/app/firewall/a/e;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/firewall/a/e;->b()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic j(Lcom/avast/android/mobilesecurity/app/firewall/a/e;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/firewall/a/e;->b()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic k(Lcom/avast/android/mobilesecurity/app/firewall/a/e;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/firewall/a/e;->b()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic l(Lcom/avast/android/mobilesecurity/app/firewall/a/e;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/firewall/a/e;->b()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic m(Lcom/avast/android/mobilesecurity/app/firewall/a/e;)Lcom/avast/android/generic/ae;
    .locals 1
    .parameter

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/firewall/a/e;->a()Lcom/avast/android/generic/ae;

    move-result-object v0

    return-object v0
.end method

.method static synthetic n(Lcom/avast/android/mobilesecurity/app/firewall/a/e;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/firewall/a/e;->b()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic o(Lcom/avast/android/mobilesecurity/app/firewall/a/e;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/firewall/a/e;->b()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Z)Z
    .locals 10
    .parameter
    .parameter

    .prologue
    const-wide/16 v8, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 40
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/firewall/a/e;->a()Lcom/avast/android/generic/ae;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->X()Z

    move-result v0

    .line 41
    if-ne v0, p2, :cond_0

    move v0, v1

    .line 68
    :goto_0
    return v0

    .line 48
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/firewall/a/e;->a:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    invoke-virtual {v3, v0}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->b(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 53
    :goto_1
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FirewallEnableRowDAO: Changing enabled status to: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 54
    if-eqz p2, :cond_2

    .line 55
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/firewall/a/e;->c()V

    :cond_1
    :goto_2
    move v0, v2

    .line 68
    goto :goto_0

    .line 57
    :cond_2
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/firewall/a/e;->d()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 59
    :catch_0
    move-exception v0

    .line 60
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FirewallEnableRowDAO: Error in setting status to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 61
    invoke-static {}, Lcom/avast/android/generic/util/ga/a;->a()Lcom/google/analytics/tracking/android/bo;

    move-result-object v3

    const-string v4, "ms-Firewall"

    const-string v5, "operation"

    const-string v6, "failed"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v3, v4, v5, v6, v7}, Lcom/google/analytics/tracking/android/bo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 62
    invoke-static {}, Lcom/avast/android/generic/util/ga/a;->a()Lcom/google/analytics/tracking/android/bo;

    move-result-object v3

    const-string v4, "ms-Firewall"

    const-string v5, "failedReason"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v3, v4, v5, v6, v7}, Lcom/google/analytics/tracking/android/bo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 64
    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/firewall/a/e;->c:Lcom/avast/android/mobilesecurity/app/firewall/core/a;

    if-eqz v3, :cond_1

    .line 65
    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/firewall/a/e;->c:Lcom/avast/android/mobilesecurity/app/firewall/core/a;

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/firewall/a/e;->b()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0c0324

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/firewall/a/e;->b()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v0}, Lcom/avast/android/generic/util/q;->a(Landroid/content/Context;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-virtual {v4, v5, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/avast/android/mobilesecurity/app/firewall/core/a;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 49
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public b(Ljava/lang/String;Z)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 78
    invoke-super {p0, p1, p2}, Lcom/avast/android/generic/d/c;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
