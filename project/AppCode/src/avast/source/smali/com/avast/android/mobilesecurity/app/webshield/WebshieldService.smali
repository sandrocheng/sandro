.class public Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;
.super Landroid/app/Service;
.source "WebshieldService.java"


# static fields
.field static a:Ljava/util/Set;

.field private static final b:Ljava/util/Map;

.field private static final o:Ljava/util/concurrent/ConcurrentMap;


# instance fields
.field private c:Lcom/avast/android/mobilesecurity/t;

.field private d:Lcom/avast/android/generic/notification/j;

.field private e:Z

.field private f:Lcom/avast/android/mobilesecurity/app/webshield/o;

.field private g:Lcom/avast/android/mobilesecurity/app/webshield/o;

.field private h:Lcom/avast/android/mobilesecurity/app/webshield/o;

.field private i:Lcom/avast/android/mobilesecurity/app/webshield/o;

.field private j:Lcom/avast/android/mobilesecurity/app/webshield/o;

.field private k:Lcom/avast/android/mobilesecurity/app/webshield/o;

.field private l:Ljava/util/Date;

.field private m:Landroid/os/Looper;

.field private n:Lcom/avast/android/mobilesecurity/app/webshield/m;

.field private p:Lcom/avast/android/mobilesecurity/app/account/e;

