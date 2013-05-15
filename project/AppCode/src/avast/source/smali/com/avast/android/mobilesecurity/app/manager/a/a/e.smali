.class public abstract Lcom/avast/android/mobilesecurity/app/manager/a/a/e;
.super Lcom/avast/android/mobilesecurity/app/manager/a/a/c;
.source "GroupedAppsCursorLoader.java"


# static fields
.field public static w:Ljava/lang/String;

.field public static x:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "grouped_apps_names"

    sput-object v0, Lcom/avast/android/mobilesecurity/app/manager/a/a/e;->w:Ljava/lang/String;

    .line 20
    const-string v0, "grouped_apps_count"

    sput-object v0, Lcom/avast/android/mobilesecurity/app/manager/a/a/e;->x:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/avast/android/mobilesecurity/app/manager/a/a/c;-><init>(Landroid/content/Context;)V

    .line 39
    return-void
.end method


# virtual methods
.method protected a(Ljava/util/List;)Ljava/util/List;
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x0

    .line 48
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 50
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 52
    const-wide/16 v0, 0x0

    .line 53
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-wide v1, v0

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 54
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/manager/a/a/e;->w()Lcom/avast/android/mobilesecurity/app/manager/a/a/f;

    move-result-object v6

    .line 55
    iput-wide v1, v6, Lcom/avast/android/mobilesecurity/app/manager/a/a/f;->d:J

    .line 56
    iget-object v7, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v7, v6, Lcom/avast/android/mobilesecurity/app/manager/a/a/f;->e:I

    .line 57
    iput v9, v6, Lcom/avast/android/mobilesecurity/app/manager/a/a/f;->f:I

    .line 58
    iget-object v7, v0, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    iput-object v7, v6, Lcom/avast/android/mobilesecurity/app/manager/a/a/f;->g:Ljava/lang/String;

    .line 59
    iget-object v7, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v7, v6, Lcom/avast/android/mobilesecurity/app/manager/a/a/f;->h:Ljava/lang/String;

    .line 60
    iget-object v7, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/manager/a/a/e;->y()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/avast/android/mobilesecurity/app/manager/a/a/f;->i:Ljava/lang/String;

    .line 62
    iput v9, v6, Lcom/avast/android/mobilesecurity/app/manager/a/a/f;->k:I

    .line 63
    invoke-virtual {p0, v6}, Lcom/avast/android/mobilesecurity/app/manager/a/a/e;->a(Lcom/avast/android/mobilesecurity/app/manager/a/a/f;)V

    .line 65
    iget-object v7, v0, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    if-eqz v7, :cond_2

    .line 66
    iget-object v7, v0, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    invoke-interface {v4, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 67
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/app/manager/a/a/f;

    .line 68
    iget-object v7, v0, Lcom/avast/android/mobilesecurity/app/manager/a/a/f;->m:Ljava/lang/String;

    if-nez v7, :cond_0

    .line 69
    iget-object v7, v0, Lcom/avast/android/mobilesecurity/app/manager/a/a/f;->i:Ljava/lang/String;

    iput-object v7, v0, Lcom/avast/android/mobilesecurity/app/manager/a/a/f;->m:Ljava/lang/String;

    .line 70
    const/4 v7, 0x1

    iput v7, v0, Lcom/avast/android/mobilesecurity/app/manager/a/a/f;->n:I

    .line 72
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v0, Lcom/avast/android/mobilesecurity/app/manager/a/a/f;->m:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v6, v6, Lcom/avast/android/mobilesecurity/app/manager/a/a/f;->i:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/avast/android/mobilesecurity/app/manager/a/a/f;->m:Ljava/lang/String;

    .line 73
    iget v6, v0, Lcom/avast/android/mobilesecurity/app/manager/a/a/f;->n:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v0, Lcom/avast/android/mobilesecurity/app/manager/a/a/f;->n:I

    .line 81
    :goto_1
    const-wide/16 v6, 0x1

    add-long v0, v1, v6

    move-wide v1, v0

    .line 82
    goto/16 :goto_0

    .line 75
    :cond_1
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    invoke-interface {v4, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 78
    :cond_2
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 85
    :cond_3
    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/app/manager/a/a/f;

    .line 86
    iget v2, v0, Lcom/avast/android/mobilesecurity/app/manager/a/a/f;->n:I

    if-lez v2, :cond_4

    .line 88
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "*** END ***"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Lcom/avast/android/mobilesecurity/app/manager/a/a/f;->n:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/avast/android/mobilesecurity/app/manager/a/a/f;->l:Ljava/lang/String;

    .line 90
    :cond_4
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 93
    :cond_5
    return-object v3
.end method

.method protected abstract a(Lcom/avast/android/mobilesecurity/app/manager/a/a/f;)V
.end method

.method protected b_()Ljava/util/List;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/manager/a/a/e;->C()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected abstract w()Lcom/avast/android/mobilesecurity/app/manager/a/a/f;
.end method
