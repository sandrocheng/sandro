.class public Lcom/tencent/powermanager/service/BatteryEventReceiver;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/powermanager/service/BatteryEventReceiver$a;
    }
.end annotation


# static fields
.field public static a:I

.field public static b:I

.field public static c:Z

.field public static d:Z

.field private static f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/powermanager/service/BatteryEventReceiver$a;",
            ">;"
        }
    .end annotation
.end field

.field private static g:Landroid/content/Intent;

.field private static n:I

.field private static o:I

.field private static p:Landroid/os/Handler;


# instance fields
.field private e:Ljava/lang/String;

.field private h:Z

.field private i:J

.field private j:I

.field private k:J

.field private l:I

.field private m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tencent/powermanager/service/BatteryEventReceiver;->f:Ljava/util/List;

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/powermanager/service/BatteryEventReceiver;->g:Landroid/content/Intent;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/powermanager/service/BatteryEventReceiver;->d:Z

    const/4 v0, 0x1

    sput v0, Lcom/tencent/powermanager/service/BatteryEventReceiver;->n:I

    const/4 v0, 0x2

    sput v0, Lcom/tencent/powermanager/service/BatteryEventReceiver;->o:I

    new-instance v0, Lbs;

    invoke-direct {v0}, Lbs;-><init>()V

    sput-object v0, Lcom/tencent/powermanager/service/BatteryEventReceiver;->p:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    const-wide/16 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-string v0, "BatteryEventReceiver"

    iput-object v0, p0, Lcom/tencent/powermanager/service/BatteryEventReceiver;->e:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/tencent/powermanager/service/BatteryEventReceiver;->h:Z

    iput-wide v3, p0, Lcom/tencent/powermanager/service/BatteryEventReceiver;->i:J

    iput v1, p0, Lcom/tencent/powermanager/service/BatteryEventReceiver;->j:I

    iput-wide v3, p0, Lcom/tencent/powermanager/service/BatteryEventReceiver;->k:J

    iput v1, p0, Lcom/tencent/powermanager/service/BatteryEventReceiver;->l:I

    iput-boolean v2, p0, Lcom/tencent/powermanager/service/BatteryEventReceiver;->m:Z

    return-void
.end method

.method public static synthetic a()I
    .locals 1

    sget v0, Lcom/tencent/powermanager/service/BatteryEventReceiver;->n:I

    return v0
.end method

.method public static a(Lcom/tencent/powermanager/service/BatteryEventReceiver$a;)V
    .locals 2

    sget-object v0, Lcom/tencent/powermanager/service/BatteryEventReceiver;->g:Landroid/content/Intent;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/powermanager/service/BatteryEventReceiver;->g:Landroid/content/Intent;

    invoke-interface {p0, v0}, Lcom/tencent/powermanager/service/BatteryEventReceiver$a;->a(Landroid/content/Intent;)V

    :cond_0
    const-class v1, Lcom/tencent/powermanager/service/BatteryEventReceiver;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/powermanager/service/BatteryEventReceiver;->f:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/tencent/powermanager/service/BatteryEventReceiver;->f:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static synthetic b()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/tencent/powermanager/service/BatteryEventReceiver;->f:Ljava/util/List;

    return-object v0
.end method

