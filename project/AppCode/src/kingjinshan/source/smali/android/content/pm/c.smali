.class public abstract Landroid/content/pm/c;
.super Landroid/os/Binder;
.source "IPackageMoveObserver.java"

# interfaces
.implements Landroid/content/pm/IPackageMoveObserver;


# static fields
.field static final a:I = 0x1

.field private static final b:Ljava/lang/String; = "android.content.pm.IPackageMoveObserver"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "android.content.pm.IPackageMoveObserver"

    invoke-virtual {p0, p0, v0}, Landroid/content/pm/c;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method private static a(Landroid/os/IBinder;)Landroid/content/pm/IPackageMoveObserver;
    .locals 3
    .parameter

    .prologue
    .line 27
    if-nez p0, :cond_0

    .line 28
    const/4 v1, 0x0

    .line 34
    :goto_0
    return-object v1

    .line 30
    :cond_0
    const-string v1, "android.content.pm.IPackageMoveObserver"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 31
    if-eqz v1, :cond_1

    instance-of v2, v1, Landroid/content/pm/IPackageMoveObserver;

    if-eqz v2, :cond_1

    .line 32
    move-object v0, v1

    check-cast v0, Landroid/content/pm/IPackageMoveObserver;

    move-object p0, v0

    move-object v1, p0

    goto :goto_0

    .line 34
    :cond_1
    new-instance v1, Landroid/content/pm/d;

    invoke-direct {v1, p0}, Landroid/content/pm/d;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 60
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 46
    :sswitch_0
    const-string v0, "android.content.pm.IPackageMoveObserver"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v2

    .line 47
    goto :goto_0

    .line 51
    :sswitch_1
    const-string v0, "android.content.pm.IPackageMoveObserver"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 56
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/c;->packageMoved(Ljava/lang/String;I)V

    move v0, v2

    .line 57
    goto :goto_0

    .line 42
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
