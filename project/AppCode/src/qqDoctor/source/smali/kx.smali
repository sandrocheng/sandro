.class public final Lkx;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Landroid/graphics/drawable/Drawable;

.field public e:[B

.field public f:Z

.field public g:Z

.field private h:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xd

    new-array v0, v0, [B

    iput-object v0, p0, Lkx;->e:[B

    const/4 v0, 0x0

    iput-object v0, p0, Lkx;->h:[B

    return-void
.end method

.method public static a(Landroid/content/pm/PackageInfo;)Lkx;
    .locals 11

    const/4 v3, 0x0

    const/16 v10, 0xd

    const/4 v9, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v4, Lkx;

    invoke-direct {v4}, Lkx;-><init>()V

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v0, v4, Lkx;->a:I

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v0, v4, Lkx;->b:Ljava/lang/String;

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, v4, Lkx;->f:Z

    iget-boolean v0, v4, Lkx;->f:Z

    if-nez v0, :cond_0

    const-class v0, Lcom/tencent/tmsecure/module/applist/AppListManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/applist/AppListManager;

    iget-object v5, v4, Lkx;->b:Ljava/lang/String;

    sget-object v6, LQQPIM/SoftListType;->WHITELIST_COMMON:LQQPIM/SoftListType;

    invoke-virtual {v0, v5, v6}, Lcom/tencent/tmsecure/module/applist/AppListManager;->contains(Ljava/lang/String;LQQPIM/SoftListType;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    :goto_1
    iput-boolean v1, v4, Lkx;->g:Z

    iget-object v1, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    iget-boolean v5, v4, Lkx;->g:Z

    if-nez v1, :cond_4

    move-object v0, v3

    :cond_1
    :goto_2
    iput-object v0, v4, Lkx;->e:[B

    iget-object v0, v4, Lkx;->e:[B

    if-nez v0, :cond_9

    new-array v0, v10, [B

    iput-object v0, v4, Lkx;->e:[B

    iget-object v0, v4, Lkx;->e:[B

    array-length v0, v0

    :goto_3
    if-ge v2, v0, :cond_9

    const/16 v1, 0xc

    if-ne v2, v1, :cond_8

    iget-object v1, v4, Lkx;->e:[B

    const/4 v3, 0x2

    aput-byte v3, v1, v2

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1

    :cond_4
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    array-length v7, v1

    move v0, v2

    :goto_5
    if-ge v0, v7, :cond_5

    aget-object v8, v1, v0

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_5
    invoke-static {v6}, Lxf;->a(Ljava/util/List;)[B

    move-result-object v0

    if-nez v0, :cond_6

    move-object v0, v3

    goto :goto_2

    :cond_6
    move v1, v2

    :goto_6
    if-ge v1, v10, :cond_1

    aget-byte v3, v0, v1

    if-eq v3, v9, :cond_7

    if-eqz v5, :cond_7

    aput-byte v2, v0, v1

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_8
    iget-object v1, v4, Lkx;->e:[B

    aput-byte v9, v1, v2

    goto :goto_4

    :cond_9
    return-object v4
.end method


# virtual methods
.method public final a(Z)V
    .locals 6

    const/16 v5, 0xc

    const/4 v4, -0x1

    const/4 v1, 0x0

    iput-boolean p1, p0, Lkx;->g:Z

    if-eqz p1, :cond_3

    move v0, v1

    :goto_0
    iget-object v2, p0, Lkx;->e:[B

    array-length v2, v2

    if-ge v0, v2, :cond_1

    if-eq v0, v5, :cond_0

    iget-object v2, p0, Lkx;->e:[B

    aget-byte v2, v2, v0

    if-eq v2, v4, :cond_0

    iget-object v2, p0, Lkx;->e:[B

    aput-byte v1, v2, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lkx;->h:[B

    if-eqz v0, :cond_9

    move v0, v1

    :goto_1
    iget-object v2, p0, Lkx;->h:[B

    array-length v2, v2

    if-ge v0, v2, :cond_9

    if-eq v0, v5, :cond_2

    iget-object v2, p0, Lkx;->h:[B

    aget-byte v2, v2, v0

    if-eq v2, v4, :cond_2

    iget-object v2, p0, Lkx;->h:[B

    aput-byte v1, v2, v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_2
    iget-object v2, p0, Lkx;->e:[B

    array-length v2, v2

    if-ge v0, v2, :cond_8

    iget-object v2, p0, Lkx;->e:[B

    aget-byte v2, v2, v0

    if-eq v2, v4, :cond_4

    if-eq v0, v5, :cond_4

    iget-boolean v2, p0, Lkx;->f:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lkx;->e:[B

    aput-byte v1, v2, v0

    :cond_4
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    const/4 v2, 0x7

    if-eq v0, v2, :cond_6

    const/4 v2, 0x6

    if-ne v0, v2, :cond_7

    :cond_6
    iget-object v2, p0, Lkx;->e:[B

    aput-byte v1, v2, v0

    goto :goto_3

    :cond_7
    iget-object v2, p0, Lkx;->e:[B

    const/4 v3, 0x2

    aput-byte v3, v2, v0

    goto :goto_3

    :cond_8
    const/4 v0, 0x0

    iput-object v0, p0, Lkx;->h:[B

    :cond_9
    return-void
.end method

.method public final a()[B
    .locals 12

    const/4 v5, 0x1

    const/4 v3, -0x1

    const/4 v4, 0x2

    const/4 v1, 0x0

    iget-object v0, p0, Lkx;->h:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkx;->h:[B

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x6

    new-array v0, v0, [B

    iput-object v0, p0, Lkx;->h:[B

    move v0, v1

    :goto_1
    iget-object v2, p0, Lkx;->h:[B

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lkx;->h:[B

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    sget-object v7, Lmd;->a:[B

    array-length v8, v7

    move v6, v1

    :goto_2
    if-ge v6, v8, :cond_5

    aget-byte v9, v7, v6

    invoke-static {v9}, Lmd;->b(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v2, v3

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v11, p0, Lkx;->e:[B

    aget-byte v11, v11, v0

    if-nez v11, :cond_3

    move v2, v1

    :cond_2
    iget-object v0, p0, Lkx;->h:[B

    aput-byte v2, v0, v9

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_2

    :cond_3
    iget-object v11, p0, Lkx;->e:[B

    aget-byte v11, v11, v0

    if-ne v11, v4, :cond_4

    move v2, v4

    goto :goto_3

    :cond_4
    iget-object v11, p0, Lkx;->e:[B

    aget-byte v0, v11, v0

    if-ne v0, v5, :cond_6

    if-eq v2, v4, :cond_6

    move v0, v5

    :goto_4
    move v2, v0

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lkx;->h:[B

    goto :goto_0

    :cond_6
    move v0, v2

    goto :goto_4
.end method