.method public static b(Lcom/tencent/powermanager/service/BatteryEventReceiver$a;)V
    .locals 5

    const-class v1, Lcom/tencent/powermanager/service/BatteryEventReceiver;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/powermanager/service/BatteryEventReceiver;->f:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    sget v2, Lcom/tencent/powermanager/service/BatteryEventReceiver;->o:I

    iput v2, v0, Landroid/os/Message;->what:I

    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v2, Lcom/tencent/powermanager/service/BatteryEventReceiver;->p:Landroid/os/Handler;

    const-wide/16 v3, 0x14

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static synthetic c()I
    .locals 1

    sget v0, Lcom/tencent/powermanager/service/BatteryEventReceiver;->o:I

    return v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/16 v9, 0x64

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    sput-object p2, Lcom/tencent/powermanager/service/BatteryEventReceiver;->g:Landroid/content/Intent;

    const-string v0, "level"

    invoke-virtual {p2, v0, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "scale"

    invoke-virtual {p2, v1, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    mul-int/lit8 v0, v0, 0x64

    div-int/2addr v0, v1

    sput v0, Lcom/tencent/powermanager/service/BatteryEventReceiver;->a:I

    if-le v0, v9, :cond_0

    sput v9, Lcom/tencent/powermanager/service/BatteryEventReceiver;->a:I

    :cond_0
    iget-object v0, p0, Lcom/tencent/powermanager/service/BatteryEventReceiver;->e:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "~~ACTION_BATTERY_CHANGED    ::   "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/tencent/powermanager/service/BatteryEventReceiver;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string v0, "status"

    invoke-virtual {p2, v0, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {}, Ls$a;->d()Lr;

    move-result-object v1

    if-ne v0, v11, :cond_e

    sget-boolean v0, Lcom/tencent/powermanager/service/BatteryEventReceiver;->c:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/tencent/powermanager/service/BatteryEventReceiver;->e:Ljava/lang/String;

    sput-boolean v10, Lcom/tencent/powermanager/service/BatteryEventReceiver;->c:Z

    iput-boolean v10, p0, Lcom/tencent/powermanager/service/BatteryEventReceiver;->h:Z

    const-string v0, "plugged"

    const/4 v2, -0x1

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v11, :cond_b

    sput v10, Lcom/tencent/powermanager/service/BatteryEventReceiver;->b:I

    :cond_1
    :goto_0
    const-string v0, "extra_charge_start"

    invoke-virtual {p2, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {p1}, Lac;->a(Landroid/content/Context;)V

    invoke-virtual {v1}, Lr;->x()V

    invoke-virtual {v1, v6, v7}, Lr;->b(J)V

    sget-object v0, Lai;->g:Lai;

    if-nez v0, :cond_2

    new-instance v0, Lai;

    invoke-direct {v0}, Lai;-><init>()V

    sput-object v0, Lai;->g:Lai;

    :cond_2
    sget-object v0, Lai;->g:Lai;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget v4, Lcom/tencent/powermanager/service/BatteryEventReceiver;->a:I

    iput-wide v6, v0, Lai;->a:J

    iput-wide v6, v0, Lai;->b:J

    iput-wide v6, v0, Lai;->c:J

    iput-wide v6, v0, Lai;->d:J

    iput-wide v6, v0, Lai;->e:J

    iput-wide v6, v0, Lai;->f:J

    const/16 v5, 0x5a

    if-ge v4, v5, :cond_c

    iput-wide v2, v0, Lai;->a:J

    :goto_1
    invoke-static {}, Lbr;->a()Lbr;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.tencent.powermanager.levelrecorder"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lbr;->a(Landroid/content/Intent;)V

    invoke-static {}, Lbo;->a()Lbo;

    move-result-object v0

    sget v2, Lcom/tencent/powermanager/service/BatteryEventReceiver;->a:I

    invoke-virtual {v0, v2}, Lbo;->a(I)V

    :cond_3
    :goto_2
    sget-boolean v0, Lcom/tencent/powermanager/service/BatteryEventReceiver;->c:Z

    if-eqz v0, :cond_6

    sget-object v0, Lai;->g:Lai;

    if-nez v0, :cond_4

    new-instance v0, Lai;

    invoke-direct {v0}, Lai;-><init>()V

    sput-object v0, Lai;->g:Lai;

    :cond_4
    sget-object v0, Lai;->g:Lai;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget v4, Lcom/tencent/powermanager/service/BatteryEventReceiver;->a:I

    const/16 v5, 0x5a

    if-ne v4, v5, :cond_13

    iget-wide v4, v0, Lai;->d:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_5

    iput-wide v2, v0, Lai;->d:J

    :cond_5
    iget-wide v4, v0, Lai;->b:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_6

    iput-wide v2, v0, Lai;->b:J

    :cond_6
    :goto_3
    sget-boolean v0, Lcom/tencent/powermanager/service/BatteryEventReceiver;->c:Z

    if-eqz v0, :cond_18

    iput-boolean v10, p0, Lcom/tencent/powermanager/service/BatteryEventReceiver;->m:Z

    iput v8, p0, Lcom/tencent/powermanager/service/BatteryEventReceiver;->l:I

    iget v0, p0, Lcom/tencent/powermanager/service/BatteryEventReceiver;->j:I

    if-nez v0, :cond_15

    sget v0, Lcom/tencent/powermanager/service/BatteryEventReceiver;->a:I

    iput v0, p0, Lcom/tencent/powermanager/service/BatteryEventReceiver;->j:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/tencent/powermanager/service/BatteryEventReceiver;->i:J

    :cond_7
    :goto_4
    sget v0, Lcom/tencent/powermanager/service/BatteryEventReceiver;->a:I

    const/16 v2, 0x14

    if-gt v0, v2, :cond_8

    sget-boolean v0, Lcom/tencent/powermanager/service/BatteryEventReceiver;->c:Z

    if-nez v0, :cond_8

    invoke-virtual {v1}, Lr;->t()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v1}, Lr;->v()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {v1}, Lr;->c()I

    move-result v0

    if-eq v0, v11, :cond_8

    invoke-virtual {v1}, Lr;->c()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_8

    invoke-static {}, Lcom/tencent/powermanager/uilib/view/BatteryLowTipsView;->f()V

    :cond_8
    sget v0, Lcom/tencent/powermanager/service/BatteryEventReceiver;->a:I

    const/16 v2, 0x14

    if-le v0, v2, :cond_9

    invoke-virtual {v1}, Lr;->v()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {v1, v8}, Lr;->j(Z)V

    :cond_9
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    sget v1, Lcom/tencent/powermanager/service/BatteryEventReceiver;->n:I

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v1, Lcom/tencent/powermanager/service/BatteryEventReceiver;->p:Landroid/os/Handler;

    const-wide/16 v2, 0x14

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    invoke-static {}, Laf;->b()V

    :cond_a
    return-void

    :cond_b
    if-ne v0, v10, :cond_1

    sput v11, Lcom/tencent/powermanager/service/BatteryEventReceiver;->b:I

    goto/16 :goto_0

    :cond_c
    if-ge v4, v9, :cond_d

    iput-wide v2, v0, Lai;->b:J

    goto/16 :goto_1

    :cond_d
    iput-wide v2, v0, Lai;->c:J

    goto/16 :goto_1

    :cond_e
    const/4 v2, 0x5

    if-ne v0, v2, :cond_10

    iget-object v0, p0, Lcom/tencent/powermanager/service/BatteryEventReceiver;->e:Ljava/lang/String;

    sget-boolean v0, Lcom/tencent/powermanager/service/BatteryEventReceiver;->c:Z

    if-eqz v0, :cond_3

    sput-boolean v8, Lcom/tencent/powermanager/service/BatteryEventReceiver;->c:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lr;->a(J)V

    invoke-virtual {v1, v9}, Lr;->d(I)V

    invoke-virtual {v1, v9}, Lr;->i(I)V

    sget-object v0, Lai;->g:Lai;

    if-nez v0, :cond_f

    new-instance v0, Lai;

    invoke-direct {v0}, Lai;-><init>()V

    sput-object v0, Lai;->g:Lai;

    :cond_f
    sget-object v0, Lai;->g:Lai;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget v4, Lcom/tencent/powermanager/service/BatteryEventReceiver;->a:I

    invoke-virtual {v0, v2, v3, v4}, Lai;->a(JI)V

    invoke-static {}, Lbr;->a()Lbr;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.tencent.powermanager.levelrecorder"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lbr;->b(Landroid/content/Intent;)V

    invoke-virtual {v1}, Lr;->q()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lbo;->a()Lbo;

    move-result-object v0

    invoke-virtual {v0}, Lbo;->d()V

    invoke-static {}, Lbo;->a()Lbo;

    move-result-object v0

    invoke-virtual {v0, v9}, Lbo;->a(I)V

    goto/16 :goto_2

    :cond_10
    const/4 v2, 0x4

    if-eq v0, v2, :cond_11

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    :cond_11
    iget-object v2, p0, Lcom/tencent/powermanager/service/BatteryEventReceiver;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "stop charge::"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    sget-boolean v0, Lcom/tencent/powermanager/service/BatteryEventReceiver;->c:Z

    if-eqz v0, :cond_3

    sput-boolean v8, Lcom/tencent/powermanager/service/BatteryEventReceiver;->c:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lr;->a(J)V

    sget v0, Lcom/tencent/powermanager/service/BatteryEventReceiver;->a:I

    invoke-virtual {v1, v0}, Lr;->d(I)V

    sget-object v0, Lai;->g:Lai;

    if-nez v0, :cond_12

    new-instance v0, Lai;

    invoke-direct {v0}, Lai;-><init>()V

    sput-object v0, Lai;->g:Lai;

    :cond_12
    sget-object v0, Lai;->g:Lai;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget v4, Lcom/tencent/powermanager/service/BatteryEventReceiver;->a:I

    invoke-virtual {v0, v2, v3, v4}, Lai;->a(JI)V

    invoke-static {}, Lbr;->a()Lbr;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.tencent.powermanager.levelrecorder"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lbr;->b(Landroid/content/Intent;)V

    goto/16 :goto_2

    :cond_13
    if-ne v4, v9, :cond_6

    iget-wide v4, v0, Lai;->e:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_14

    iput-wide v2, v0, Lai;->e:J

    :cond_14
    iget-wide v4, v0, Lai;->c:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_6

    iput-wide v2, v0, Lai;->c:J

    goto/16 :goto_3

    :cond_15
    sget v0, Lcom/tencent/powermanager/service/BatteryEventReceiver;->a:I

    iget v2, p0, Lcom/tencent/powermanager/service/BatteryEventReceiver;->j:I

    sub-int/2addr v0, v2

    if-lez v0, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-boolean v4, p0, Lcom/tencent/powermanager/service/BatteryEventReceiver;->h:Z

    if-eqz v4, :cond_16

    iput-boolean v8, p0, Lcom/tencent/powermanager/service/BatteryEventReceiver;->h:Z

    sput-boolean v8, Lcom/tencent/powermanager/service/BatteryEventReceiver;->d:Z

    :goto_5
    iput-wide v2, p0, Lcom/tencent/powermanager/service/BatteryEventReceiver;->i:J

    sget v0, Lcom/tencent/powermanager/service/BatteryEventReceiver;->a:I

    iput v0, p0, Lcom/tencent/powermanager/service/BatteryEventReceiver;->j:I

    goto/16 :goto_4

    :cond_16
    sget-boolean v4, Lcom/tencent/powermanager/service/BatteryEventReceiver;->d:Z

    if-eqz v4, :cond_17

    sput-boolean v8, Lcom/tencent/powermanager/service/BatteryEventReceiver;->d:Z

    goto :goto_5

    :cond_17
    iget-wide v4, p0, Lcom/tencent/powermanager/service/BatteryEventReceiver;->i:J

    sub-long v4, v2, v4

    int-to-long v6, v0

    div-long/2addr v4, v6

    sget v0, Lcom/tencent/powermanager/service/BatteryEventReceiver;->a:I

    sget v6, Lcom/tencent/powermanager/service/BatteryEventReceiver;->b:I

    invoke-static {v4, v5, v0, v6}, La;->a(JII)V

    goto :goto_5

    :cond_18
    iput v8, p0, Lcom/tencent/powermanager/service/BatteryEventReceiver;->j:I

    iget v0, p0, Lcom/tencent/powermanager/service/BatteryEventReceiver;->l:I

    if-nez v0, :cond_19

    sget v0, Lcom/tencent/powermanager/service/BatteryEventReceiver;->a:I

    iput v0, p0, Lcom/tencent/powermanager/service/BatteryEventReceiver;->l:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/tencent/powermanager/service/BatteryEventReceiver;->k:J

    goto/16 :goto_4

    :cond_19
    iget v0, p0, Lcom/tencent/powermanager/service/BatteryEventReceiver;->l:I

    sget v2, Lcom/tencent/powermanager/service/BatteryEventReceiver;->a:I

    sub-int/2addr v0, v2

    if-lez v0, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-boolean v4, p0, Lcom/tencent/powermanager/service/BatteryEventReceiver;->m:Z

    if-eqz v4, :cond_1a

    iput-boolean v8, p0, Lcom/tencent/powermanager/service/BatteryEventReceiver;->m:Z

    sput-boolean v8, Lcom/tencent/powermanager/service/BatteryEventReceiver;->d:Z

    :goto_6
    iput-wide v2, p0, Lcom/tencent/powermanager/service/BatteryEventReceiver;->k:J

    sget v0, Lcom/tencent/powermanager/service/BatteryEventReceiver;->a:I

    iput v0, p0, Lcom/tencent/powermanager/service/BatteryEventReceiver;->l:I

    goto/16 :goto_4

    :cond_1a
    sget-boolean v4, Lcom/tencent/powermanager/service/BatteryEventReceiver;->d:Z

    if-eqz v4, :cond_1b

    sput-boolean v8, Lcom/tencent/powermanager/service/BatteryEventReceiver;->d:Z

    goto :goto_6

    :cond_1b
    iget-wide v4, p0, Lcom/tencent/powermanager/service/BatteryEventReceiver;->k:J

    sub-long v4, v2, v4

    int-to-long v6, v0

    div-long/2addr v4, v6

    invoke-virtual {v1, v4, v5}, Lr;->c(J)V

    goto :goto_6
.end method
