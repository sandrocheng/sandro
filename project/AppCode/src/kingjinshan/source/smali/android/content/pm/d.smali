.class final Landroid/content/pm/d;
.super Ljava/lang/Object;
.source "IPackageMoveObserver.java"

# interfaces
.implements Landroid/content/pm/IPackageMoveObserver;


# instance fields
.field private a:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Landroid/content/pm/d;->a:Landroid/os/IBinder;

    .line 68
    return-void
.end method

.method private static a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    const-string v0, "android.content.pm.IPackageMoveObserver"

    return-object v0
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Landroid/content/pm/d;->a:Landroid/os/IBinder;

    return-object v0
.end method

.method public final packageMoved(Ljava/lang/String;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 79
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 81
    :try_start_0
    const-string v1, "android.content.pm.IPackageMoveObserver"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    iget-object v1, p0, Landroid/content/pm/d;->a:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 88
    return-void

    .line 87
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method
