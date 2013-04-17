.class public Lcom/tencent/tmsecure/module/permission/PermissionTableItem;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/tencent/tmsecure/module/permission/PermissionTableItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mPackageName:Ljava/lang/String;

.field public mRids:[I

.field public mUid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lbxj;

    invoke-direct {v0}, Lbxj;-><init>()V

    sput-object v0, Lcom/tencent/tmsecure/module/permission/PermissionTableItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I[ILjava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/tencent/tmsecure/module/permission/PermissionRequestIDs;->getCount()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/tencent/tmsecure/module/permission/PermissionTableItem;->mRids:[I

    iput p1, p0, Lcom/tencent/tmsecure/module/permission/PermissionTableItem;->mUid:I

    if-eqz p2, :cond_0

    array-length v0, p2

    invoke-static {}, Lcom/tencent/tmsecure/module/permission/PermissionRequestIDs;->getCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    iput-object p2, p0, Lcom/tencent/tmsecure/module/permission/PermissionTableItem;->mRids:[I

    :cond_0
    iput-object p3, p0, Lcom/tencent/tmsecure/module/permission/PermissionTableItem;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method public static createFromParcel(Landroid/os/Parcel;)Lcom/tencent/tmsecure/module/permission/PermissionTableItem;
    .locals 4

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/tencent/tmsecure/module/permission/PermissionTableItem;

    invoke-direct {v3, v0, v1, v2}, Lcom/tencent/tmsecure/module/permission/PermissionTableItem;-><init>(I[ILjava/lang/String;)V

    return-object v3
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/tencent/tmsecure/module/permission/PermissionTableItem;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/tencent/tmsecure/module/permission/PermissionTableItem;

    if-eqz p1, :cond_0

    iget v1, p0, Lcom/tencent/tmsecure/module/permission/PermissionTableItem;->mUid:I

    iget v2, p1, Lcom/tencent/tmsecure/module/permission/PermissionTableItem;->mUid:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/tencent/tmsecure/module/permission/PermissionTableItem;->mPackageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/tencent/tmsecure/module/permission/PermissionTableItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/tencent/tmsecure/module/permission/PermissionTableItem;->mUid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/tmsecure/module/permission/PermissionTableItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/tencent/tmsecure/module/permission/PermissionTableItem;->mUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/permission/PermissionTableItem;->mRids:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/permission/PermissionTableItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
