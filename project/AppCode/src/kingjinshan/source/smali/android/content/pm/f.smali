.class final Landroid/content/pm/f;
.super Ljava/lang/Object;
.source "IPackageStatsObserver.java"

# interfaces
.implements Landroid/content/pm/IPackageStatsObserver;


# instance fields
.field private a:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Landroid/content/pm/f;->a:Landroid/os/IBinder;

    .line 75
    return-void
.end method

.method private static a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    const-string v0, "android.content.pm.IPackageStatsObserver"

    return-object v0
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Landroid/content/pm/f;->a:Landroid/os/IBinder;

    return-object v0
.end method

.method public final onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 86
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 88
    :try_start_0
    const-string v1, "android.content.pm.IPackageStatsObserver"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 89
    if-eqz p1, :cond_0

    .line 90
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageStats;->writeToParcel(Landroid/os/Parcel;I)V

    .line 96
    :goto_0
    if-eqz p2, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    iget-object v1, p0, Landroid/content/pm/f;->a:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 101
    return-void

    .line 94
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 100
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1

    :cond_1
    move v1, v3

    .line 96
    goto :goto_1
.end method