.field private q:Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 339
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->b:Ljava/util/Map;

    .line 366
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->a:Ljava/util/Set;

    .line 368
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->o:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private a()Lcom/avast/android/mobilesecurity/app/webshield/n;
    .locals 4

    .prologue
    .line 649
    sget-object v0, Lcom/avast/android/mobilesecurity/app/webshield/n;->a:Lcom/avast/android/mobilesecurity/app/webshield/n;

    .line 650
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "http://avast.com"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 652
    sget-object v2, Lcom/avast/android/mobilesecurity/app/webshield/n;->b:Lcom/avast/android/mobilesecurity/app/webshield/n;

    invoke-virtual {v2}, Lcom/avast/android/mobilesecurity/app/webshield/n;->a()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/avast/android/mobilesecurity/app/webshield/n;->b:Lcom/avast/android/mobilesecurity/app/webshield/n;

    invoke-virtual {v3}, Lcom/avast/android/mobilesecurity/app/webshield/n;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 655
    invoke-direct {p0, v1}, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->b(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 656
    sget-object v0, Lcom/avast/android/mobilesecurity/app/webshield/n;->b:Lcom/avast/android/mobilesecurity/app/webshield/n;

    .line 658
    :cond_0
    return-object v0
.end method

.method public static declared-synchronized a(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/engine/ah;
    .locals 2
    .parameter

    .prologue
    .line 1160
    const-class v1, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/engine/ah;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 374
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 375
    const-string v1, "restart"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 376
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 377
    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 3
    .parameter

    .prologue
    .line 986
    invoke-direct {p0, p1}, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->b(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 988
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 994
    :cond_0
    :goto_0
    return-void

    .line 989
    :catch_0
    move-exception v0

    .line 990
    invoke-static {}, La/a/a/a/a/a;->a()La/a/a/a/a/a;

    move-result-object v1

    const-string v2, "Can\'t start browser activity."

    invoke-virtual {v1, v2, v0}, La/a/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(Landroid/net/Uri;Lcom/avast/android/mobilesecurity/app/webshield/n;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 971
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "redirecting browser to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 972
    invoke-virtual {p2, p1}, Lcom/avast/android/mobilesecurity/app/webshield/n;->a(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 973
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending redirect intent to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 975
    invoke-direct {p0, v0}, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->a(Landroid/content/Intent;)V

    .line 976
    return-void
.end method

.method private a(Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;Ljava/lang/String;Lcom/avast/android/mobilesecurity/engine/ak;)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 927
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->q:Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;

    invoke-virtual {p3}, Lcom/avast/android/mobilesecurity/engine/ak;->a()I

    move-result v1

    int-to-long v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object v1, p1

    move-object v3, p2

    move-object v4, v2

    move-object v5, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;->a(Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 929
    return-void
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;Ljava/lang/String;Lcom/avast/android/mobilesecurity/app/webshield/n;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->a(Ljava/lang/String;Lcom/avast/android/mobilesecurity/app/webshield/n;)V

    return-void
.end method

.method private a(Lcom/avast/android/mobilesecurity/app/webshield/n;)V
    .locals 3
    .parameter

    .prologue
    .line 1001
    invoke-virtual {p1}, Lcom/avast/android/mobilesecurity/app/webshield/n;->i()Landroid/content/Intent;

    move-result-object v0

    .line 1002
    invoke-direct {p0, v0}, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->b(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1003
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending block intent to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 1005
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1012
    :cond_0
    :goto_0
    return-void

    .line 1007
    :cond_1
    sget-object v0, Lcom/avast/android/mobilesecurity/app/webshield/n;->a:Lcom/avast/android/mobilesecurity/app/webshield/n;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/webshield/n;->i()Landroid/content/Intent;

    move-result-object v0

    .line 1008
    invoke-direct {p0, v0}, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->b(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1009
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static declared-synchronized a(Lcom/avast/android/mobilesecurity/engine/ah;)V
    .locals 3
    .parameter

    .prologue
    .line 1181
    const-class v1, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->b:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/ah;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1182
    monitor-exit v1

    return-void

    .line 1181
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Ljava/lang/String;Lcom/avast/android/mobilesecurity/app/webshield/n;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 830
    sget-object v0, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 913
    :cond_0
    :goto_0
    return-void

    .line 834
    :cond_1
    invoke-static {p0, v5, p1}, Lcom/avast/android/mobilesecurity/engine/i;->a(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 836
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/ah;

    sget-object v3, Lcom/avast/android/mobilesecurity/engine/ak;->d:Lcom/avast/android/mobilesecurity/engine/ak;

    invoke-direct {v0, v3}, Lcom/avast/android/mobilesecurity/engine/ah;-><init>(Lcom/avast/android/mobilesecurity/engine/ak;)V

    .line 838
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 839
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/engine/ah;

    :cond_2
    move-object v3, v2

    move v2, v1

    .line 843
    :goto_1
    const/4 v4, 0x2

    if-ge v2, v4, :cond_4

    iget-object v4, v0, Lcom/avast/android/mobilesecurity/engine/ah;->a:Lcom/avast/android/mobilesecurity/engine/ak;

    sget-object v6, Lcom/avast/android/mobilesecurity/engine/ak;->d:Lcom/avast/android/mobilesecurity/engine/ak;

    invoke-virtual {v4, v6}, Lcom/avast/android/mobilesecurity/engine/ak;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 846
    invoke-static {p0, v5, p1}, Lcom/avast/android/mobilesecurity/engine/i;->a(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 848
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/ah;

    sget-object v4, Lcom/avast/android/mobilesecurity/engine/ak;->d:Lcom/avast/android/mobilesecurity/engine/ak;

    invoke-direct {v0, v4}, Lcom/avast/android/mobilesecurity/engine/ah;-><init>(Lcom/avast/android/mobilesecurity/engine/ak;)V

    .line 850
    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 852
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/engine/ah;

    .line 844
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 856
    :cond_4
    invoke-static {v3}, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->a(Ljava/util/List;)V

    .line 858
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->c:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v2}, Lcom/avast/android/mobilesecurity/t;->aA()V

    .line 859
    sget-object v2, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->F:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    iget-object v4, v0, Lcom/avast/android/mobilesecurity/engine/ah;->a:Lcom/avast/android/mobilesecurity/engine/ak;

    invoke-direct {p0, v2, p1, v4}, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->a(Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;Ljava/lang/String;Lcom/avast/android/mobilesecurity/engine/ak;)V

    .line 863
    iget-object v2, v0, Lcom/avast/android/mobilesecurity/engine/ah;->a:Lcom/avast/android/mobilesecurity/engine/ak;

    sget-object v4, Lcom/avast/android/mobilesecurity/engine/ak;->a:Lcom/avast/android/mobilesecurity/engine/ak;

    invoke-virtual {v2, v4}, Lcom/avast/android/mobilesecurity/engine/ak;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, v0, Lcom/avast/android/mobilesecurity/engine/ah;->a:Lcom/avast/android/mobilesecurity/engine/ak;

    sget-object v4, Lcom/avast/android/mobilesecurity/engine/ak;->d:Lcom/avast/android/mobilesecurity/engine/ak;

    invoke-virtual {v2, v4}, Lcom/avast/android/mobilesecurity/engine/ak;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 866
    :cond_5
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->p:Lcom/avast/android/mobilesecurity/app/account/e;

    sget-object v2, Lcom/avast/android/generic/internet/c/a/av;->c:Lcom/avast/android/generic/internet/c/a/av;

    invoke-virtual {v0, v1, v7, v2}, Lcom/avast/android/mobilesecurity/app/account/e;->a(IILcom/avast/android/generic/internet/c/a/av;)V

    goto :goto_0

    .line 869
    :cond_6
    iget-object v2, v0, Lcom/avast/android/mobilesecurity/engine/ah;->a:Lcom/avast/android/mobilesecurity/engine/ak;

    sget-object v4, Lcom/avast/android/mobilesecurity/engine/ak;->f:Lcom/avast/android/mobilesecurity/engine/ak;

    invoke-virtual {v2, v4}, Lcom/avast/android/mobilesecurity/engine/ak;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 871
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->p:Lcom/avast/android/mobilesecurity/app/account/e;

    sget-object v3, Lcom/avast/android/generic/internet/c/a/av;->c:Lcom/avast/android/generic/internet/c/a/av;

    invoke-virtual {v2, v1, v7, v3}, Lcom/avast/android/mobilesecurity/app/account/e;->a(IILcom/avast/android/generic/internet/c/a/av;)V

    .line 873
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->c:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/t;->V()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 874
    const-string v1, "about:blank"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->a(Landroid/net/Uri;Lcom/avast/android/mobilesecurity/app/webshield/n;)V

    .line 875
    sget-object v1, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->G:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    iget-object v2, v0, Lcom/avast/android/mobilesecurity/engine/ah;->a:Lcom/avast/android/mobilesecurity/engine/ak;

    invoke-direct {p0, v1, p1, v2}, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->a(Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;Ljava/lang/String;Lcom/avast/android/mobilesecurity/engine/ak;)V

    .line 878
    invoke-direct {p0, p1, v0, p2}, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->a(Ljava/lang/String;Lcom/avast/android/mobilesecurity/engine/ah;Lcom/avast/android/mobilesecurity/app/webshield/n;)V

    goto/16 :goto_0

    .line 883
    :cond_7
    iget-object v2, v0, Lcom/avast/android/mobilesecurity/engine/ah;->a:Lcom/avast/android/mobilesecurity/engine/ak;

    sget-object v4, Lcom/avast/android/mobilesecurity/engine/ak;->c:Lcom/avast/android/mobilesecurity/engine/ak;

    invoke-virtual {v2, v4}, Lcom/avast/android/mobilesecurity/engine/ak;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->c:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v2}, Lcom/avast/android/mobilesecurity/t;->T()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_8
    iget-object v2, v0, Lcom/avast/android/mobilesecurity/engine/ah;->a:Lcom/avast/android/mobilesecurity/engine/ak;

    sget-object v4, Lcom/avast/android/mobilesecurity/engine/ak;->b:Lcom/avast/android/mobilesecurity/engine/ak;

    invoke-virtual {v2, v4}, Lcom/avast/android/mobilesecurity/engine/ak;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, v0, Lcom/avast/android/mobilesecurity/engine/ah;->a:Lcom/avast/android/mobilesecurity/engine/ak;

    sget-object v4, Lcom/avast/android/mobilesecurity/engine/ak;->e:Lcom/avast/android/mobilesecurity/engine/ak;

    invoke-virtual {v2, v4}, Lcom/avast/android/mobilesecurity/engine/ak;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_9
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->c:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v2}, Lcom/avast/android/mobilesecurity/t;->U()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 891
    :cond_a
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->p:Lcom/avast/android/mobilesecurity/app/account/e;

    sget-object v4, Lcom/avast/android/generic/internet/c/a/av;->c:Lcom/avast/android/generic/internet/c/a/av;

    invoke-virtual {v2, v7, v7, v4}, Lcom/avast/android/mobilesecurity/app/account/e;->a(IILcom/avast/android/generic/internet/c/a/av;)V

    .line 893
    invoke-direct {p0, p1, v0}, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->a(Ljava/lang/String;Lcom/avast/android/mobilesecurity/engine/ah;)V

    .line 894
    sget-object v2, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->G:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/engine/ah;->a:Lcom/avast/android/mobilesecurity/engine/ak;

    invoke-direct {p0, v2, p1, v0}, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->a(Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;Ljava/lang/String;Lcom/avast/android/mobilesecurity/engine/ak;)V

    .line 899
    invoke-virtual {p2}, Lcom/avast/android/mobilesecurity/app/webshield/n;->h()I

    move-result v2

    move v0, v1

    .line 900
    :goto_2
    if-ge v0, v2, :cond_b

    .line 901
    invoke-direct {p0, p2}, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->a(Lcom/avast/android/mobilesecurity/app/webshield/n;)V

    .line 900
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 906
    :cond_b
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 907
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/engine/ah;

    .line 908
    iget-object v0, v0, Lcom/avast/android/mobilesecurity/engine/ah;->a:Lcom/avast/android/mobilesecurity/engine/ak;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 910
    :cond_c
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/high16 v4, 0x1000

    move-object v0, p0

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldActivity;->call(Landroid/content/Context;Landroid/net/Uri;Ljava/util/List;Lcom/avast/android/mobilesecurity/app/webshield/n;ILjava/lang/String;)V

    goto/16 :goto_0
.end method

.method private a(Ljava/lang/String;Lcom/avast/android/mobilesecurity/engine/ah;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1025
    sget-object v0, Lcom/avast/android/mobilesecurity/app/webshield/l;->a:[I

    iget-object v1, p2, Lcom/avast/android/mobilesecurity/engine/ah;->a:Lcom/avast/android/mobilesecurity/engine/ak;

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/engine/ak;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1036
    const v0, 0x7f0c0301

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1039
    :goto_0
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->p:Lcom/avast/android/mobilesecurity/app/account/e;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/avast/android/generic/internet/c/a/av;->c:Lcom/avast/android/generic/internet/c/a/av;

    invoke-virtual {v1, v2, v0, v3}, Lcom/avast/android/mobilesecurity/app/account/e;->a(Landroid/net/Uri;Ljava/lang/String;Lcom/avast/android/generic/internet/c/a/av;)V

    .line 1041
    return-void

    .line 1027
    :pswitch_0
    const v0, 0x7f0c02ff

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1030
    :pswitch_1
    const v0, 0x7f0c0300

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1033
    :pswitch_2
    const v0, 0x7f0c0302

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1025
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(Ljava/lang/String;Lcom/avast/android/mobilesecurity/engine/ah;Lcom/avast/android/mobilesecurity/app/webshield/n;)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 944
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->c:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->W()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v5, v4

    .line 945
    invoke-static/range {v0 .. v5}, Lcom/avast/android/mobilesecurity/engine/i;->a(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/String;Lcom/avast/android/mobilesecurity/engine/ah;ZZ)V

    .line 947
    iget-object v0, p2, Lcom/avast/android/mobilesecurity/engine/ah;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->a(Landroid/net/Uri;Lcom/avast/android/mobilesecurity/app/webshield/n;)V

    .line 948
    const v0, 0x7f0c0406

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v6

    invoke-virtual {p0, v0, v1}, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 951
    sget-object v0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->H:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    iget-object v1, p2, Lcom/avast/android/mobilesecurity/engine/ah;->c:Ljava/lang/String;

    iget-object v2, p2, Lcom/avast/android/mobilesecurity/engine/ah;->a:Lcom/avast/android/mobilesecurity/engine/ak;

    invoke-direct {p0, v0, v1, v2}, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->a(Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;Ljava/lang/String;Lcom/avast/android/mobilesecurity/engine/ak;)V

    .line 960
    :goto_0
    return-void

    .line 955
    :cond_0
    invoke-static {p2}, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->a(Lcom/avast/android/mobilesecurity/engine/ah;)V

    .line 956
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p2}, Lcom/avast/android/mobilesecurity/engine/ah;->b()Ljava/lang/String;

    move-result-object v4

    const/high16 v6, 0x1000

    move-object v2, p0

    move-object v5, p3

    move-object v7, v1

    invoke-static/range {v2 .. v7}, Lcom/avast/android/mobilesecurity/app/webshield/SiteCorrectActivity;->call(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Lcom/avast/android/mobilesecurity/app/webshield/n;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Ljava/util/List;)V
    .locals 1
    .parameter

    .prologue
    .line 1052
    new-instance v0, Lcom/avast/android/mobilesecurity/app/webshield/k;

    invoke-direct {v0}, Lcom/avast/android/mobilesecurity/app/webshield/k;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1089
    return-void
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;)Z
    .locals 1
    .parameter

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->b()Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;)Ljava/util/Date;
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->l:Ljava/util/Date;

    return-object v0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 380
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 381
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 382
    return-void
.end method

.method public static declared-synchronized b(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 1170
    const-class v1, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1171
    monitor-exit v1

    return-void

    .line 1170
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b()Z
    .locals 1

    .prologue
    .line 1104
    const-string v0, "fwd.html"

    invoke-direct {p0, v0}, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "block.html"

    invoke-direct {p0, v0}, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "bg_web.png"

    invoke-direct {p0, v0}, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "logo.png"

    invoke-direct {p0, v0}, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ic_scanner_result_problem.png"

    invoke-direct {p0, v0}, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Landroid/content/Intent;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1095
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 1096
    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method static synthetic c(Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;)Lcom/avast/android/mobilesecurity/app/webshield/m;
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->n:Lcom/avast/android/mobilesecurity/app/webshield/m;

    return-object v0
.end method

.method private c(Ljava/lang/String;)Z
    .locals 7
    .parameter
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WorldReadableFiles"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1114
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    .line 1116
    :try_start_0
    invoke-virtual {v2, p1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 1134
    :goto_0
    return v0

    .line 1119
    :cond_0
    invoke-virtual {v2, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 1120
    const/4 v3, 0x1

    invoke-virtual {p0, p1, v3}, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    .line 1122
    const/16 v4, 0x400

    new-array v4, v4, [B

    .line 1125
    :goto_1
    invoke-virtual {v2, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-ltz v5, :cond_1

    .line 1126
    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v5}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_1

    .line 1131
    :catch_0
    move-exception v1

    goto :goto_0

    .line 1128
    :cond_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 1129
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 1130
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 1134
    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter

    .prologue
    .line 663
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 386
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 388
    const-class v0, Lcom/avast/android/mobilesecurity/t;

    invoke-static {p0, v0}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/t;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->c:Lcom/avast/android/mobilesecurity/t;

    .line 389
    const-class v0, Lcom/avast/android/generic/notification/j;

    invoke-static {p0, v0}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/notification/j;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->d:Lcom/avast/android/generic/notification/j;

    .line 392
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "WebshieldService[helper]"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 394
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 395
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->m:Landroid/os/Looper;

    .line 396
    new-instance v0, Lcom/avast/android/mobilesecurity/app/webshield/m;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->m:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/avast/android/mobilesecurity/app/webshield/m;-><init>(Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->n:Lcom/avast/android/mobilesecurity/app/webshield/m;

    .line 398
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->n:Lcom/avast/android/mobilesecurity/app/webshield/m;

    new-instance v1, Lcom/avast/android/mobilesecurity/app/webshield/j;

    invoke-direct {v1, p0}, Lcom/avast/android/mobilesecurity/app/webshield/j;-><init>(Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;)V

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/app/webshield/m;->post(Ljava/lang/Runnable;)Z

    .line 416
    invoke-static {p0}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;->a(Landroid/content/Context;)Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->q:Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;

    .line 418
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->l:Ljava/util/Date;

    .line 419
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 423
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->d:Lcom/avast/android/generic/notification/j;

    invoke-virtual {v0, p0, v2}, Lcom/avast/android/generic/notification/j;->b(Landroid/app/Service;Lcom/avast/android/generic/notification/a;)V

    .line 424
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->f:Lcom/avast/android/mobilesecurity/app/webshield/o;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->e:Z

    if-eqz v0, :cond_0

    .line 425
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->f:Lcom/avast/android/mobilesecurity/app/webshield/o;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 426
    iput-object v2, p0, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->f:Lcom/avast/android/mobilesecurity/app/webshield/o;

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->i:Lcom/avast/android/mobilesecurity/app/webshield/o;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->e:Z

    if-eqz v0, :cond_1

    .line 429
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->i:Lcom/avast/android/mobilesecurity/app/webshield/o;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 431
    iput-object v2, p0, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->i:Lcom/avast/android/mobilesecurity/app/webshield/o;

    .line 433
    :cond_1
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->h:Lcom/avast/android/mobilesecurity/app/webshield/o;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->e:Z

    if-eqz v0, :cond_2

    .line 434
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->h:Lcom/avast/android/mobilesecurity/app/webshield/o;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 436
    iput-object v2, p0, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->h:Lcom/avast/android/mobilesecurity/app/webshield/o;

    .line 439
    :cond_2
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->g:Lcom/avast/android/mobilesecurity/app/webshield/o;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->e:Z

    if-eqz v0, :cond_3

    .line 440
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->g:Lcom/avast/android/mobilesecurity/app/webshield/o;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 442
    iput-object v2, p0, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->g:Lcom/avast/android/mobilesecurity/app/webshield/o;

    .line 445
    :cond_3
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->j:Lcom/avast/android/mobilesecurity/app/webshield/o;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->e:Z

    if-eqz v0, :cond_4

    .line 446
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->j:Lcom/avast/android/mobilesecurity/app/webshield/o;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 448
    iput-object v2, p0, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->j:Lcom/avast/android/mobilesecurity/app/webshield/o;

    .line 451
    :cond_4
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->k:Lcom/avast/android/mobilesecurity/app/webshield/o;

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->e:Z

    if-eqz v0, :cond_5

    .line 452
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->k:Lcom/avast/android/mobilesecurity/app/webshield/o;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 454
    iput-object v2, p0, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->k:Lcom/avast/android/mobilesecurity/app/webshield/o;

    .line 457
    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->e:Z

    .line 458
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->m:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 459
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 460
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x1

    .line 464
    if-eqz p1, :cond_1

    const-string v0, "restart"

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 465
    const-string v0, "Restarting WebshieldService"

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 466
    invoke-virtual {p0, p3}, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->stopSelf(I)V

    .line 467
    invoke-static {p0}, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->b(Landroid/content/Context;)V

    .line 640
    :cond_0
    :goto_0
    return v8

    .line 471
    :cond_1
    if-eqz p1, :cond_3

    const-string v0, "redirect_browser"

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 473
    sget-object v0, Lcom/avast/android/mobilesecurity/app/webshield/n;->e:Lcom/avast/android/mobilesecurity/app/webshield/n;

    const-string v1, "browser_type"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/avast/android/mobilesecurity/app/webshield/n;->a(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/app/webshield/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/app/webshield/n;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 475
    const-class v0, Lcom/avast/android/mobilesecurity/app/webshield/DolphinWebshieldService;

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 476
    invoke-virtual {p0, p1}, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 479
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "browser_type"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/avast/android/mobilesecurity/app/webshield/n;->a(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/app/webshield/n;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->a(Landroid/net/Uri;Lcom/avast/android/mobilesecurity/app/webshield/n;)V

    goto :goto_0

    .line 485
    :cond_3
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->c:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->S()Z

    move-result v1

    .line 487
    if-eqz v1, :cond_4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v0, v2, :cond_4

    .line 492
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 493
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 494
    const/high16 v3, 0x800

    invoke-static {p0, v4, v2, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 496
    const/4 v3, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {p0}, Lcom/avast/android/mobilesecurity/receiver/ExternalPowerReceiver;->a(Landroid/content/Context;)I

    move-result v6

    mul-int/lit16 v6, v6, 0x1f40

    int-to-long v6, v6

    add-long/2addr v4, v6

    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 504
    :cond_4
    if-eqz v1, :cond_6

    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->e:Z

    if-nez v0, :cond_6

    .line 505
    new-instance v0, Lcom/avast/android/mobilesecurity/app/webshield/o;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->a()Lcom/avast/android/mobilesecurity/app/webshield/n;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/avast/android/mobilesecurity/app/webshield/o;-><init>(Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;Landroid/os/Handler;Lcom/avast/android/mobilesecurity/app/webshield/n;)V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->f:Lcom/avast/android/mobilesecurity/app/webshield/o;

    .line 507
    new-instance v0, Lcom/avast/android/mobilesecurity/app/webshield/o;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    sget-object v2, Lcom/avast/android/mobilesecurity/app/webshield/n;->f:Lcom/avast/android/mobilesecurity/app/webshield/n;

    invoke-direct {v0, p0, v1, v2}, Lcom/avast/android/mobilesecurity/app/webshield/o;-><init>(Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;Landroid/os/Handler;Lcom/avast/android/mobilesecurity/app/webshield/n;)V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->h:Lcom/avast/android/mobilesecurity/app/webshield/o;

    .line 509
    new-instance v0, Lcom/avast/android/mobilesecurity/app/webshield/o;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    sget-object v2, Lcom/avast/android/mobilesecurity/app/webshield/n;->c:Lcom/avast/android/mobilesecurity/app/webshield/n;

    invoke-direct {v0, p0, v1, v2}, Lcom/avast/android/mobilesecurity/app/webshield/o;-><init>(Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;Landroid/os/Handler;Lcom/avast/android/mobilesecurity/app/webshield/n;)V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->i:Lcom/avast/android/mobilesecurity/app/webshield/o;

    .line 511
    new-instance v0, Lcom/avast/android/mobilesecurity/app/webshield/o;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    sget-object v2, Lcom/avast/android/mobilesecurity/app/webshield/n;->d:Lcom/avast/android/mobilesecurity/app/webshield/n;

    invoke-direct {v0, p0, v1, v2}, Lcom/avast/android/mobilesecurity/app/webshield/o;-><init>(Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;Landroid/os/Handler;Lcom/avast/android/mobilesecurity/app/webshield/n;)V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->g:Lcom/avast/android/mobilesecurity/app/webshield/o;

    .line 513
    new-instance v0, Lcom/avast/android/mobilesecurity/app/webshield/o;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    sget-object v2, Lcom/avast/android/mobilesecurity/app/webshield/n;->g:Lcom/avast/android/mobilesecurity/app/webshield/n;

    invoke-direct {v0, p0, v1, v2}, Lcom/avast/android/mobilesecurity/app/webshield/o;-><init>(Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;Landroid/os/Handler;Lcom/avast/android/mobilesecurity/app/webshield/n;)V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->j:Lcom/avast/android/mobilesecurity/app/webshield/o;

    .line 515
    new-instance v0, Lcom/avast/android/mobilesecurity/app/webshield/o;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    sget-object v2, Lcom/avast/android/mobilesecurity/app/webshield/n;->h:Lcom/avast/android/mobilesecurity/app/webshield/n;

    invoke-direct {v0, p0, v1, v2}, Lcom/avast/android/mobilesecurity/app/webshield/o;-><init>(Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;Landroid/os/Handler;Lcom/avast/android/mobilesecurity/app/webshield/n;)V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->k:Lcom/avast/android/mobilesecurity/app/webshield/o;

    .line 518
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/avast/android/mobilesecurity/app/webshield/n;->a:Lcom/avast/android/mobilesecurity/app/webshield/n;

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/app/webshield/n;->b()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->f:Lcom/avast/android/mobilesecurity/app/webshield/o;

    invoke-virtual {v0, v1, v8, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 521
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/avast/android/mobilesecurity/app/webshield/n;->f:Lcom/avast/android/mobilesecurity/app/webshield/n;

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/app/webshield/n;->b()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->h:Lcom/avast/android/mobilesecurity/app/webshield/o;

    invoke-virtual {v0, v1, v8, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 524
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/avast/android/mobilesecurity/app/webshield/n;->c:Lcom/avast/android/mobilesecurity/app/webshield/n;

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/app/webshield/n;->b()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->i:Lcom/avast/android/mobilesecurity/app/webshield/o;

    invoke-virtual {v0, v1, v8, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 527
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/avast/android/mobilesecurity/app/webshield/n;->d:Lcom/avast/android/mobilesecurity/app/webshield/n;

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/app/webshield/n;->b()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->g:Lcom/avast/android/mobilesecurity/app/webshield/o;

    invoke-virtual {v0, v1, v8, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 530
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/avast/android/mobilesecurity/app/webshield/n;->g:Lcom/avast/android/mobilesecurity/app/webshield/n;

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/app/webshield/n;->b()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->j:Lcom/avast/android/mobilesecurity/app/webshield/o;

    invoke-virtual {v0, v1, v8, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 533
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/avast/android/mobilesecurity/app/webshield/n;->h:Lcom/avast/android/mobilesecurity/app/webshield/n;

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/app/webshield/n;->b()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->k:Lcom/avast/android/mobilesecurity/app/webshield/o;

    invoke-virtual {v0, v1, v8, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 537
    new-instance v0, Lcom/avast/android/mobilesecurity/app/account/e;

    invoke-direct {v0, p0}, Lcom/avast/android/mobilesecurity/app/account/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->p:Lcom/avast/android/mobilesecurity/app/account/e;

    .line 539
    iput-boolean v8, p0, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->e:Z

    .line 540
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->c:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->Q()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 543
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->d:Lcom/avast/android/generic/notification/j;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/avast/android/generic/notification/j;->a(Landroid/app/Service;Lcom/avast/android/generic/notification/a;)V

    .line 616
    :cond_5
    const-string v0, "WebshieldService started"

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    goto/16 :goto_0

    .line 617
    :cond_6
    if-nez v1, :cond_7

    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->e:Z

    if-eqz v0, :cond_7

    .line 634
    invoke-virtual {p0, p3}, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->stopSelf(I)V

    .line 635
    const-string v0, "WebshieldService stopped"

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    goto/16 :goto_0

    .line 636
    :cond_7
    if-nez v1, :cond_0

    .line 638
    invoke-virtual {p0, p3}, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->stopSelf(I)V

    goto/16 :goto_0
.end method
