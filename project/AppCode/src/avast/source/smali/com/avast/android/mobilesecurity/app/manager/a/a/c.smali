.class public abstract Lcom/avast/android/mobilesecurity/app/manager/a/a/c;
.super Lcom/avast/android/generic/b;
.source "AppsCursorLoader.java"


# static fields
.field public static i:Ljava/lang/String;

.field public static j:Ljava/lang/String;

.field public static k:Ljava/lang/String;

.field public static l:Ljava/lang/String;

.field public static t:Ljava/lang/String;

.field public static u:Ljava/lang/String;

.field public static v:Ljava/lang/String;


# instance fields
.field private final f:Landroid/support/v4/a/n;

.field private final g:Landroid/content/pm/PackageManager;

.field private final h:Lcom/avast/android/mobilesecurity/app/manager/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-string v0, "packageName"

    sput-object v0, Lcom/avast/android/mobilesecurity/app/manager/a/a/c;->i:Ljava/lang/String;

    .line 33
    const-string v0, "sharedUserId"

    sput-object v0, Lcom/avast/android/mobilesecurity/app/manager/a/a/c;->j:Ljava/lang/String;

    .line 34
    const-string v0, "name"

    sput-object v0, Lcom/avast/android/mobilesecurity/app/manager/a/a/c;->k:Ljava/lang/String;

    .line 35
    const-string v0, "pid"

    sput-object v0, Lcom/avast/android/mobilesecurity/app/manager/a/a/c;->l:Ljava/lang/String;

    .line 36
    const-string v0, "value"

    sput-object v0, Lcom/avast/android/mobilesecurity/app/manager/a/a/c;->t:Ljava/lang/String;

    .line 37
    const-string v0, "system"

    sput-object v0, Lcom/avast/android/mobilesecurity/app/manager/a/a/c;->u:Ljava/lang/String;

    .line 38
    const-string v0, "uid"

    sput-object v0, Lcom/avast/android/mobilesecurity/app/manager/a/a/c;->v:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/avast/android/generic/b;-><init>(Landroid/content/Context;)V

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/a/a/c;->g:Landroid/content/pm/PackageManager;

    .line 81
    new-instance v0, Lcom/avast/android/mobilesecurity/app/manager/a/b;

    invoke-direct {v0, p1}, Lcom/avast/android/mobilesecurity/app/manager/a/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/a/a/c;->h:Lcom/avast/android/mobilesecurity/app/manager/a/b;

    .line 82
    new-instance v0, Landroid/support/v4/a/n;

    invoke-direct {v0, p0}, Landroid/support/v4/a/n;-><init>(Landroid/support/v4/a/m;)V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/a/a/c;->f:Landroid/support/v4/a/n;

    .line 83
    return-void
.end method


# virtual methods
.method public A()Landroid/database/Cursor;
    .locals 2

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/manager/a/a/c;->b_()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/manager/a/a/c;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 106
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/manager/a/a/c;->c_()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 108
    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/manager/a/a/c;->b(Ljava/util/List;)Landroid/database/Cursor;

    move-result-object v0

    .line 110
    if-eqz v0, :cond_0

    .line 111
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/manager/a/a/c;->f:Landroid/support/v4/a/n;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 114
    :cond_0
    return-object v0
.end method

.method protected B()Ljava/util/List;
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/a/a/c;->g:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 124
    if-nez v0, :cond_0

    .line 125
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 127
    :cond_0
    return-object v0
.end method

.method protected C()Ljava/util/List;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 136
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 141
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/a/a/c;->g:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 142
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 145
    :try_start_0
    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/manager/a/a/c;->g:Landroid/content/pm/PackageManager;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 146
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 147
    :catch_0
    move-exception v0

    .line 148
    const-string v3, "AppsCursorLoader"

    const-string v4, "Package info not found."

    invoke-static {v3, v4, v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 151
    :cond_0
    return-object v1
.end method

.method protected abstract a(Ljava/util/List;)Ljava/util/List;
.end method

.method protected abstract b(Ljava/util/List;)Landroid/database/Cursor;
.end method

.method protected abstract b_()Ljava/util/List;
.end method

.method protected c_()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 191
    new-instance v0, Lcom/avast/android/mobilesecurity/app/manager/a/a/g;

    invoke-direct {v0}, Lcom/avast/android/mobilesecurity/app/manager/a/a/g;-><init>()V

    return-object v0
.end method

.method public synthetic d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/manager/a/a/c;->A()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected y()Landroid/content/pm/PackageManager;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/a/a/c;->g:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method protected z()Lcom/avast/android/mobilesecurity/app/manager/a/b;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/a/a/c;->h:Lcom/avast/android/mobilesecurity/app/manager/a/b;

    return-object v0
.end method
