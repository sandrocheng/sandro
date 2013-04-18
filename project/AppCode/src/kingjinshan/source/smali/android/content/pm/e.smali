.class public abstract Landroid/content/pm/e;
.super Landroid/os/Binder;
.source "IPackageStatsObserver.java"

# interfaces
.implements Landroid/content/pm/IPackageStatsObserver;


# static fields
.field static final a:I = 0x1

.field private static final b:Ljava/lang/String; = "android.content.pm.IPackageStatsObserver"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 21
    const-string v0, "android.content.pm.IPackageStatsObserver"

    invoke-virtual {p0, p0, v0}, Landroid/content/pm/e;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method private static a(Landroid/os/IBinder;)Landroid/content/pm/IPackageStatsObserver;
    .locals 3
    .parameter

    .prologue
    .line 29
    if-nez p0, :cond_0

    .line 30
    const/4 v1, 0x0

    .line 36
    :goto_0
    return-object v1

    .line 32
    :cond_0
    const-string v1, "android.content.pm.IPackageStatsObserver"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 33
    if-eqz v1, :cond_1

    instance-of v2, v1, Landroid/content/pm/IPackageStatsObserver;

    if-eqz v2, :cond_1

    .line 34
    move-object v0, v1

    check-cast v0, Landroid/content/pm/IPackageStatsObserver;

    move-object p0, v0

    move-object v1, p0

    goto :goto_0

    .line 36
    :cond_1
    new-instance v1, Landroid/content/pm/f;

    invoke-direct {v1, p0}, Landroid/content/pm/f;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 40
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

    .line 44
    sparse-switch p1, :sswitch_data_0

    .line 67
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 48
    :sswitch_0
    const-string v0, "android.content.pm.IPackageStatsObserver"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v2

    .line 49
    goto :goto_0

    .line 53
    :sswitch_1
    const-string v0, "android.content.pm.IPackageStatsObserver"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    sget-object v0, Landroid/content/pm/PackageStats;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageStats;

    .line 62
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    .line 63
    :goto_2
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/e;->onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V

    move v0, v2

    .line 64
    goto :goto_0

    .line 59
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 62
    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    .line 44
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
