.class public Lcom/avast/android/mobilesecurity/app/locking/core/h;
.super Ljava/lang/Object;
.source "AuthorizedApps.java"


# static fields
.field private static a:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/avast/android/mobilesecurity/app/locking/core/h;->a:Ljava/util/Set;

    return-void
.end method

.method public static a()V
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/avast/android/mobilesecurity/app/locking/core/h;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 74
    return-void
.end method

.method public static a(Lcom/avast/android/mobilesecurity/app/locking/core/App;)Z
    .locals 3
    .parameter

    .prologue
    .line 33
    const/4 v0, 0x0

    .line 34
    iget-boolean v1, p0, Lcom/avast/android/mobilesecurity/app/locking/core/App;->i:Z

    if-nez v1, :cond_0

    .line 35
    sget-object v0, Lcom/avast/android/mobilesecurity/app/locking/core/h;->a:Ljava/util/Set;

    const-string v1, "COMMON"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 44
    if-eqz v0, :cond_0

    .line 45
    sget-object v1, Lcom/avast/android/mobilesecurity/app/locking/core/h;->a:Ljava/util/Set;

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/locking/core/App;->e:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 48
    :cond_0
    sget-object v1, Lcom/avast/android/mobilesecurity/app/locking/core/h;->a:Ljava/util/Set;

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/locking/core/App;->e:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 50
    return v0
.end method

.method public static b(Lcom/avast/android/mobilesecurity/app/locking/core/App;)V
    .locals 3
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/locking/core/App;->e:Ljava/lang/String;

    .line 61
    iget-boolean v1, p0, Lcom/avast/android/mobilesecurity/app/locking/core/App;->i:Z

    if-nez v1, :cond_0

    .line 62
    sget-object v1, Lcom/avast/android/mobilesecurity/app/locking/core/h;->a:Ljava/util/Set;

    const-string v2, "COMMON"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 66
    :cond_0
    sget-object v1, Lcom/avast/android/mobilesecurity/app/locking/core/h;->a:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 67
    return-void
.end method
