.class public final Lcom/tencent/tmsecure/module/permission/PermissionControlConfig;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final PERMISSION_MODE_ABORT:I = 0x1

.field public static final PERMISSION_MODE_ACCEPT:I = 0x0

.field public static final PERMISSION_MODE_ASK:B = 0x2t

.field public static final PERMISSION_MODE_NULL:I = 0xffff


# instance fields
.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/tencent/tmsecure/module/permission/PermissionTableItem;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/tmsecure/module/permission/PermissionTableItem;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmsecure/module/permission/PermissionControlConfig;->a:Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p2, p0, Lcom/tencent/tmsecure/module/permission/PermissionControlConfig;->b:Ljava/lang/String;

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/permission/PermissionTableItem;

    iget-object v2, p0, Lcom/tencent/tmsecure/module/permission/PermissionControlConfig;->a:Ljava/util/HashMap;

    iget v3, v0, Lcom/tencent/tmsecure/module/permission/PermissionTableItem;->mUid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static createFromParcel(Landroid/os/Parcel;)Lcom/tencent/tmsecure/module/permission/PermissionControlConfig;
    .locals 4

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/tencent/tmsecure/module/permission/PermissionControlConfig;

    invoke-direct {v1, v2, v0}, Lcom/tencent/tmsecure/module/permission/PermissionControlConfig;-><init>(Ljava/util/List;Ljava/lang/String;)V

    return-object v1

    :cond_0
    invoke-static {p0}, Lcom/tencent/tmsecure/module/permission/PermissionTableItem;->createFromParcel(Landroid/os/Parcel;)Lcom/tencent/tmsecure/module/permission/PermissionTableItem;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final addItem(Lcom/tencent/tmsecure/module/permission/PermissionTableItem;)Z
    .locals 2

    iget-object v0, p0, Lcom/tencent/tmsecure/module/permission/PermissionControlConfig;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tmsecure/module/permission/PermissionControlConfig;->a:Ljava/util/HashMap;

    iget v1, p1, Lcom/tencent/tmsecure/module/permission/PermissionTableItem;->mUid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getDummyDatabaseName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/permission/PermissionControlConfig;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getItemByUid(I)Lcom/tencent/tmsecure/module/permission/PermissionTableItem;
    .locals 2

    iget-object v0, p0, Lcom/tencent/tmsecure/module/permission/PermissionControlConfig;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/permission/PermissionTableItem;

    return-object v0
.end method

.method public final getItems()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/permission/PermissionTableItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/tencent/tmsecure/module/permission/PermissionControlConfig;->a:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final getValue(II)I
    .locals 3

    const/4 v1, -0x1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/permission/PermissionControlConfig;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/permission/PermissionTableItem;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/tmsecure/module/permission/PermissionRequestIDs;->getCount()I

    move-result v2

    if-ge p2, v2, :cond_0

    iget-object v0, v0, Lcom/tencent/tmsecure/module/permission/PermissionTableItem;->mRids:[I

    aget v0, v0, p2

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public final removeItem(Lcom/tencent/tmsecure/module/permission/PermissionTableItem;)Z
    .locals 2

    iget-object v0, p0, Lcom/tencent/tmsecure/module/permission/PermissionControlConfig;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tmsecure/module/permission/PermissionControlConfig;->a:Ljava/util/HashMap;

    iget v1, p1, Lcom/tencent/tmsecure/module/permission/PermissionTableItem;->mUid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setDummyDatabaseName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tmsecure/module/permission/PermissionControlConfig;->b:Ljava/lang/String;

    return-void
.end method

.method public final update(III)Z
    .locals 2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tmsecure/module/permission/PermissionControlConfig;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/permission/PermissionTableItem;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/tmsecure/module/permission/PermissionRequestIDs;->getCount()I

    move-result v1

    if-ge p2, v1, :cond_0

    iget-object v1, v0, Lcom/tencent/tmsecure/module/permission/PermissionTableItem;->mRids:[I

    aput p3, v1, p2

    :cond_0
    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final update(Lcom/tencent/tmsecure/module/permission/PermissionTableItem;)Z
    .locals 3

    iget v0, p1, Lcom/tencent/tmsecure/module/permission/PermissionTableItem;->mUid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/permission/PermissionControlConfig;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/permission/PermissionTableItem;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/tencent/tmsecure/module/permission/PermissionControlConfig;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/tmsecure/module/permission/PermissionControlConfig;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/permission/PermissionControlConfig;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tmsecure/module/permission/PermissionControlConfig;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/permission/PermissionTableItem;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Lcom/tencent/tmsecure/module/permission/PermissionTableItem;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0
.end method
