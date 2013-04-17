.class public final Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mInfo1:[Ljava/lang/String;

.field public mInfo2:[I

.field public mInfo3:[B

.field public mPid:I

.field public mRid:I

.field public mUid:I

.field public mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lbxi;

    invoke-direct {v0}, Lbxi;-><init>()V

    sput-object v0, Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    iput v0, p0, Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;->mPid:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iput v0, p0, Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;->mUid:I

    return-void
.end method

.method public static createFromParcel(Landroid/os/Parcel;)Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;
    .locals 2

    new-instance v0, Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;

    invoke-direct {v0}, Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;-><init>()V

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;->mPid:I

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;->mUid:I

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;->mValue:I

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;->mRid:I

    invoke-virtual {p0}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;->mInfo1:[Ljava/lang/String;

    invoke-virtual {p0}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;->mInfo2:[I

    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;->mInfo3:[B

    return-object v0
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;->mPid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;->mUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;->mValue:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;->mRid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;->mInfo1:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;->mInfo2:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;->mInfo3:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
