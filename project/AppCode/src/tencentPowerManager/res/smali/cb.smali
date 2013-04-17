.class public Lcb;
.super Ljava/lang/Object;

# interfaces
.implements Lch$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcb$a;
    }
.end annotation


# static fields
.field private static a:Lcb;


# instance fields
.field private b:I

.field private c:Laq;

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Lcb$a;

.field private h:J

.field private final i:[Ljava/lang/String;

.field private j:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2e

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.tencent.mtt"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "com.tencent.qbx"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.UCMobile"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.oupeng.mini.android"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.dolphin.browser.cn"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.tiantianmini.android.browser"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.uc.browser.hd"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.opera.mini.kaiqi"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.skyfire.browser"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "org.mozilla.firefox"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "bubei.tingshu"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.appoffer.listen"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "viva.reader"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "com.onion.reader"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "com.readermate"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "com.ophone.reader.ui"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "com.kingreader.framework.hd"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "com.byread.reader"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "com.adobe.reader"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "com.lectek.android.sfreader"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "com.newmbook.android"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "com.MoScreen"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "com.mbook.android"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "com.snda.cloudary"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "com.nxb.loveknowledge"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "com.snda.cloudary"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "cn.ibuka.manga.ui"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "com.qq.ac.android"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "com.wheatfieldstudio.tool.reader"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "com.duoku.coolreader"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "com.baidu.wenku"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "com.cnepub.baselibrary.mylibrary.ui.android"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "com.aldiko.android"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "cn.htjyb.reader"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "com.shuqi.cartoon.controller"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "udk.android.reader"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "com.dnal.reader"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "one.hh.oneclient"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "com.amazon.kindle"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "com.sailang.yilin"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "com.netease.newsreader.activity"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "com.myzaker.ZAKER_Phone"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "com.wumii.android"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "com.ireadercity"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "com.anyview"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "com.chaozh.iReaderFree"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcb;->i:[Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcb;->h:J

    iput-boolean v3, p0, Lcb;->d:Z

    iput-boolean v3, p0, Lcb;->f:Z

    iput-boolean v3, p0, Lcb;->e:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcb;->j:Ljava/util/Set;

    iget-object v0, p0, Lcb;->j:Ljava/util/Set;

    iget-object v1, p0, Lcb;->i:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-static {}, Laq;->a()Laq;

    move-result-object v0

    iput-object v0, p0, Lcb;->c:Laq;

    return-void
.end method

.method public static a()Lcb;
    .locals 2

    const-class v1, Lcb;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcb;->a:Lcb;

    if-nez v0, :cond_0

    new-instance v0, Lcb;

    invoke-direct {v0}, Lcb;-><init>()V

    sput-object v0, Lcb;->a:Lcb;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcb;->a:Lcb;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcb;)Z
    .locals 1

    iget-boolean v0, p0, Lcb;->d:Z

    return v0
.end method

.method static synthetic b(Lcb;)J
    .locals 2

    iget-wide v0, p0, Lcb;->h:J

    return-wide v0
.end method

.method static synthetic c(Lcb;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcb;->e:Z

    return v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 11

    const-wide/16 v9, 0x0

    const v8, 0xea60

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcb;->j:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcb;->d:Z

    if-nez v0, :cond_3

    iput-boolean v7, p0, Lcb;->d:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcb;->h:J

    iget-object v0, p0, Lcb;->c:Laq;

    invoke-virtual {v0}, Laq;->b()I

    move-result v0

    iput v0, p0, Lcb;->b:I

    iget v0, p0, Lcb;->b:I

    if-ge v0, v8, :cond_2

    iget v0, p0, Lcb;->b:I

    if-lez v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Ls$a;->g()Lz;

    move-result-object v2

    invoke-virtual {v2}, Lz;->j()J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/32 v4, 0x240c8400

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    invoke-static {}, Ls$a;->g()Lz;

    move-result-object v2

    invoke-virtual {v2}, Lz;->j()J

    move-result-wide v2

    sub-long v2, v0, v2

    cmp-long v2, v2, v9

    if-gez v2, :cond_1

    :cond_0
    invoke-static {}, Lds;->a()Lds;

    move-result-object v2

    invoke-static {}, Lcom/tencent/powermanager/PowerManagerApplication;->a()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0600aa

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lds;->a(Ljava/lang/String;)V

    invoke-static {}, Ls$a;->g()Lz;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lz;->c(J)V

    iput-boolean v7, p0, Lcb;->f:Z

    :cond_1
    iget-object v0, p0, Lcb;->c:Laq;

    invoke-virtual {v0, v8}, Laq;->a(I)V

    :cond_2
    iput-boolean v6, p0, Lcb;->e:Z

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget-boolean v0, p0, Lcb;->d:Z

    if-eqz v0, :cond_3

    iput-boolean v6, p0, Lcb;->d:Z

    iput-wide v9, p0, Lcb;->h:J

    iget-boolean v0, p0, Lcb;->e:Z

    if-nez v0, :cond_6

    iput-boolean v6, p0, Lcb;->e:Z

    iget-boolean v0, p0, Lcb;->f:Z

    if-eqz v0, :cond_5

    invoke-static {}, Lds;->a()Lds;

    move-result-object v0

    invoke-static {}, Lcom/tencent/powermanager/PowerManagerApplication;->a()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0600ab

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lds;->a(Ljava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lcb;->c:Laq;

    iget v1, p0, Lcb;->b:I

    invoke-virtual {v0, v1}, Laq;->a(I)V

    :cond_6
    iput-boolean v6, p0, Lcb;->f:Z

    goto :goto_0
.end method

.method public final b()V
    .locals 4

    iget-object v0, p0, Lcb;->g:Lcb$a;

    if-nez v0, :cond_0

    new-instance v0, Lcb$a;

    invoke-direct {v0, p0}, Lcb$a;-><init>(Lcb;)V

    iput-object v0, p0, Lcb;->g:Lcb$a;

    :cond_0
    invoke-static {}, Lcom/tencent/powermanager/PowerManagerApplication;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_timeout"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcb;->g:Lcb$a;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public final c()V
    .locals 4

    iget-object v0, p0, Lcb;->g:Lcb$a;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/tencent/powermanager/PowerManagerApplication;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_timeout"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcb;->g:Lcb$a;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0
.end method
