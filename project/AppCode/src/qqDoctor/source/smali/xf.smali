.class public final Lxf;
.super Ljava/lang/Object;


# static fields
.field private static a:[I

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;

.field private static h:Ljava/lang/String;

.field private static i:Ljava/lang/String;

.field private static j:Ljava/lang/String;

.field private static k:Ljava/lang/String;

.field private static l:Ljava/lang/String;

.field private static m:Ljava/lang/String;

.field private static n:Ljava/lang/String;

.field private static o:Ljava/lang/String;

.field private static p:Ljava/lang/String;

.field private static q:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lxf;->a:[I

    const/16 v0, 0xd

    new-array v0, v0, [B

    aput-byte v5, v0, v2

    aput-byte v1, v0, v3

    aput-byte v4, v0, v1

    const/16 v1, 0xa

    aput-byte v1, v0, v4

    const/4 v1, 0x7

    aput-byte v1, v0, v5

    const/4 v1, 0x5

    aput-byte v2, v0, v1

    const/4 v1, 0x6

    aput-byte v3, v0, v1

    const/4 v1, 0x7

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x9

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b06b7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lxf;->b:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b06b8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lxf;->c:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b06b9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lxf;->d:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b06ba

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lxf;->e:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b06bb

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lxf;->f:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b06bc

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lxf;->g:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b06be

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lxf;->h:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b06bd

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lxf;->i:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b06bf

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lxf;->j:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b06c0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lxf;->k:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b06c1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lxf;->l:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b06c2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lxf;->m:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b06c3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lxf;->n:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b06c4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b06c5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b06c6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b06c7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b06c8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b06c9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b06cb

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b06ca

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b06cc

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b06cd

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b06ce

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b06cf

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b06d0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b06d1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lxf;->o:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b06d2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lxf;->p:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b06d3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lxf;->q:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public static a(ILjava/lang/String;)Lcom/tencent/tmsecure/module/permission/PermissionTableItem;
    .locals 7

    const/4 v1, 0x0

    new-instance v5, Lcom/tencent/tmsecure/module/permission/PermissionTableItem;

    const/4 v0, 0x0

    invoke-direct {v5, p0, v0, p1}, Lcom/tencent/tmsecure/module/permission/PermissionTableItem;-><init>(I[ILjava/lang/String;)V

    move v0, v1

    move v4, v1

    :goto_0
    const/16 v2, 0xd

    if-ge v4, v2, :cond_3

    move v2, v0

    move v0, v1

    :goto_1
    sget-object v3, Lxf;->a:[I

    aget v3, v3, v4

    if-ge v0, v3, :cond_2

    const/16 v3, 0xe

    if-ne v2, v3, :cond_1

    iget-object v3, v5, Lcom/tencent/tmsecure/module/permission/PermissionTableItem;->mPackageName:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, v5, Lcom/tencent/tmsecure/module/permission/PermissionTableItem;->mPackageName:Ljava/lang/String;

    invoke-static {v3}, Lxf;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_2
    if-eqz v3, :cond_1

    iget-object v3, v5, Lcom/tencent/tmsecure/module/permission/PermissionTableItem;->mRids:[I

    const/4 v6, 0x2

    aput v6, v3, v2

    :goto_3
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    move v3, v1

    goto :goto_2

    :cond_1
    iget-object v3, v5, Lcom/tencent/tmsecure/module/permission/PermissionTableItem;->mRids:[I

    const v6, 0xffff

    aput v6, v3, v2

    goto :goto_3

    :cond_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move v0, v2

    goto :goto_0

    :cond_3
    return-object v5
.end method

.method public static a(I[BLjava/lang/String;)Lcom/tencent/tmsecure/module/permission/PermissionTableItem;
    .locals 8

    const v7, 0xffff

    const/4 v1, 0x0

    new-instance v5, Lcom/tencent/tmsecure/module/permission/PermissionTableItem;

    const/4 v0, 0x0

    invoke-direct {v5, p0, v0, p2}, Lcom/tencent/tmsecure/module/permission/PermissionTableItem;-><init>(I[ILjava/lang/String;)V

    move v0, v1

    move v4, v1

    :goto_0
    const/16 v2, 0xd

    if-ge v4, v2, :cond_4

    move v2, v0

    move v0, v1

    :goto_1
    sget-object v3, Lxf;->a:[I

    aget v3, v3, v4

    if-ge v0, v3, :cond_3

    iget-object v3, v5, Lcom/tencent/tmsecure/module/permission/PermissionTableItem;->mRids:[I

    array-length v3, v3

    if-ge v2, v3, :cond_0

    array-length v3, p1

    if-ge v4, v3, :cond_0

    aget-byte v3, p1, v4

    const/4 v6, -0x1

    if-ne v3, v6, :cond_1

    iget-object v3, v5, Lcom/tencent/tmsecure/module/permission/PermissionTableItem;->mRids:[I

    aput v7, v3, v2

    :goto_2
    const/16 v3, 0xe

    if-ne v2, v3, :cond_0

    iget-object v3, v5, Lcom/tencent/tmsecure/module/permission/PermissionTableItem;->mPackageName:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, v5, Lcom/tencent/tmsecure/module/permission/PermissionTableItem;->mPackageName:Ljava/lang/String;

    invoke-static {v3}, Lxf;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x1

    :goto_3
    if-nez v3, :cond_0

    iget-object v3, v5, Lcom/tencent/tmsecure/module/permission/PermissionTableItem;->mRids:[I

    aput v7, v3, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget-object v3, v5, Lcom/tencent/tmsecure/module/permission/PermissionTableItem;->mRids:[I

    aget-byte v6, p1, v4

    aput v6, v3, v2

    goto :goto_2

    :cond_2
    move v3, v1

    goto :goto_3

    :cond_3
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move v0, v2

    goto :goto_0

    :cond_4
    return-object v5
.end method

.method public static a(B)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lxf;->o:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lxf;->p:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lxf;->q:Ljava/lang/String;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static a(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lxf;->b:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lxf;->c:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lxf;->d:Ljava/lang/String;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lxf;->e:Ljava/lang/String;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lxf;->f:Ljava/lang/String;

    goto :goto_0

    :pswitch_5
    sget-object v0, Lxf;->g:Ljava/lang/String;

    goto :goto_0

    :pswitch_6
    sget-object v0, Lxf;->h:Ljava/lang/String;

    goto :goto_0

    :pswitch_7
    sget-object v0, Lxf;->i:Ljava/lang/String;

    goto :goto_0

    :pswitch_8
    sget-object v0, Lxf;->j:Ljava/lang/String;

    goto :goto_0

    :pswitch_9
    sget-object v0, Lxf;->k:Ljava/lang/String;

    goto :goto_0

    :pswitch_a
    sget-object v0, Lxf;->l:Ljava/lang/String;

    goto :goto_0

    :pswitch_b
    sget-object v0, Lxf;->m:Ljava/lang/String;

    goto :goto_0

    :pswitch_c
    sget-object v0, Lxf;->n:Ljava/lang/String;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public static a()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lmd;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Lmd;->a:[B

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-byte v4, v2, v0

    new-instance v5, Lmd;

    invoke-direct {v5, v4}, Lmd;-><init>(I)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 3

    const/4 v2, 0x1

    const-string v0, "com.android."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_2

    const-class v0, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    invoke-virtual {v0, p0, v2}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->getAppInfo(Ljava/lang/String;I)Lcom/tencent/tmsecure/module/software/AppEntity;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/software/AppEntity;->isSystemApp()Z

    move-result v0

    :goto_1
    return v0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public static a(Ljava/util/List;)[B
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    const/16 v6, 0xd

    const/4 v1, 0x0

    const-class v0, Lcom/tencent/tmsecure/module/permission/PermissionManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/permission/PermissionManager;

    invoke-virtual {v0, p0}, Lcom/tencent/tmsecure/module/permission/PermissionManager;->getRidByPermission(Ljava/util/List;)[I

    move-result-object v4

    if-nez v4, :cond_1

    const/4 v0, 0x0

    :cond_0
    return-object v0

    :cond_1
    new-array v0, v6, [B

    move v2, v1

    :goto_0
    if-ge v2, v6, :cond_0

    array-length v3, v4

    if-ge v1, v3, :cond_2

    aget v3, v4, v1

    const v5, 0xffff

    if-ne v3, v5, :cond_3

    const/4 v3, -0x1

    aput-byte v3, v0, v2

    :cond_2
    :goto_1
    sget-object v5, Lxf;->a:[I

    add-int/lit8 v3, v2, 0x1

    aget v2, v5, v2

    add-int/2addr v1, v2

    move v2, v3

    goto :goto_0

    :cond_3
    aget v3, v4, v1

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    goto :goto_1
.end method

.method public static b(I)I
    .locals 5

    const/4 v1, 0x0

    move v3, v1

    move v0, v1

    :goto_0
    const/16 v2, 0xd

    if-ge v3, v2, :cond_2

    move v2, v0

    move v0, v1

    :goto_1
    sget-object v4, Lxf;->a:[I

    aget v4, v4, v3

    if-ge v0, v4, :cond_1

    if-ne v2, p0, :cond_0

    move v0, v3

    :goto_2
    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    move v0, v2

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_2
.end method

.method public static b(I[BLjava/lang/String;)Lcom/tencent/tmsecure/module/permission/PermissionTableItem;
    .locals 8

    const v7, 0xffff

    const/4 v1, 0x0

    new-instance v4, Lcom/tencent/tmsecure/module/permission/PermissionTableItem;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0, p2}, Lcom/tencent/tmsecure/module/permission/PermissionTableItem;-><init>(I[ILjava/lang/String;)V

    move v0, v1

    move v3, v1

    :goto_0
    const/16 v2, 0xd

    if-ge v3, v2, :cond_4

    move v2, v0

    move v0, v1

    :goto_1
    sget-object v5, Lxf;->a:[I

    aget v5, v5, v3

    if-ge v0, v5, :cond_2

    iget-object v5, v4, Lcom/tencent/tmsecure/module/permission/PermissionTableItem;->mRids:[I

    array-length v5, v5

    if-ge v2, v5, :cond_0

    array-length v5, p1

    if-ge v3, v5, :cond_0

    aget-byte v5, p1, v3

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    iget-object v5, v4, Lcom/tencent/tmsecure/module/permission/PermissionTableItem;->mRids:[I

    aput v7, v5, v2

    :cond_0
    :goto_2
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget-object v5, v4, Lcom/tencent/tmsecure/module/permission/PermissionTableItem;->mRids:[I

    aget-byte v6, p1, v3

    aput v6, v5, v2

    goto :goto_2

    :cond_2
    const/16 v0, 0xe

    if-ne v2, v0, :cond_3

    iget-object v0, v4, Lcom/tencent/tmsecure/module/permission/PermissionTableItem;->mRids:[I

    aput v7, v0, v2

    :cond_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v0, v2

    goto :goto_0

    :cond_4
    return-object v4
.end method
