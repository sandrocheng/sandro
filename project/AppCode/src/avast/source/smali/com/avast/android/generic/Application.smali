.class public Lcom/avast/android/generic/Application;
.super Landroid/app/Application;
.source "Application.java"


# static fields
.field private static a:Z

.field private static b:Z

.field private static c:Z

.field private static d:Ljava/lang/String;

.field private static e:Z

.field private static h:Ljava/util/Set;


# instance fields
.field private f:Z

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 18
    sput-boolean v1, Lcom/avast/android/generic/Application;->a:Z

    .line 19
    sput-boolean v1, Lcom/avast/android/generic/Application;->b:Z

    .line 20
    sput-boolean v1, Lcom/avast/android/generic/Application;->c:Z

    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/avast/android/generic/Application;->d:Ljava/lang/String;

    .line 22
    sput-boolean v1, Lcom/avast/android/generic/Application;->e:Z

    .line 26
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/avast/android/generic/Application;->h:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avast/android/generic/Application;->f:Z

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/avast/android/generic/Application;->g:I

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 129
    sput-object p0, Lcom/avast/android/generic/Application;->d:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public static a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 105
    sput-boolean p0, Lcom/avast/android/generic/Application;->a:Z

    .line 106
    return-void
.end method

.method public static b(Z)V
    .locals 0
    .parameter

    .prologue
    .line 113
    sput-boolean p0, Lcom/avast/android/generic/Application;->b:Z

    .line 114
    return-void
.end method

.method public static c(Z)V
    .locals 0
    .parameter

    .prologue
    .line 121
    sput-boolean p0, Lcom/avast/android/generic/Application;->c:Z

    .line 122
    return-void
.end method

.method public static c()Z
    .locals 1

    .prologue
    .line 109
    sget-boolean v0, Lcom/avast/android/generic/Application;->a:Z

    return v0
.end method

.method public static d()Z
    .locals 1

    .prologue
    .line 117
    sget-boolean v0, Lcom/avast/android/generic/Application;->b:Z

    return v0
.end method

.method public static e()Z
    .locals 1

    .prologue
    .line 125
    sget-boolean v0, Lcom/avast/android/generic/Application;->c:Z

    return v0
.end method

.method public static f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lcom/avast/android/generic/Application;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static g()V
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x1

    sput-boolean v0, Lcom/avast/android/generic/Application;->e:Z

    .line 138
    return-void
.end method

.method public static h()Z
    .locals 1

    .prologue
    .line 141
    sget-boolean v0, Lcom/avast/android/generic/Application;->e:Z

    return v0
.end method

.method private i()V
    .locals 2

    .prologue
    .line 146
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 147
    const-string v0, "http.keepAlive"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 149
    :cond_0
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/avast/android/generic/Application;->f:Z

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/avast/android/generic/Application;->g:I

    return v0
.end method

.method public declared-synchronized getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 71
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onCreate()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 30
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 34
    :try_start_0
    invoke-virtual {p0}, Lcom/avast/android/generic/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/avast/android/generic/Application;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 35
    iget v0, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/avast/android/generic/Application;->f:Z

    .line 36
    iget v0, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v0, p0, Lcom/avast/android/generic/Application;->g:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :goto_1
    const-class v0, Lcom/avast/android/generic/ae;

    invoke-static {p0, v0}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ae;

    .line 43
    invoke-direct {p0}, Lcom/avast/android/generic/Application;->i()V

    .line 45
    invoke-virtual {v0}, Lcom/avast/android/generic/ae;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/avast/android/generic/Application;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/avast/android/generic/util/l;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 47
    :goto_2
    invoke-static {}, Lcom/avast/android/generic/util/ga/a;->b()Lcom/avast/android/generic/util/ga/a;

    move-result-object v1

    .line 48
    invoke-virtual {v1, v0}, Lcom/avast/android/generic/util/ga/a;->a(Z)V

    .line 49
    invoke-virtual {v1, p0}, Lcom/avast/android/generic/util/ga/a;->a(Landroid/content/Context;)V

    .line 50
    return-void

    :cond_0
    move v0, v2

    .line 35
    goto :goto_0

    .line 37
    :catch_0
    move-exception v0

    .line 38
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_1
    move v0, v2

    .line 45
    goto :goto_2
.end method
