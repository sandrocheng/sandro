.class public final Lcl;
.super Lcom/tencent/tccsync/RemoteSyncObserver;

# interfaces
.implements Lcf;


# static fields
.field private static synthetic I:[I

.field private static synthetic J:[I

.field public static a:Z

.field public static b:Z


# instance fields
.field private A:J

.field private B:Z

.field private C:Z

.field private D:Ljava/lang/String;

.field private E:Lcom/tencent/qqpim/receiver/SyncStatusReceiver;

.field private F:Z

.field private G:Landroid/os/Handler;

.field private H:Lay;

.field private c:Lcom/tencent/tccsync/RemoteSync$SyncType;

.field private d:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

.field private e:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/tencent/tccsync/ITccSyncDbAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/String;

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:J

.field private s:J

.field private t:Z

.field private u:Ljava/lang/Thread;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Lck;

.field private z:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcl;->a:Z

    sput-boolean v0, Lcl;->b:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/tencent/tccsync/RemoteSyncObserver;-><init>()V

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    iput-object v3, p0, Lcl;->e:Ljava/util/Vector;

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    iput-object v3, p0, Lcl;->f:Ljava/util/Vector;

    const/4 v3, -0x1

    iput v3, p0, Lcl;->h:I

    iput v1, p0, Lcl;->i:I

    iput v1, p0, Lcl;->j:I

    iput v1, p0, Lcl;->k:I

    iput v1, p0, Lcl;->l:I

    iput v1, p0, Lcl;->m:I

    iput v1, p0, Lcl;->n:I

    iput v1, p0, Lcl;->o:I

    iput v1, p0, Lcl;->p:I

    iput v1, p0, Lcl;->q:I

    iput-wide v4, p0, Lcl;->r:J

    iput-wide v4, p0, Lcl;->s:J

    iput-boolean v1, p0, Lcl;->t:Z

    iput-object v2, p0, Lcl;->u:Ljava/lang/Thread;

    const-string v3, "[SYNCMODEL]Network Connection Problem"

    iput-object v3, p0, Lcl;->v:Ljava/lang/String;

    const-string v3, "[SYNCMODEL]Sync Exception"

    iput-object v3, p0, Lcl;->w:Ljava/lang/String;

    const-string v3, "[SYNCMODEL]SYNC ENGINE ERROR, ERROR CODE: "

    iput-object v3, p0, Lcl;->x:Ljava/lang/String;

    iput-boolean v1, p0, Lcl;->B:Z

    iput-boolean v1, p0, Lcl;->C:Z

    iput-boolean v1, p0, Lcl;->F:Z

    iput-object v2, p0, Lcl;->G:Landroid/os/Handler;

    iput-object v2, p0, Lcl;->H:Lay;

    iput-object p1, p0, Lcl;->z:Landroid/content/Context;

    new-instance v3, Lck;

    invoke-direct {v3, p1}, Lck;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcl;->y:Lck;

    iput-object v2, p0, Lcl;->G:Landroid/os/Handler;

    iput-object v2, p0, Lcl;->H:Lay;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mounted"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v0

    :goto_0
    if-eqz v3, :cond_1

    :goto_1
    iput-boolean v0, p0, Lcl;->C:Z

    sget-object v0, Lde;->a:Ljava/lang/String;

    if-nez v0, :cond_2

    move-object v0, v2

    :goto_2
    iput-object v0, p0, Lcl;->D:Ljava/lang/String;

    return-void

    :cond_0
    move v3, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lde;->a:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".lock"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method private declared-synchronized a(IJII)V
    .locals 23

    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcl;->B:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    const/4 v3, 0x0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcl;->c:Lcom/tencent/tccsync/RemoteSync$SyncType;

    if-eqz v4, :cond_0

    invoke-static {}, Lcl;->m()[I

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcl;->c:Lcom/tencent/tccsync/RemoteSync$SyncType;

    invoke-virtual {v5}, Lcom/tencent/tccsync/RemoteSync$SyncType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    move v7, v3

    :goto_1
    const/4 v3, -0x1

    invoke-static {}, Lcl;->n()[I

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcl;->d:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    invoke-virtual {v5}, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_1

    :pswitch_1
    move v6, v3

    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v10, v0, Lcl;->y:Lck;

    invoke-static {}, Lcw;->d()Lcw;

    move-result-object v3

    invoke-virtual {v3}, Lcw;->f()Ljava/lang/String;

    move-result-object v11

    if-nez v7, :cond_3

    move-object/from16 v0, p0

    iget v3, v0, Lcl;->j:I

    move v5, v3

    :goto_3
    if-nez v7, :cond_4

    move-object/from16 v0, p0

    iget v3, v0, Lcl;->k:I

    move v4, v3

    :goto_4
    if-nez v7, :cond_5

    move-object/from16 v0, p0

    iget v3, v0, Lcl;->l:I

    :goto_5
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcl;->r:J

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcl;->s:J

    move-object/from16 v0, p0

    iget v0, v0, Lcl;->n:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcl;->o:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcl;->p:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcl;->j:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcl;->k:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcl;->l:I

    move/from16 v21, v0

    iget-object v10, v10, Lck;->a:Landroid/content/Context;

    invoke-static {v10}, Lbw;->a(Landroid/content/Context;)Lbw;

    move-result-object v10

    if-eqz v10, :cond_2

    new-instance v22, Lcs;

    invoke-direct/range {v22 .. v22}, Lcs;-><init>()V

    move-object/from16 v0, v22

    iput-object v11, v0, Lcs;->a:Ljava/lang/String;

    move-object/from16 v0, v22

    iput v6, v0, Lcs;->b:I

    move-wide/from16 v0, p2

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcs;->c:J

    move-object/from16 v0, v22

    iput-wide v8, v0, Lcs;->d:J

    move-object/from16 v0, v22

    iput v5, v0, Lcs;->e:I

    move-object/from16 v0, v22

    iput v4, v0, Lcs;->f:I

    move-object/from16 v0, v22

    iput v3, v0, Lcs;->g:I

    move-object/from16 v0, v22

    iput v7, v0, Lcs;->h:I

    move-object/from16 v0, v22

    iput-wide v12, v0, Lcs;->i:J

    move-object/from16 v0, v22

    iput-wide v14, v0, Lcs;->j:J

    move/from16 v0, p1

    move-object/from16 v1, v22

    iput v0, v1, Lcs;->k:I

    move/from16 v0, v16

    move-object/from16 v1, v22

    iput v0, v1, Lcs;->m:I

    move/from16 v0, v17

    move-object/from16 v1, v22

    iput v0, v1, Lcs;->n:I

    move/from16 v0, v18

    move-object/from16 v1, v22

    iput v0, v1, Lcs;->o:I

    move/from16 v0, v19

    move-object/from16 v1, v22

    iput v0, v1, Lcs;->p:I

    move/from16 v0, v20

    move-object/from16 v1, v22

    iput v0, v1, Lcs;->q:I

    move/from16 v0, v21

    move-object/from16 v1, v22

    iput v0, v1, Lcs;->r:I

    const/4 v3, 0x0

    move-object/from16 v0, v22

    iput v3, v0, Lcs;->s:I

    move/from16 v0, p5

    move-object/from16 v1, v22

    iput v0, v1, Lcs;->t:I

    const/4 v3, -0x1

    move-object/from16 v0, v22

    iput v3, v0, Lcs;->l:I

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Lbw;->a(Lcs;)J

    :cond_2
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcl;->B:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :pswitch_2
    const/4 v3, 0x0

    move v7, v3

    goto/16 :goto_1

    :pswitch_3
    const/4 v3, 0x1

    move v7, v3

    goto/16 :goto_1

    :pswitch_4
    const/4 v3, 0x2

    move v7, v3

    goto/16 :goto_1

    :pswitch_5
    const/4 v3, 0x0

    move v6, v3

    goto/16 :goto_2

    :pswitch_6
    const/4 v3, 0x1

    move v6, v3

    goto/16 :goto_2

    :pswitch_7
    const/4 v3, 0x2

    move v6, v3

    goto/16 :goto_2

    :pswitch_8
    const/4 v3, 0x3

    move v6, v3

    goto/16 :goto_2

    :pswitch_9
    const/4 v3, 0x5

    move v6, v3

    goto/16 :goto_2

    :pswitch_a
    const/4 v3, 0x6

    move v6, v3

    goto/16 :goto_2

    :cond_3
    :try_start_2
    move-object/from16 v0, p0

    iget v3, v0, Lcl;->n:I

    move v5, v3

    goto/16 :goto_3

    :cond_4
    move-object/from16 v0, p0

    iget v3, v0, Lcl;->o:I

    move v4, v3

    goto/16 :goto_4

    :cond_5
    move-object/from16 v0, p0

    iget v3, v0, Lcl;->p:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_5

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_5
        :pswitch_1
        :pswitch_6
        :pswitch_1
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method private a(Landroid/content/Context;Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;Lcom/tencent/tccsync/RemoteSync$SyncType;Lcb;)V
    .locals 7

    const/4 v4, 0x0

    const-string v0, "SyncModel"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "addAdapter(), DbAdapterType="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->toInt()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " opType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Lcom/tencent/tccsync/RemoteSync$SyncType;->toInt()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcl;->d:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    invoke-static {}, Lcl;->n()[I

    move-result-object v0

    invoke-virtual {p2}, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcl;->f:Ljava/util/Vector;

    invoke-virtual {v0, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_1
    iget-object v0, p0, Lcl;->e:Ljava/util/Vector;

    invoke-static {p1, p2, p3, p4}, Lcu;->a(Landroid/content/Context;Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;Lcom/tencent/tccsync/RemoteSync$SyncType;Lcb;)Lcom/tencent/tccsync/ITccSyncDbAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lcl;->C:Z

    invoke-static {v0}, Lde;->c(Z)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :pswitch_2
    iget-object v6, p0, Lcl;->e:Ljava/util/Vector;

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    invoke-static/range {v0 .. v5}, Lcu;->a(Landroid/content/Context;Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;Lcom/tencent/tccsync/RemoteSync$SyncType;Lcb;[Ljava/lang/String;Z)Lcom/tencent/tccsync/ITccSyncDbAdapter;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lcl;->C:Z

    invoke-static {v0}, Lde;->d(Z)Ljava/lang/String;

    move-result-object v4

    sget-object v0, Lcom/tencent/tccsync/RemoteSync$SyncType;->SYNC_ONE_WAY_FROM_SERVER:Lcom/tencent/tccsync/RemoteSync$SyncType;

    invoke-virtual {v0}, Lcom/tencent/tccsync/RemoteSync$SyncType;->toInt()I

    move-result v0

    invoke-virtual {p3}, Lcom/tencent/tccsync/RemoteSync$SyncType;->toInt()I

    move-result v1

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/tencent/tccsync/RemoteSync$SyncType;->SYNC_REFRESH_FROM_SERVER:Lcom/tencent/tccsync/RemoteSync$SyncType;

    invoke-virtual {v0}, Lcom/tencent/tccsync/RemoteSync$SyncType;->toInt()I

    move-result v0

    invoke-virtual {p3}, Lcom/tencent/tccsync/RemoteSync$SyncType;->toInt()I

    move-result v1

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/tencent/tccsync/RemoteSync$SyncType;->SYNC_RESTORE_FROM_SERVER:Lcom/tencent/tccsync/RemoteSync$SyncType;

    invoke-virtual {v0}, Lcom/tencent/tccsync/RemoteSync$SyncType;->toInt()I

    move-result v0

    invoke-virtual {p3}, Lcom/tencent/tccsync/RemoteSync$SyncType;->toInt()I

    move-result v1

    if-ne v0, v1, :cond_0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcl;->F:Z

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcl;->e:Ljava/util/Vector;

    invoke-static {p1, p2, p3, p4}, Lcu;->a(Landroid/content/Context;Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;Lcom/tencent/tccsync/RemoteSync$SyncType;Lcb;)Lcom/tencent/tccsync/ITccSyncDbAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lcl;->C:Z

    invoke-static {v0}, Lde;->e(Z)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcl;->e:Ljava/util/Vector;

    invoke-static {p1, p2, p3, p4}, Lcu;->a(Landroid/content/Context;Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;Lcom/tencent/tccsync/RemoteSync$SyncType;Lcb;)Lcom/tencent/tccsync/ITccSyncDbAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lcl;->C:Z

    invoke-static {v0}, Lde;->f(Z)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcl;->e:Ljava/util/Vector;

    invoke-static {p1, p2, p3, p4}, Lcu;->a(Landroid/content/Context;Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;Lcom/tencent/tccsync/RemoteSync$SyncType;Lcb;)Lcom/tencent/tccsync/ITccSyncDbAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lcl;->C:Z

    invoke-static {v0}, Lde;->g(Z)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    :pswitch_6
    iget-object v0, p0, Lcl;->e:Ljava/util/Vector;

    invoke-static {p1, p2, p3, p4}, Lcu;->a(Landroid/content/Context;Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;Lcom/tencent/tccsync/RemoteSync$SyncType;Lcb;)Lcom/tencent/tccsync/ITccSyncDbAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lcl;->C:Z

    invoke-static {v0}, Lde;->h(Z)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private h()Lcf$a;
    .locals 8

    const/4 v0, 0x1

    const/4 v7, 0x0

    sput-boolean v0, Lcl;->a:Z

    new-instance v0, Lcom/tencent/qqpim/receiver/SyncStatusReceiver;

    invoke-direct {v0}, Lcom/tencent/qqpim/receiver/SyncStatusReceiver;-><init>()V

    iput-object v0, p0, Lcl;->E:Lcom/tencent/qqpim/receiver/SyncStatusReceiver;

    sget-object v0, Lde;->b:Landroid/content/Context;

    iget-object v1, p0, Lcl;->E:Lcom/tencent/qqpim/receiver/SyncStatusReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.tencent.qqpim.action_req_is_sync_working"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sget-object v0, Lde;->b:Landroid/content/Context;

    iget-object v1, p0, Lcl;->E:Lcom/tencent/qqpim/receiver/SyncStatusReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.tencent.qqpim.action_resp_sync_is_working"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sget-object v0, Lcf$a;->c:Lcf$a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcl;->A:J

    :try_start_0
    invoke-direct {p0}, Lcl;->l()Lcf$a;

    move-result-object v6

    sget-object v0, Lcf$a;->a:Lcf$a;

    if-ne v6, v0, :cond_3

    const/4 v1, 0x1

    iget-wide v2, p0, Lcl;->A:J

    const/4 v4, 0x0

    iget v5, p0, Lcl;->h:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcl;->a(IJII)V

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcl;->F:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcf$a;->e:Lcf$a;

    if-eq v0, v6, :cond_1

    iget-object v0, p0, Lcl;->z:Landroid/content/Context;

    invoke-static {v0}, Lbt;->a(Landroid/content/Context;)Lcb;

    move-result-object v0

    check-cast v0, Lbt;

    invoke-virtual {v0}, Lbt;->b()V
    :try_end_0
    .catch Lcom/tencent/tccsync/SyncException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    iget-object v0, p0, Lcl;->E:Lcom/tencent/qqpim/receiver/SyncStatusReceiver;

    if-eqz v0, :cond_2

    sget-object v0, Lde;->b:Landroid/content/Context;

    iget-object v1, p0, Lcl;->E:Lcom/tencent/qqpim/receiver/SyncStatusReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcl;->E:Lcom/tencent/qqpim/receiver/SyncStatusReceiver;

    :cond_2
    sput-boolean v7, Lcl;->a:Z

    move-object v0, v6

    :goto_1
    return-object v0

    :cond_3
    :try_start_1
    sget-object v0, Lcf$a;->d:Lcf$a;

    if-eq v6, v0, :cond_0

    const/4 v1, 0x0

    iget-wide v2, p0, Lcl;->A:J

    const/4 v4, 0x0

    iget v5, p0, Lcl;->h:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcl;->a(IJII)V
    :try_end_1
    .catch Lcom/tencent/tccsync/SyncException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    iget-boolean v1, p0, Lcl;->t:Z

    if-eqz v1, :cond_4

    sget-object v0, Lcf$a;->d:Lcf$a;

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Lcom/tencent/tccsync/SyncException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl;->g:Ljava/lang/String;

    iget-object v0, p0, Lcl;->g:Ljava/lang/String;

    if-nez v0, :cond_5

    const-string v0, "unknown exception(SyncException), its getMessage() is null"

    iput-object v0, p0, Lcl;->g:Ljava/lang/String;

    :cond_5
    const-string v0, "SyncModel"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "safeWork(), "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcl;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldk;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v2, p0, Lcl;->A:J

    iget v5, p0, Lcl;->h:I

    move-object v0, p0

    move v1, v7

    move v4, v7

    invoke-direct/range {v0 .. v5}, Lcl;->a(IJII)V

    sget-object v0, Lcf$a;->c:Lcf$a;

    goto :goto_1

    :catch_1
    move-exception v0

    iget-boolean v1, p0, Lcl;->t:Z

    if-eqz v1, :cond_6

    sget-object v0, Lcf$a;->d:Lcf$a;

    goto :goto_1

    :cond_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl;->g:Ljava/lang/String;

    iget-object v0, p0, Lcl;->g:Ljava/lang/String;

    if-nez v0, :cond_7

    const-string v0, "unknown exception(Throwable), its getMessage() is null"

    iput-object v0, p0, Lcl;->g:Ljava/lang/String;

    :cond_7
    const-string v0, "SyncModel"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "safeWork(), "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcl;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldk;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v2, p0, Lcl;->A:J

    iget v5, p0, Lcl;->h:I

    move-object v0, p0

    move v1, v7

    move v4, v7

    invoke-direct/range {v0 .. v5}, Lcl;->a(IJII)V

    sget-object v0, Lcf$a;->c:Lcf$a;

    goto/16 :goto_1
.end method

.method private i()Z
    .locals 6

    const/4 v0, 0x0

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/io/File;

    iget-object v1, p0, Lcl;->D:Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    move-result v1

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4

    move v0, v1

    :goto_0
    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_1
    return v0

    :cond_1
    move-object v2, v3

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "SyncModel"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "checkLockFileAvailableAndAdd(), "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Ldk;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v1

    move-object v2, v3

    :goto_2
    :try_start_3
    const-string v3, "SyncModel"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "checkLockFileAvailableAndAdd(), "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Ldk;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_0

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception v1

    const-string v2, "SyncModel"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "checkLockFileAvailableAndAdd(), "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Ldk;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v2, v3

    :goto_3
    if-eqz v2, :cond_2

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_2
    :goto_4
    throw v0

    :catch_3
    move-exception v1

    const-string v2, "SyncModel"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "checkLockFileAvailableAndAdd(), "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Ldk;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2
.end method

.method private j()Z
    .locals 5

    const/4 v0, 0x0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcl;->D:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string v2, "SyncModel"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "releaseLockFile(), "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Ldk;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private k()Z
    .locals 5

    const/4 v0, 0x0

    sput-boolean v0, Lcl;->b:Z

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.tencent.qqpim.action_req_is_sync_working"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "package_name"

    sget-object v3, Lde;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v2, Lde;->b:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-wide/16 v1, 0xbb8

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-boolean v1, Lcl;->b:Z

    if-eqz v1, :cond_0

    :goto_1
    return v0

    :catch_0
    move-exception v1

    const-string v2, "SyncModel"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "syncSendBroadcastAndCheckIfRemoteSyncRunning(), "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Ldk;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcl;->j()Z

    const/4 v0, 0x1

    goto :goto_1
.end method

.method private l()Lcf$a;
    .locals 15

    const/4 v9, 0x0

    const/4 v13, 0x1

    const/4 v8, 0x0

    iget-boolean v0, p0, Lcl;->C:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcl;->i()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcl;->k()Z

    :cond_0
    invoke-direct {p0}, Lcl;->k()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v2, Lcf$a;->e:Lcf$a;

    :goto_0
    return-object v2

    :cond_1
    sput-boolean v8, Lde;->c:Z

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcl;->u:Ljava/lang/Thread;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcl;->s:J

    iput-wide v0, p0, Lcl;->r:J

    iget-boolean v0, p0, Lcl;->C:Z

    invoke-static {v0}, Lde;->b(Z)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v2, Lcf$a;->c:Lcf$a;

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/tencent/tccsync/RemoteSync;

    invoke-direct {v0}, Lcom/tencent/tccsync/RemoteSync;-><init>()V

    invoke-static {}, Lcw;->d()Lcw;

    move-result-object v1

    invoke-virtual {v1}, Lcw;->e()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcw;->d()Lcw;

    move-result-object v1

    invoke-virtual {v1}, Lcw;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lde;->b()Ljava/lang/String;

    move-result-object v1

    iget-boolean v4, p0, Lcl;->C:Z

    invoke-static {v4}, Lde;->a(Z)Ljava/lang/String;

    move-result-object v4

    sget-object v10, Lcf$a;->a:Lcf$a;

    const v6, 0xb220

    const/16 v7, 0x110

    move-object v5, p0

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/tccsync/RemoteSync;->setConfigure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tccsync/RemoteSyncObserver;II)V

    move v4, v8

    :goto_1
    iget-object v1, p0, Lcl;->f:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v4, v1, :cond_6

    const-string v1, "SyncModel"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "work(), loginAccount="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/tccsync/RemoteSync;->start()I

    move-result v1

    move-object v3, v9

    move v2, v1

    move v1, v8

    :goto_2
    if-eqz v2, :cond_a

    :cond_3
    move-object v2, v10

    :goto_3
    const-string v3, "SyncModel"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "work(),do,while leave time: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v3, p0, Lcl;->t:Z

    if-eqz v3, :cond_13

    sget-object v2, Lcf$a;->d:Lcf$a;

    :cond_4
    :goto_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0}, Lcom/tencent/tccsync/RemoteSync;->end()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v3

    iput-object v9, p0, Lcl;->u:Ljava/lang/Thread;

    iget-boolean v3, p0, Lcl;->t:Z

    if-eqz v3, :cond_5

    sget-object v2, Lcf$a;->d:Lcf$a;

    :cond_5
    const-string v3, "SyncModel"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "work(),end cost:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " res="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    iget-object v1, p0, Lcl;->e:Ljava/util/Vector;

    invoke-virtual {v1, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/tccsync/ITccSyncDbAdapter;

    iget-object v3, p0, Lcl;->f:Ljava/util/Vector;

    invoke-virtual {v3, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v1, :cond_17

    invoke-interface {v1}, Lcom/tencent/tccsync/ITccSyncDbAdapter;->getSyncType()Lcom/tencent/tccsync/RemoteSync$SyncType;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Lcom/tencent/tccsync/RemoteSync$SyncType;->toInt()I

    move-result v6

    sget-object v7, Lcom/tencent/tccsync/RemoteSync$SyncType;->SYNC_NONE:Lcom/tencent/tccsync/RemoteSync$SyncType;

    invoke-virtual {v7}, Lcom/tencent/tccsync/RemoteSync$SyncType;->toInt()I

    move-result v7

    if-ne v6, v7, :cond_8

    :cond_7
    iget-object v5, p0, Lcl;->c:Lcom/tencent/tccsync/RemoteSync$SyncType;

    :cond_8
    :goto_5
    const-string v6, "SyncModel"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v11, "work(), syncType:"

    invoke-direct {v7, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/tencent/tccsync/RemoteSync$SyncType;->toInt()I

    move-result v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v3, :cond_9

    const-string v3, ""

    :cond_9
    invoke-virtual {v0, v5, v1, v3}, Lcom/tencent/tccsync/RemoteSync;->addDataSource(Lcom/tencent/tccsync/RemoteSync$SyncType;Lcom/tencent/tccsync/ITccSyncDbAdapter;Ljava/lang/String;)V

    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto/16 :goto_1

    :cond_a
    iget-boolean v2, p0, Lcl;->t:Z

    if-nez v2, :cond_3

    const-string v2, "SyncModel"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "work(), do,while entry/asyncnext leave time: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0}, Lcom/tencent/tccsync/RemoteSync;->getPostUrl()Ljava/lang/String;

    move-result-object v4

    :try_start_0
    invoke-virtual {v0}, Lcom/tencent/tccsync/RemoteSync;->GetPostBuf()[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_6
    if-nez v1, :cond_c

    const-string v1, "SyncModel"

    const-string v3, "work(), GetPostBuf == null"

    invoke-static {v1, v3}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-array v1, v13, [B

    aput-byte v13, v1, v8

    :cond_b
    :goto_7
    :try_start_1
    invoke-static {}, Lcj;->a()Lcj;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcj;->a(Ljava/lang/String;)Ldd;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v3

    if-nez v3, :cond_d

    :try_start_2
    sget-object v1, Lcf$a;->c:Lcf$a;

    iget-object v4, p0, Lcl;->v:Ljava/lang/String;

    iput-object v4, p0, Lcl;->g:Ljava/lang/String;

    const-string v4, "SyncModel"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "work(), "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcl;->v:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\u8fde\u63a5\u6c60\u5df2\u6ee1"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_8
    if-eqz v3, :cond_15

    invoke-virtual {v3}, Ldd;->d()V

    invoke-static {}, Lcj;->a()Lcj;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcj;->a(Ldd;)V

    move v14, v2

    move-object v2, v1

    move v1, v14

    goto/16 :goto_3

    :catch_0
    move-exception v1

    const-string v5, "SyncModel"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "work(), GetPostBuf e = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v3

    goto :goto_6

    :cond_c
    array-length v3, v1

    if-nez v3, :cond_b

    const-string v1, "SyncModel"

    const-string v3, "work(), GetPostBuf len == 0"

    invoke-static {v1, v3}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-array v1, v13, [B

    const/4 v3, 0x2

    aput-byte v3, v1, v8

    goto :goto_7

    :cond_d
    const/4 v4, 0x6

    :try_start_3
    invoke-virtual {v3, v4}, Ldd;->a(I)V

    invoke-virtual {v3, v1}, Ldd;->a([B)I

    invoke-virtual {v3}, Ldd;->a()I

    move-result v4

    const/16 v5, 0xc8

    if-eq v5, v4, :cond_e

    sget-object v1, Lcf$a;->c:Lcf$a;

    iget-object v5, p0, Lcl;->v:Ljava/lang/String;

    iput-object v5, p0, Lcl;->g:Ljava/lang/String;

    const-string v5, "SyncModel"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "work(), "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcl;->v:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " postRes="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_8

    :catch_1
    move-exception v1

    move-object v4, v3

    move-object v3, v1

    :goto_9
    :try_start_4
    sget-object v1, Lcf$a;->c:Lcf$a;

    iget-object v5, p0, Lcl;->v:Ljava/lang/String;

    iput-object v5, p0, Lcl;->g:Ljava/lang/String;

    const-string v5, "SyncModel"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "work(),"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcl;->v:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Exception="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Ldk;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v4, :cond_15

    invoke-virtual {v4}, Ldd;->d()V

    invoke-static {}, Lcj;->a()Lcj;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcj;->a(Ldd;)V

    move v14, v2

    move-object v2, v1

    move v1, v14

    goto/16 :goto_3

    :cond_e
    :try_start_5
    const-string v4, "SyncModel"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "work(), post leave time: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v4, p0, Lcl;->r:J

    array-length v6, v1

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcl;->r:J

    const-string v4, "SyncModel"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "work(),POST UPLOAD TOTAL COUNT = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/Long;

    iget-wide v11, p0, Lcl;->r:J

    invoke-direct {v6, v11, v12}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v6}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v4, p0, Lcl;->t:Z

    if-nez v4, :cond_16

    invoke-virtual {v3}, Ldd;->c()[B

    move-result-object v4

    if-nez v4, :cond_10

    sget-object v1, Lcf$a;->c:Lcf$a;

    iget-object v4, p0, Lcl;->v:Ljava/lang/String;

    iput-object v4, p0, Lcl;->g:Ljava/lang/String;

    const-string v4, "SyncModel"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "work(), "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcl;->v:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " respBody == null"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_8

    :catchall_0
    move-exception v0

    :goto_a
    if-eqz v3, :cond_f

    invoke-virtual {v3}, Ldd;->d()V

    invoke-static {}, Lcj;->a()Lcj;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcj;->a(Ldd;)V

    :cond_f
    throw v0

    :cond_10
    :try_start_6
    iget-wide v5, p0, Lcl;->s:J

    array-length v7, v4

    int-to-long v11, v7

    add-long/2addr v5, v11

    iput-wide v5, p0, Lcl;->s:J

    const-string v5, "SyncModel"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "work(),POST DOWNLOAD TOTAL COUNT = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/Long;

    iget-wide v11, p0, Lcl;->s:J

    invoke-direct {v7, v11, v12}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v7}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    if-eqz v3, :cond_11

    invoke-virtual {v3}, Ldd;->d()V

    invoke-static {}, Lcj;->a()Lcj;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcj;->a(Ldd;)V

    :cond_11
    const-string v3, "SyncModel"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "work(),writeBackRecvBuf entry time: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/tencent/tccsync/RemoteSync;->writeBackRecvBuf([B)V

    const-string v3, "SyncModel"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "work(),writeBackRecvBuf leave time: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "SyncModel"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "work(),asyncNext entry time: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/tccsync/RemoteSync;->next()I

    move-result v3

    const-string v4, "SyncModel"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "work(),statucRemoteSync: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_b
    const/4 v4, 0x3

    if-eq v4, v3, :cond_12

    move v14, v2

    move v2, v3

    move-object v3, v1

    move v1, v14

    goto/16 :goto_2

    :cond_12
    invoke-virtual {v0}, Lcom/tencent/tccsync/RemoteSync;->nextStep()I

    move-result v3

    goto :goto_b

    :cond_13
    invoke-virtual {v0}, Lcom/tencent/tccsync/RemoteSync;->getLastError()I

    move-result v3

    const-string v4, "SyncModel"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "work(),"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcl;->x:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v1, v13, :cond_14

    const/16 v1, -0x7dd7

    if-ne v3, v1, :cond_14

    sget-object v2, Lcf$a;->b:Lcf$a;

    invoke-static {}, Lcw;->d()Lcw;

    move-result-object v1

    invoke-virtual {v1}, Lcw;->a()V

    goto/16 :goto_4

    :cond_14
    sget-object v1, Lcf$a;->c:Lcf$a;

    if-eq v2, v1, :cond_4

    if-eqz v3, :cond_4

    sget-object v2, Lcf$a;->c:Lcf$a;

    iget-object v1, p0, Lcl;->w:Ljava/lang/String;

    iput-object v1, p0, Lcl;->g:Ljava/lang/String;

    const-string v1, "SyncModel"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "work(),"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcl;->x:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :catchall_1
    move-exception v0

    move-object v3, v9

    goto/16 :goto_a

    :catchall_2
    move-exception v0

    move-object v3, v4

    goto/16 :goto_a

    :catch_2
    move-exception v1

    move-object v3, v1

    move-object v4, v9

    goto/16 :goto_9

    :cond_15
    move v14, v2

    move-object v2, v1

    move v1, v14

    goto/16 :goto_3

    :cond_16
    move-object v1, v10

    goto/16 :goto_8

    :cond_17
    move-object v5, v9

    goto/16 :goto_5
.end method

.method private static synthetic m()[I
    .locals 3

    sget-object v0, Lcl;->I:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/tencent/tccsync/RemoteSync$SyncType;->values()[Lcom/tencent/tccsync/RemoteSync$SyncType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/tencent/tccsync/RemoteSync$SyncType;->SYNC_COVER_SERVER:Lcom/tencent/tccsync/RemoteSync$SyncType;

    invoke-virtual {v1}, Lcom/tencent/tccsync/RemoteSync$SyncType;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_8

    :goto_1
    :try_start_1
    sget-object v1, Lcom/tencent/tccsync/RemoteSync$SyncType;->SYNC_NONE:Lcom/tencent/tccsync/RemoteSync$SyncType;

    invoke-virtual {v1}, Lcom/tencent/tccsync/RemoteSync$SyncType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_7

    :goto_2
    :try_start_2
    sget-object v1, Lcom/tencent/tccsync/RemoteSync$SyncType;->SYNC_ONE_WAY_FROM_CLIENT:Lcom/tencent/tccsync/RemoteSync$SyncType;

    invoke-virtual {v1}, Lcom/tencent/tccsync/RemoteSync$SyncType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_6

    :goto_3
    :try_start_3
    sget-object v1, Lcom/tencent/tccsync/RemoteSync$SyncType;->SYNC_ONE_WAY_FROM_SERVER:Lcom/tencent/tccsync/RemoteSync$SyncType;

    invoke-virtual {v1}, Lcom/tencent/tccsync/RemoteSync$SyncType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_5

    :goto_4
    :try_start_4
    sget-object v1, Lcom/tencent/tccsync/RemoteSync$SyncType;->SYNC_REFRESH_FROM_CLIENT:Lcom/tencent/tccsync/RemoteSync$SyncType;

    invoke-virtual {v1}, Lcom/tencent/tccsync/RemoteSync$SyncType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :goto_5
    :try_start_5
    sget-object v1, Lcom/tencent/tccsync/RemoteSync$SyncType;->SYNC_REFRESH_FROM_SERVER:Lcom/tencent/tccsync/RemoteSync$SyncType;

    invoke-virtual {v1}, Lcom/tencent/tccsync/RemoteSync$SyncType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_3

    :goto_6
    :try_start_6
    sget-object v1, Lcom/tencent/tccsync/RemoteSync$SyncType;->SYNC_RESTORE_FROM_SERVER:Lcom/tencent/tccsync/RemoteSync$SyncType;

    invoke-virtual {v1}, Lcom/tencent/tccsync/RemoteSync$SyncType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_2

    :goto_7
    :try_start_7
    sget-object v1, Lcom/tencent/tccsync/RemoteSync$SyncType;->SYNC_SLOW_SYNC:Lcom/tencent/tccsync/RemoteSync$SyncType;

    invoke-virtual {v1}, Lcom/tencent/tccsync/RemoteSync$SyncType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_1

    :goto_8
    :try_start_8
    sget-object v1, Lcom/tencent/tccsync/RemoteSync$SyncType;->SYNC_TWO_WAY:Lcom/tencent/tccsync/RemoteSync$SyncType;

    invoke-virtual {v1}, Lcom/tencent/tccsync/RemoteSync$SyncType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_0

    :goto_9
    sput-object v0, Lcl;->I:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_9

    :catch_1
    move-exception v1

    goto :goto_8

    :catch_2
    move-exception v1

    goto :goto_7

    :catch_3
    move-exception v1

    goto :goto_6

    :catch_4
    move-exception v1

    goto :goto_5

    :catch_5
    move-exception v1

    goto :goto_4

    :catch_6
    move-exception v1

    goto :goto_3

    :catch_7
    move-exception v1

    goto :goto_2

    :catch_8
    move-exception v1

    goto :goto_1
.end method

.method private static synthetic n()[I
    .locals 3

    sget-object v0, Lcl;->J:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->values()[Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->BOOKMARK:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    invoke-virtual {v1}, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_d

    :goto_1
    :try_start_1
    sget-object v1, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->BWLIST:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    invoke-virtual {v1}, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_c

    :goto_2
    :try_start_2
    sget-object v1, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->CALLLOG:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    invoke-virtual {v1}, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_b

    :goto_3
    :try_start_3
    sget-object v1, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->CONTACT:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    invoke-virtual {v1}, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_a

    :goto_4
    :try_start_4
    sget-object v1, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->EVENT:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    invoke-virtual {v1}, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_9

    :goto_5
    :try_start_5
    sget-object v1, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->MMS:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    invoke-virtual {v1}, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_8

    :goto_6
    :try_start_6
    sget-object v1, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->NOTE:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    invoke-virtual {v1}, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_7

    :goto_7
    :try_start_7
    sget-object v1, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->QQBROWSER_BOOKMARK:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    invoke-virtual {v1}, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_6

    :goto_8
    :try_start_8
    sget-object v1, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->SECSMS:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    invoke-virtual {v1}, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_5

    :goto_9
    :try_start_9
    sget-object v1, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->SMS:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    invoke-virtual {v1}, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_4

    :goto_a
    :try_start_a
    sget-object v1, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->SOFT:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    invoke-virtual {v1}, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_3

    :goto_b
    :try_start_b
    sget-object v1, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->TNOTE:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    invoke-virtual {v1}, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_2

    :goto_c
    :try_start_c
    sget-object v1, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->TODO:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    invoke-virtual {v1}, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_1

    :goto_d
    :try_start_d
    sget-object v1, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->UNKNOW:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    invoke-virtual {v1}, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_0

    :goto_e
    sput-object v0, Lcl;->J:[I

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto :goto_e

    :catch_1
    move-exception v1

    goto :goto_d

    :catch_2
    move-exception v1

    goto :goto_c

    :catch_3
    move-exception v1

    goto :goto_b

    :catch_4
    move-exception v1

    goto :goto_a

    :catch_5
    move-exception v1

    goto :goto_9

    :catch_6
    move-exception v1

    goto :goto_8

    :catch_7
    move-exception v1

    goto :goto_7

    :catch_8
    move-exception v1

    goto :goto_6

    :catch_9
    move-exception v1

    goto :goto_5

    :catch_a
    move-exception v1

    goto :goto_4

    :catch_b
    move-exception v1

    goto/16 :goto_3

    :catch_c
    move-exception v1

    goto/16 :goto_2

    :catch_d
    move-exception v1

    goto/16 :goto_1
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 3

    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->CONTACT:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    sget-object v1, Lcom/tencent/tccsync/RemoteSync$SyncType;->SYNC_NONE:Lcom/tencent/tccsync/RemoteSync$SyncType;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcl;->a(Landroid/content/Context;Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;Lcom/tencent/tccsync/RemoteSync$SyncType;Lcb;)V

    return-void
.end method

.method public final a(Landroid/content/Context;Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;Lcb;)V
    .locals 1

    sget-object v0, Lcom/tencent/tccsync/RemoteSync$SyncType;->SYNC_NONE:Lcom/tencent/tccsync/RemoteSync$SyncType;

    invoke-direct {p0, p1, p2, v0, p3}, Lcl;->a(Landroid/content/Context;Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;Lcom/tencent/tccsync/RemoteSync$SyncType;Lcb;)V

    return-void
.end method

.method public final a()Z
    .locals 1

    invoke-static {}, Lcw;->d()Lcw;

    move-result-object v0

    invoke-virtual {v0}, Lcw;->b()Z

    move-result v0

    return v0
.end method

.method public final b()Lcf$a;
    .locals 1

    sget-object v0, Lcom/tencent/tccsync/RemoteSync$SyncType;->SYNC_RESTORE_FROM_SERVER:Lcom/tencent/tccsync/RemoteSync$SyncType;

    iput-object v0, p0, Lcl;->c:Lcom/tencent/tccsync/RemoteSync$SyncType;

    invoke-direct {p0}, Lcl;->h()Lcf$a;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lcf$a;
    .locals 1

    sget-object v0, Lcom/tencent/tccsync/RemoteSync$SyncType;->SYNC_ONE_WAY_FROM_SERVER:Lcom/tencent/tccsync/RemoteSync$SyncType;

    iput-object v0, p0, Lcl;->c:Lcom/tencent/tccsync/RemoteSync$SyncType;

    invoke-direct {p0}, Lcl;->h()Lcf$a;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lcf$a;
    .locals 1

    sget-object v0, Lcom/tencent/tccsync/RemoteSync$SyncType;->SYNC_REFRESH_FROM_CLIENT:Lcom/tencent/tccsync/RemoteSync$SyncType;

    iput-object v0, p0, Lcl;->c:Lcom/tencent/tccsync/RemoteSync$SyncType;

    invoke-direct {p0}, Lcl;->h()Lcf$a;

    move-result-object v0

    return-object v0
.end method

.method public final e()Lcf$a;
    .locals 1

    sget-object v0, Lcom/tencent/tccsync/RemoteSync$SyncType;->SYNC_ONE_WAY_FROM_CLIENT:Lcom/tencent/tccsync/RemoteSync$SyncType;

    iput-object v0, p0, Lcl;->c:Lcom/tencent/tccsync/RemoteSync$SyncType;

    invoke-direct {p0}, Lcl;->h()Lcf$a;

    move-result-object v0

    return-object v0
.end method

.method public final f()V
    .locals 6

    const/4 v1, 0x1

    iget-object v0, p0, Lcl;->u:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcl;->u:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    iput-boolean v1, p0, Lcl;->t:Z

    sput-boolean v1, Lde;->c:Z

    const/4 v1, 0x2

    iget-wide v2, p0, Lcl;->A:J

    const/4 v4, 0x0

    iget v5, p0, Lcl;->h:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcl;->a(IJII)V

    return-void
.end method

.method public final g()I
    .locals 1

    iget v0, p0, Lcl;->q:I

    return v0
.end method

.method public final handleESyncProgressNotify(II)V
    .locals 0

    iput p1, p0, Lcl;->q:I

    return-void
.end method

.method public final handleESyncShDbBeginScan(II)V
    .locals 0

    return-void
.end method

.method public final handleESyncShDbClientAdd(II)V
    .locals 3

    iget v0, p0, Lcl;->n:I

    add-int/2addr v0, p2

    iput v0, p0, Lcl;->n:I

    const-string v0, "SyncModel"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleESyncShDbClientAdd(), clientAddedNum="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcl;->n:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " param1="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " param2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final handleESyncShDbClientDel(II)V
    .locals 3

    iget v0, p0, Lcl;->p:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcl;->p:I

    const-string v0, "SyncModel"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleESyncShDbClientDel() clientDeletedNum="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcl;->p:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " param1="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " param2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final handleESyncShDbClientMdf(II)V
    .locals 3

    iget v0, p0, Lcl;->o:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcl;->o:I

    const-string v0, "SyncModel"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleESyncShDbClientMdf() clientModifiedNum="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcl;->o:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " param1="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " param2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final handleESyncShDbScanOkNotify(II)V
    .locals 1

    iget v0, p0, Lcl;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcl;->i:I

    return-void
.end method

.method public final handleESyncShDbServerActionNotify(II)V
    .locals 1

    iget v0, p0, Lcl;->m:I

    add-int/2addr v0, p2

    iput v0, p0, Lcl;->m:I

    return-void
.end method

.method public final handleESyncShDbServerAdd(II)V
    .locals 3

    iget v0, p0, Lcl;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcl;->j:I

    const-string v0, "SyncModel"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleESyncShDbServerAdd() serverAddedNum="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcl;->j:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " param1="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " param2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final handleESyncShDbServerDel(II)V
    .locals 3

    iget v0, p0, Lcl;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcl;->l:I

    const-string v0, "SyncModel"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleESyncShDbServerDel() serverDeletedNum="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcl;->l:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " param1="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " param2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final handleESyncShDbServerMdf(II)V
    .locals 3

    iget v0, p0, Lcl;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcl;->k:I

    const-string v0, "SyncModel"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleESyncShDbServerMdf() serverModifiedNum="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcl;->k:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " param1="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " param2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final handleESyncShDbServerNumOfChange(II)V
    .locals 0

    return-void
.end method

.method public final handleESyncShMapServerRefresh(II)V
    .locals 0

    return-void
.end method
