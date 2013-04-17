.class public Lwr;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwr$b;,
        Lwr$a;
    }
.end annotation


# static fields
.field private static a:Lwr;


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private C:I

.field private D:I

.field private E:Ljava/lang/String;

.field private F:Ljava/lang/String;

.field private G:Landroid/os/Handler;

.field private H:Llt;

.field private I:Landroid/database/ContentObserver;

.field private b:Landroid/content/Context;

.field private c:Ljd;

.field private d:Lki;

.field private e:Lit;

.field private f:Lcom/tencent/tmsecure/module/network/NetworkManager;

.field private g:Lwr$b;

.field private h:Lho;

.field private i:Landroid/app/AlarmManager;

.field private j:Landroid/app/PendingIntent;

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ldv",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private l:Ljava/util/Timer;

.field private m:LQQPIM/STQueryInfo;

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "LQQPIM/STQueryInfo;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:I

.field private r:Z

.field private s:I

.field private t:I

.field private u:J

.field private v:I

.field private w:Z

.field private x:Z

.field private y:J

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lwr;->a:Lwr;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 7

    const-wide/16 v5, 0x0

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lwr;->c:Ljd;

    iput-object v1, p0, Lwr;->d:Lki;

    iput-object v1, p0, Lwr;->e:Lit;

    iput-object v1, p0, Lwr;->f:Lcom/tencent/tmsecure/module/network/NetworkManager;

    iput-object v1, p0, Lwr;->g:Lwr$b;

    iput-object v1, p0, Lwr;->i:Landroid/app/AlarmManager;

    iput-object v1, p0, Lwr;->j:Landroid/app/PendingIntent;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lwr;->k:Ljava/util/List;

    iput-object v1, p0, Lwr;->l:Ljava/util/Timer;

    iput-object v1, p0, Lwr;->m:LQQPIM/STQueryInfo;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lwr;->n:Ljava/util/List;

    iput-object v1, p0, Lwr;->o:Ljava/lang/String;

    iput-object v1, p0, Lwr;->p:Ljava/lang/String;

    iput v4, p0, Lwr;->q:I

    iput-boolean v4, p0, Lwr;->r:Z

    iput v2, p0, Lwr;->s:I

    iput v4, p0, Lwr;->t:I

    iput-wide v5, p0, Lwr;->u:J

    const/16 v0, -0x6f

    iput v0, p0, Lwr;->v:I

    iput-boolean v2, p0, Lwr;->w:Z

    iput-boolean v4, p0, Lwr;->x:Z

    iput-wide v5, p0, Lwr;->y:J

    new-instance v0, Lws;

    invoke-direct {v0, p0}, Lws;-><init>(Lwr;)V

    iput-object v0, p0, Lwr;->G:Landroid/os/Handler;

    new-instance v0, Lwt;

    invoke-direct {v0, p0}, Lwt;-><init>(Lwr;)V

    iput-object v0, p0, Lwr;->H:Llt;

    new-instance v0, Lwu;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lwu;-><init>(Lwr;Landroid/os/Handler;)V

    iput-object v0, p0, Lwr;->I:Landroid/database/ContentObserver;

    iput-object p1, p0, Lwr;->b:Landroid/content/Context;

    iget-object v0, p0, Lwr;->b:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lwr;->i:Landroid/app/AlarmManager;

    iget-object v0, p0, Lwr;->b:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lwr;->b:Landroid/content/Context;

    const-class v3, Lcom/tencent/qqpimsecure/service/OperatorDataSyncTaskReceiver;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x800

    invoke-static {v0, v4, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lwr;->j:Landroid/app/PendingIntent;

    const-class v0, Lcom/tencent/tmsecure/module/tools/SingletonManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/tools/SingletonManager;

    const-class v1, Lki;

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/tools/SingletonManager;->getSingleton(Ljava/lang/Class;)Lcom/tencent/tmsecure/module/tools/ISingleton;

    move-result-object v0

    check-cast v0, Lki;

    iput-object v0, p0, Lwr;->d:Lki;

    invoke-static {}, Ljd;->a()Ljd;

    move-result-object v0

    iput-object v0, p0, Lwr;->c:Ljd;

    new-instance v0, Liu;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Liu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lwr;->e:Lit;

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    iput-object v0, p0, Lwr;->h:Lho;

    const-class v0, Lcom/tencent/tmsecure/module/network/NetworkManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/network/NetworkManager;

    iput-object v0, p0, Lwr;->f:Lcom/tencent/tmsecure/module/network/NetworkManager;

    new-instance v0, Lwr$b;

    invoke-direct {v0}, Lwr$b;-><init>()V

    iput-object v0, p0, Lwr;->g:Lwr$b;

    return-void
.end method

.method private a(Lcom/tencent/tccdb/SmsInfo;)I
    .locals 14

    const-string v0, "kfc"

    const-string v1, "doUpdateMatchRule"

    invoke-static {v0, v1}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    if-nez p1, :cond_0

    const/16 v0, -0x6f

    :goto_0
    return v0

    :cond_0
    iget-object v2, p1, Lcom/tencent/tccdb/SmsInfo;->sender:Ljava/lang/String;

    iget-object v3, p1, Lcom/tencent/tccdb/SmsInfo;->sms:Ljava/lang/String;

    if-eqz v2, :cond_1

    const-string v0, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz v3, :cond_1

    const-string v0, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string v0, "kfc"

    const-string v1, "doUpdateMatchRule, sms is null! xxxxxxxx"

    invoke-static {v0, v1}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const/16 v0, -0x6f

    goto :goto_0

    :cond_2
    const-string v0, "kfc"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "update match rule for "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v6, ""

    iget-object v0, p0, Lwr;->c:Ljd;

    sget-object v1, LQQPIM/EQueryType;->E_QUERY_TRAFFIC:LQQPIM/EQueryType;

    invoke-virtual {v1}, LQQPIM/EQueryType;->value()I

    move-result v1

    invoke-virtual {v0, v1}, Ljd;->b(I)LQQPIM/STQueryInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v6, v0, LQQPIM/STQueryInfo;->strCode:Ljava/lang/String;

    :cond_3
    new-instance v0, LQQPIM/STSmsInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v7, 0x3e8

    div-long/2addr v4, v7

    long-to-int v1, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lwr;->h:Lho;

    invoke-virtual {v5}, Lho;->cr()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lwr;->h:Lho;

    invoke-virtual {v5}, Lho;->cs()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lwr;->h:Lho;

    invoke-virtual {v5}, Lho;->cu()Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x271a

    iget-object v8, p0, Lwr;->e:Lit;

    invoke-virtual {v8}, Lit;->getUsedForMonth()J

    move-result-wide v8

    const-wide/16 v10, 0x400

    div-long/2addr v8, v10

    long-to-int v8, v8

    iget-object v9, p0, Lwr;->b:Landroid/content/Context;

    invoke-static {v9}, Lft;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lwr;->e:Lit;

    invoke-virtual {v10}, Lit;->getTotalForMonth()J

    move-result-wide v10

    const-wide/16 v12, 0x400

    div-long/2addr v10, v12

    long-to-int v10, v10

    iget v11, p0, Lwr;->s:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_4

    const/4 v11, 0x1

    :goto_1
    invoke-direct/range {v0 .. v11}, LQQPIM/STSmsInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;IZ)V

    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    const-class v1, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;

    invoke-static {v1}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v1

    check-cast v1, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;

    invoke-virtual {v1, v0, v2, v3}, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->getTrafficTemplate(LQQPIM/STSmsInfo;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/STRetInfo;

    if-eqz v0, :cond_6

    iget v1, v0, LQQPIM/STRetInfo;->nStopType:I

    const-string v3, "kfc"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "stopType: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " msg: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, LQQPIM/STRetInfo;->strMsg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v3, 0x1

    if-ne v3, v1, :cond_5

    const-string v2, "kfc"

    const-string v3, "stop, free or TD"

    invoke-static {v2, v3}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, p0, Lwr;->c:Ljd;

    invoke-virtual {v2, v1}, Ljd;->i(I)V

    iget-object v2, p0, Lwr;->c:Ljd;

    iget-object v0, v0, LQQPIM/STRetInfo;->strMsg:Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Ljd;->b(ILjava/lang/String;)V

    iget-object v0, p0, Lwr;->c:Ljd;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljd;->e(J)V

    iget-object v0, p0, Lwr;->c:Ljd;

    invoke-virtual {v0}, Ljd;->b()V

    const/16 v0, -0x22

    goto/16 :goto_0

    :cond_4
    const/4 v11, 0x0

    goto :goto_1

    :cond_5
    const-string v0, "kfc"

    const-string v1, "donot stop"

    invoke-static {v0, v1}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_6
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/STTrafficTemplate;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, LQQPIM/STTrafficTemplate;->getMatchRules()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, LQQPIM/STTrafficTemplate;->getMatchRules()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_7

    iget-object v1, p0, Lwr;->c:Ljd;

    invoke-virtual {v1}, Ljd;->b()V

    iget-object v1, p0, Lwr;->c:Ljd;

    invoke-virtual {v1, v0}, Ljd;->a(Ljava/util/List;)V

    iget-object v0, p0, Lwr;->c:Ljd;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljd;->c(J)V

    const-string v0, "kfc"

    const-string v1, "doUpdateMatchRule success"

    invoke-static {v0, v1}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_7
    const-string v0, "kfc"

    const-string v1, "Match rules from server is empty! xxxxxxxxxxx"

    invoke-static {v0, v1}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const/16 v0, -0x1f

    goto/16 :goto_0

    :cond_8
    const-string v0, "kfc"

    const-string v1, "Match rules from server is null! xxxxxxxxxxx"

    invoke-static {v0, v1}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const/16 v0, -0x20

    goto/16 :goto_0

    :cond_9
    const-string v1, "kfc"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getTrafficTemplate error xxxxxxxxxxx, errorCode =  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const/16 v0, -0x21

    goto/16 :goto_0
.end method

.method private a(Ljava/util/List;Lcom/tencent/tccdb/SmsInfo;Z)I
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/tccdb/MatchRule;",
            ">;",
            "Lcom/tencent/tccdb/SmsInfo;",
            "Z)I"
        }
    .end annotation

    const/16 v4, -0x2d

    const/16 v10, 0xa

    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v3, "kfc"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v0, "doFlowAnalysis1, match rule type: "

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p3, :cond_0

    const-string v0, "used"

    :goto_0
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p1, :cond_f

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_f

    new-instance v6, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v6}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    if-eqz p3, :cond_5

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v0, v1

    move v3, v1

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tccdb/MatchRule;

    iget-object v7, p0, Lwr;->b:Landroid/content/Context;

    invoke-static {v7, p2, v0, v6}, Lcom/tencent/tccdb/SmsParser;->getNumberEntrance(Landroid/content/Context;Lcom/tencent/tccdb/SmsInfo;Lcom/tencent/tccdb/MatchRule;Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tccdb/Ret;

    iget v0, v0, Lcom/tencent/tccdb/Ret;->number:I

    add-int/2addr v0, v3

    move v3, v0

    move v0, v2

    goto :goto_1

    :cond_0
    const-string v0, "left"

    goto :goto_0

    :cond_1
    move v1, v0

    :cond_2
    if-eqz v1, :cond_4

    const-string v0, "kfc"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "used(K): "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    if-lez v3, :cond_3

    iget v0, p0, Lwr;->s:I

    if-eq v0, v5, :cond_3

    iget-object v0, p0, Lwr;->e:Lit;

    int-to-long v3, v3

    shl-long/2addr v3, v10

    invoke-virtual {v0, v3, v4}, Lit;->setUsedForMonth(J)V

    iget-object v0, p0, Lwr;->f:Lcom/tencent/tmsecure/module/network/NetworkManager;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/network/NetworkManager;->notifyConfigChange()V

    :cond_3
    :goto_2
    return v2

    :cond_4
    const/16 v2, -0x2a

    goto :goto_2

    :cond_5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v0, v1

    move v3, v1

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tccdb/MatchRule;

    iget-object v8, p0, Lwr;->b:Landroid/content/Context;

    invoke-static {v8, p2, v0, v6}, Lcom/tencent/tccdb/SmsParser;->getNumberEntrance(Landroid/content/Context;Lcom/tencent/tccdb/SmsInfo;Lcom/tencent/tccdb/MatchRule;Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tccdb/Ret;

    iget v0, v0, Lcom/tencent/tccdb/Ret;->number:I

    add-int/2addr v0, v3

    move v3, v0

    move v0, v2

    goto :goto_3

    :cond_6
    move v0, v1

    :cond_7
    if-eqz v0, :cond_e

    const-string v0, "kfc"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "left(K): "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lwr;->e:Lit;

    invoke-virtual {v0}, Lit;->getTotalForMonth()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lwr;->r:Z

    if-eqz v0, :cond_10

    invoke-direct {p0, v4}, Lwr;->c(I)V

    move v2, v4

    goto :goto_2

    :cond_8
    if-nez v3, :cond_a

    iget-object v0, p0, Lwr;->e:Lit;

    invoke-virtual {v0}, Lit;->getUsedForMonth()J

    move-result-wide v0

    cmp-long v0, v0, v6

    if-gez v0, :cond_9

    const-wide/16 v0, 0x400

    div-long v0, v6, v0

    long-to-int v0, v0

    iget v1, p0, Lwr;->s:I

    if-eq v1, v5, :cond_9

    iget-object v1, p0, Lwr;->e:Lit;

    int-to-long v2, v0

    shl-long/2addr v2, v10

    invoke-virtual {v1, v2, v3}, Lit;->setUsedForMonth(J)V

    iget-object v0, p0, Lwr;->f:Lcom/tencent/tmsecure/module/network/NetworkManager;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/network/NetworkManager;->notifyConfigChange()V

    :cond_9
    move v2, v5

    goto :goto_2

    :cond_a
    const-wide/16 v8, 0x400

    div-long/2addr v6, v8

    int-to-long v3, v3

    sub-long v3, v6, v3

    long-to-int v0, v3

    if-gez v0, :cond_c

    const/16 v4, -0x29

    iget-object v0, p0, Lwr;->e:Lit;

    iget v3, p0, Lwr;->s:I

    if-nez v3, :cond_b

    move v1, v2

    :cond_b
    invoke-virtual {v0, v2, v1}, Lit;->a(ZZ)V

    move v2, v4

    goto/16 :goto_2

    :cond_c
    iget v1, p0, Lwr;->s:I

    if-eq v1, v5, :cond_d

    iget-object v1, p0, Lwr;->e:Lit;

    int-to-long v2, v0

    shl-long/2addr v2, v10

    invoke-virtual {v1, v2, v3}, Lit;->setUsedForMonth(J)V

    iget-object v0, p0, Lwr;->f:Lcom/tencent/tmsecure/module/network/NetworkManager;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/network/NetworkManager;->notifyConfigChange()V

    :cond_d
    move v0, v5

    :goto_4
    move v2, v0

    goto/16 :goto_2

    :cond_e
    const/16 v2, -0x2a

    goto/16 :goto_2

    :cond_f
    const-string v0, "kfc"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "doFlowAnalysis1, rules is empty! xxxxxx, used template "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const/16 v2, -0x2e

    goto/16 :goto_2

    :cond_10
    move v0, v4

    goto :goto_4
.end method

.method static synthetic a(Lwr;I)I
    .locals 0

    iput p1, p0, Lwr;->t:I

    return p1
.end method

.method static synthetic a(Lwr;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lwr;->B:Ljava/lang/String;

    return-object p1
.end method

.method public static a(Landroid/content/Context;)Lwr;
    .locals 2

    sget-object v0, Lwr;->a:Lwr;

    if-nez v0, :cond_1

    const-class v1, Lwr;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lwr;->a:Lwr;

    if-nez v0, :cond_0

    new-instance v0, Lwr;

    invoke-direct {v0, p0}, Lwr;-><init>(Landroid/content/Context;)V

    sput-object v0, Lwr;->a:Lwr;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lwr;->a:Lwr;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(I)V
    .locals 7

    const/4 v2, 0x1

    const/16 v6, -0x36

    const/4 v1, 0x0

    const-string v0, "kfc"

    const-string v3, "start"

    invoke-static {v0, v3}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "kfc"

    const-string v3, "prepareQueryInfo"

    invoke-static {v0, v3}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    move v0, v2

    :goto_1
    if-nez v0, :cond_e

    iput v6, p0, Lwr;->v:I

    iget v0, p0, Lwr;->v:I

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const-string v1, "ignore"

    const-string v2, "ignore"

    invoke-direct {p0, v0, p1, v1, v2}, Lwr;->a(IILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-boolean v0, p0, Lwr;->r:Z

    if-eqz v0, :cond_2

    invoke-direct {p0, v6}, Lwr;->c(I)V

    :cond_2
    :goto_2
    return-void

    :pswitch_0
    iget-object v0, p0, Lwr;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lwr;->c:Ljd;

    sget-object v3, LQQPIM/EQueryType;->E_QUERY_TRAFFIC:LQQPIM/EQueryType;

    invoke-virtual {v3}, LQQPIM/EQueryType;->value()I

    move-result v3

    invoke-virtual {v0, v3}, Ljd;->b(I)LQQPIM/STQueryInfo;

    move-result-object v0

    iput-object v0, p0, Lwr;->m:LQQPIM/STQueryInfo;

    iget-object v0, p0, Lwr;->c:Ljd;

    invoke-virtual {v0}, Ljd;->v()Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "kfc"

    const-string v3, "need select query code"

    invoke-static {v0, v3}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lwr;->c:Ljd;

    invoke-virtual {v0}, Ljd;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "kfc"

    const-string v3, "need update query code"

    invoke-static {v0, v3}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lwr;->t()I

    :cond_3
    iget-object v0, p0, Lwr;->c:Ljd;

    sget-object v3, LQQPIM/EQueryType;->E_QUERY_TRAFFIC:LQQPIM/EQueryType;

    invoke-virtual {v3}, LQQPIM/EQueryType;->value()I

    move-result v3

    const-string v4, "00000"

    invoke-virtual {v0, v3, v4}, Ljd;->a(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_7

    :cond_4
    :goto_3
    iget-object v0, p0, Lwr;->m:LQQPIM/STQueryInfo;

    if-eqz v0, :cond_a

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/STQueryInfo;

    iget-object v4, p0, Lwr;->m:LQQPIM/STQueryInfo;

    invoke-virtual {v4}, LQQPIM/STQueryInfo;->getNQuerytype()I

    move-result v4

    invoke-virtual {v0}, LQQPIM/STQueryInfo;->getNQuerytype()I

    move-result v5

    if-ne v4, v5, :cond_6

    iget-object v4, p0, Lwr;->m:LQQPIM/STQueryInfo;

    invoke-virtual {v4}, LQQPIM/STQueryInfo;->getStrCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, LQQPIM/STQueryInfo;->getStrCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lwr;->m:LQQPIM/STQueryInfo;

    invoke-virtual {v4}, LQQPIM/STQueryInfo;->getStrPort()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, LQQPIM/STQueryInfo;->getStrPort()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    :cond_6
    iget-object v4, p0, Lwr;->n:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    const-string v0, "kfc"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "before makeUnique, size = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_8
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/STQueryInfo;

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_9
    const-string v0, "kfc"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "after makeUnique, size = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_a
    iput-object v3, p0, Lwr;->n:Ljava/util/List;

    iget-object v0, p0, Lwr;->n:Ljava/util/List;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lwr;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_b

    iget-object v0, p0, Lwr;->n:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/STQueryInfo;

    iput-object v0, p0, Lwr;->m:LQQPIM/STQueryInfo;

    :cond_b
    :goto_6
    const-string v0, "kfc"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "padding query count = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lwr;->n:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lwr;->m:LQQPIM/STQueryInfo;

    if-nez v0, :cond_0

    const-string v0, "kfc"

    const-string v3, "no query code"

    invoke-static {v0, v3}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    move v0, v1

    goto/16 :goto_1

    :cond_c
    const-string v0, "kfc"

    const-string v3, "no need select query code"

    invoke-static {v0, v3}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_6

    :pswitch_1
    iget-object v0, p0, Lwr;->c:Ljd;

    sget-object v3, LQQPIM/EQueryType;->E_QUERY_TRAFFIC:LQQPIM/EQueryType;

    invoke-virtual {v3}, LQQPIM/EQueryType;->value()I

    move-result v3

    invoke-virtual {v0, v3}, Ljd;->b(I)LQQPIM/STQueryInfo;

    move-result-object v0

    iput-object v0, p0, Lwr;->m:LQQPIM/STQueryInfo;

    iget-object v0, p0, Lwr;->m:LQQPIM/STQueryInfo;

    if-eqz v0, :cond_d

    const-string v0, "kfc"

    const-string v1, "have success record, do sync task and report"

    invoke-static {v0, v1}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lwr;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto/16 :goto_0

    :cond_d
    const-string v0, "kfc"

    const-string v3, "no success record, do nothing"

    invoke-static {v0, v3}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    move v0, v1

    goto/16 :goto_1

    :cond_e
    invoke-direct {p0}, Lwr;->u()V

    iget-boolean v0, p0, Lwr;->r:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lwr;->b:Landroid/content/Context;

    const v1, 0x7f0b017b

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;I)V

    :cond_f
    const/16 v0, -0x6f

    iput v0, p0, Lwr;->v:I

    iput-boolean v2, p0, Lwr;->w:Z

    invoke-direct {p0}, Lwr;->q()V

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private a(IILjava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-wide/16 v6, 0x400

    const/4 v0, 0x1

    new-instance v1, LQQPIM/STReportError;

    invoke-direct {v1}, LQQPIM/STReportError;-><init>()V

    iput p1, v1, LQQPIM/STReportError;->nerrorcode:I

    if-eqz p3, :cond_1

    :goto_0
    iput-object p3, v1, LQQPIM/STReportError;->sms:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v2, v2

    iput v2, v1, LQQPIM/STReportError;->ntime:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lwr;->h:Lho;

    invoke-virtual {v3}, Lho;->cr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lwr;->h:Lho;

    invoke-virtual {v3}, Lho;->cs()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, LQQPIM/STReportError;->strarea:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lwr;->h:Lho;

    invoke-virtual {v3}, Lho;->cu()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, LQQPIM/STReportError;->strsimtype:Ljava/lang/String;

    if-eqz p4, :cond_2

    :goto_1
    iput-object p4, v1, LQQPIM/STReportError;->strqueryorder:Ljava/lang/String;

    if-ne v0, p2, :cond_0

    const/4 v0, 0x0

    :cond_0
    iput v0, v1, LQQPIM/STReportError;->noptype:I

    invoke-static {}, Lqx;->a()Lqx;

    move-result-object v0

    invoke-virtual {v0}, Lqx;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, LQQPIM/STReportError;->strversion:Ljava/lang/String;

    iget-object v0, p0, Lwr;->e:Lit;

    invoke-virtual {v0}, Lit;->getTotalForMonth()J

    move-result-wide v2

    div-long/2addr v2, v6

    long-to-int v0, v2

    iput v0, v1, LQQPIM/STReportError;->nCollocateNum:I

    iget-object v0, p0, Lwr;->e:Lit;

    invoke-virtual {v0}, Lit;->getUsedForMonth()J

    move-result-wide v2

    div-long/2addr v2, v6

    long-to-int v0, v2

    iput v0, v1, LQQPIM/STReportError;->nUsedNum:I

    iget-object v0, p0, Lwr;->c:Ljd;

    invoke-virtual {v0, v1}, Ljd;->a(LQQPIM/STReportError;)J

    return-void

    :cond_1
    const-string p3, "-"

    goto :goto_0

    :cond_2
    const-string p4, "-"

    goto :goto_1
.end method

.method private a(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/STCloudOrderBak;",
            ">;)V"
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v0, "kfc"

    const-string v1, "executeCmd"

    invoke-static {v0, v1}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    :pswitch_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/STCloudOrderBak;

    const-string v2, "kfc"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "executeCmd, cmd.nAct = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v0, LQQPIM/STCloudOrderBak;->nAct:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget v2, v0, LQQPIM/STCloudOrderBak;->nAct:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_1
    iget v0, v0, LQQPIM/STCloudOrderBak;->nFrequncy:I

    invoke-direct {p0, v0}, Lwr;->b(I)V

    goto :goto_0

    :pswitch_2
    iget-object v2, v0, LQQPIM/STCloudOrderBak;->vecCodeUpdate:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, v0, LQQPIM/STCloudOrderBak;->vecCodeUpdate:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lwr;->c:Ljd;

    sget-object v3, LQQPIM/EQueryType;->E_QUERY_TRAFFIC:LQQPIM/EQueryType;

    invoke-virtual {v3}, LQQPIM/EQueryType;->value()I

    move-result v3

    invoke-virtual {v2, v3}, Ljd;->d(I)V

    iget-object v2, p0, Lwr;->c:Ljd;

    const-string v3, "00000"

    iget-object v0, v0, LQQPIM/STCloudOrderBak;->vecCodeUpdate:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v0}, Ljd;->a(Ljava/lang/String;Ljava/util/List;)V

    iget-object v0, p0, Lwr;->c:Ljd;

    invoke-virtual {v0, v6}, Ljd;->c(Z)V

    iget-object v0, p0, Lwr;->c:Ljd;

    invoke-virtual {v0, v5}, Ljd;->f(I)V

    iget-object v0, p0, Lwr;->c:Ljd;

    invoke-virtual {v0, v5}, Ljd;->d(Z)V

    goto :goto_0

    :pswitch_3
    iget-object v2, v0, LQQPIM/STCloudOrderBak;->vecCodeUpdate:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, v0, LQQPIM/STCloudOrderBak;->vecCodeUpdate:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lwr;->c:Ljd;

    iget-object v0, v0, LQQPIM/STCloudOrderBak;->vecCodeUpdate:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/STQueryInfo;

    invoke-virtual {v2, v0}, Ljd;->a(LQQPIM/STQueryInfo;)V

    iget-object v0, p0, Lwr;->c:Ljd;

    invoke-virtual {v0, v5}, Ljd;->f(I)V

    iget-object v0, p0, Lwr;->c:Ljd;

    invoke-virtual {v0, v5}, Ljd;->d(Z)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Lwr;->c:Ljd;

    invoke-virtual {v0, v6}, Ljd;->d(Z)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lwr;->c:Ljd;

    invoke-virtual {v0, v5}, Ljd;->f(I)V

    iget-object v0, p0, Lwr;->c:Ljd;

    invoke-virtual {v0, v5}, Ljd;->d(Z)V

    goto/16 :goto_0

    :pswitch_6
    iget-object v2, v0, LQQPIM/STCloudOrderBak;->strTime:Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string v2, ""

    iget-object v3, v0, LQQPIM/STCloudOrderBak;->strTime:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :try_start_0
    iget-object v0, v0, LQQPIM/STCloudOrderBak;->strTime:Ljava/lang/String;

    const-string v2, "\\|"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x3

    if-lt v2, v3, :cond_0

    iget-object v2, p0, Lwr;->c:Ljd;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    aget-object v4, v0, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v4, v0, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v0, v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljd;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lwr;->i:Landroid/app/AlarmManager;

    iget-object v2, p0, Lwr;->j:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    invoke-virtual {p0}, Lwr;->a()V

    iget-object v0, p0, Lwr;->c:Ljd;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljd;->f(I)V

    iget-object v0, p0, Lwr;->c:Ljd;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljd;->d(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :pswitch_7
    const-string v2, "kfc"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "clound cmd: chage timout(m): "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v0, LQQPIM/STCloudOrderBak;->nTimeOut:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget v2, v0, LQQPIM/STCloudOrderBak;->nTimeOut:I

    if-lez v2, :cond_0

    iget-object v2, p0, Lwr;->c:Ljd;

    iget v0, v0, LQQPIM/STCloudOrderBak;->nTimeOut:I

    invoke-virtual {v2, v0}, Ljd;->k(I)V

    iget-object v0, p0, Lwr;->c:Ljd;

    invoke-virtual {v0, v5}, Ljd;->f(I)V

    iget-object v0, p0, Lwr;->c:Ljd;

    invoke-virtual {v0, v5}, Ljd;->d(Z)V

    goto/16 :goto_0

    :pswitch_8
    const-string v2, "kfc"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "clound cmd: change extra ports(m): "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, LQQPIM/STCloudOrderBak;->vecPort:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, v0, LQQPIM/STCloudOrderBak;->vecPort:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lwr;->c:Ljd;

    iget-object v0, v0, LQQPIM/STCloudOrderBak;->vecPort:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljd;->b(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_9
    const-string v0, "kfc"

    const-string v2, "clound cmd: update config"

    invoke-static {v0, v2}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lwr;->c:Ljd;

    invoke-virtual {v0, v6}, Ljd;->b(Z)V

    iget-object v0, p0, Lwr;->c:Ljd;

    invoke-virtual {v0, v6}, Ljd;->c(Z)V

    invoke-direct {p0}, Lwr;->t()I

    iget-object v0, p0, Lwr;->c:Ljd;

    invoke-virtual {v0, v5}, Ljd;->f(I)V

    iget-object v0, p0, Lwr;->c:Ljd;

    invoke-virtual {v0, v5}, Ljd;->d(Z)V

    goto/16 :goto_0

    :pswitch_a
    const-string v0, "kfc"

    const-string v2, "clound cmd: update template"

    invoke-static {v0, v2}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lwr;->w()V

    iget-object v0, p0, Lwr;->c:Ljd;

    invoke-virtual {v0, v5}, Ljd;->f(I)V

    iget-object v0, p0, Lwr;->c:Ljd;

    invoke-virtual {v0, v5}, Ljd;->d(Z)V

    goto/16 :goto_0

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
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
    .end packed-switch
.end method

.method static synthetic a(Lwr;)V
    .locals 4

    const-string v0, "kfc"

    const-string v1, "doUpdateCongifsAsyn"

    invoke-static {v0, v1}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget v0, p0, Lwr;->q:I

    if-eqz v0, :cond_0

    const-string v0, "kfc"

    const-string v1, "now doing traffic adjust, ruturn"

    invoke-static {v0, v1}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lwr;->h:Lho;

    invoke-virtual {v0}, Lho;->cr()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lwr;->h:Lho;

    invoke-virtual {v1}, Lho;->cs()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lwr;->h:Lho;

    invoke-virtual {v2}, Lho;->ct()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lwr;->h:Lho;

    invoke-virtual {v3}, Lho;->cu()Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    if-nez v3, :cond_2

    :cond_1
    const-string v0, "kfc"

    const-string v1, "doUpdateCongifsAsyn, sim configs is null!"

    invoke-static {v0, v1}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lwr;->c:Ljd;

    invoke-virtual {v0}, Ljd;->h()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_3

    const-string v0, "kfc"

    const-string v1, "doUpdateCongifsAsyn, today times over 3"

    invoke-static {v0, v1}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    const-class v0, Lcom/tencent/tmsecure/module/tools/RunableTaskManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/tools/RunableTaskManager;

    new-instance v1, Lww;

    invoke-direct {v1, p0}, Lww;-><init>(Lwr;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/tmsecure/module/tools/RunableTaskManager;->addTask(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method static synthetic a(Lwr;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "kfc"

    const-string v1, "doSmsAnalysis"

    invoke-static {v0, v1}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lwx;

    invoke-direct {v1, p0, p1, p2}, Lwx;-><init>(Lwr;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static a([Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    array-length v0, p0

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    aget-object v2, p0, v0

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v3, v2, v1

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic a(Lwr;Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;)Z
    .locals 5

    const-string v0, "kfc"

    const-string v1, "isNeedBlock"

    invoke-static {v0, v1}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lwr;->c:Ljd;

    invoke-virtual {v0}, Ljd;->A()I

    move-result v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lwr;->u:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v3, v0

    cmp-long v0, v1, v3

    if-gtz v0, :cond_1

    iget v0, p0, Lwr;->q:I

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    instance-of v0, p1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;

    iget-object v0, p0, Lwr;->c:Ljd;

    invoke-virtual {v0}, Ljd;->C()Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "kfc"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "extraPorts: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "kfc"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "send to: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lwr;->o:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", coming from: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->phonenum:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->phonenum:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->phonenum:Ljava/lang/String;

    iget-object v2, p0, Lwr;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->phonenum:Ljava/lang/String;

    iget-object v2, p0, Lwr;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->phonenum:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized b(Ljava/lang/String;Ljava/lang/String;)I
    .locals 10

    const/16 v5, -0x2e

    const/4 v2, 0x1

    const/16 v9, -0x2a

    const/4 v3, 0x0

    monitor-enter p0

    :try_start_0
    const-string v0, "kfc"

    const-string v1, "doFlowAnalysis"

    invoke-static {v0, v1}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "kfc"

    const-string v1, "doFlowAnalysis1, sms is null! xxxxxxx"

    invoke-static {v0, v1}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v0, -0x2b

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    new-instance v6, Lcom/tencent/tccdb/SmsInfo;

    invoke-direct {v6, p1, p2}, Lcom/tencent/tccdb/SmsInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v1, p0, Lwr;->b:Landroid/content/Context;

    invoke-static {v1, v6, v0}, Lcom/tencent/tccdb/SmsParser;->getWrongSmsType(Landroid/content/Context;Lcom/tencent/tccdb/SmsInfo;Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "kfc"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "xxxxxx bad sms: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    const/16 v0, -0x2c

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    move v1, v3

    :goto_1
    iget-object v0, p0, Lwr;->c:Ljd;

    sget-object v4, LQQPIM/ETrafficTemplateType;->E_TRAFFIC_TEMPLATE_TYPE_USE:LQQPIM/ETrafficTemplateType;

    invoke-virtual {v4}, LQQPIM/ETrafficTemplateType;->value()I

    move-result v4

    invoke-virtual {v0, v4}, Ljd;->a(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_6

    const/4 v4, 0x1

    invoke-direct {p0, v0, v6, v4}, Lwr;->a(Ljava/util/List;Lcom/tencent/tccdb/SmsInfo;Z)I

    move-result v0

    const-string v4, "kfc"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "try used type match rules, ret = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    if-ne v0, v9, :cond_3

    const-string v4, "kfc"

    const-string v7, "try used type failed, now try left type"

    invoke-static {v4, v7}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v4, p0, Lwr;->c:Ljd;

    sget-object v7, LQQPIM/ETrafficTemplateType;->E_TRAFFIC_TEMPLATE_TYPE_LEFT:LQQPIM/ETrafficTemplateType;

    invoke-virtual {v7}, LQQPIM/ETrafficTemplateType;->value()I

    move-result v7

    invoke-virtual {v4, v7}, Ljd;->a(I)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_5

    const/4 v0, 0x0

    invoke-direct {p0, v4, v6, v0}, Lwr;->a(Ljava/util/List;Lcom/tencent/tccdb/SmsInfo;Z)I

    move-result v0

    const-string v4, "kfc"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "try left type match rules, ret = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    :goto_2
    if-eq v0, v9, :cond_4

    if-ne v0, v5, :cond_c

    :cond_4
    if-nez v1, :cond_c

    const-string v1, "kfc"

    const-string v4, "both unmatch or no rule, now update match rules and try again"

    invoke-static {v1, v4}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, v6}, Lwr;->a(Lcom/tencent/tccdb/SmsInfo;)I

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "kfc"

    const-string v4, "update match rules success, now analysis the sms with new match rules"

    invoke-static {v1, v4}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    move v1, v2

    :goto_3
    move v4, v2

    :goto_4
    if-nez v1, :cond_b

    const-string v1, "kfc"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "doFlowAnalysis, result = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_5
    :try_start_4
    const-string v4, "kfc"

    const-string v7, "left type match rules is empty"

    invoke-static {v4, v7}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :cond_6
    const-string v0, "kfc"

    const-string v4, "use type match rules is empty, now try left type"

    invoke-static {v0, v4}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lwr;->c:Ljd;

    sget-object v4, LQQPIM/ETrafficTemplateType;->E_TRAFFIC_TEMPLATE_TYPE_LEFT:LQQPIM/ETrafficTemplateType;

    invoke-virtual {v4}, LQQPIM/ETrafficTemplateType;->value()I

    move-result v4

    invoke-virtual {v0, v4}, Ljd;->a(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_7

    const/4 v4, 0x0

    invoke-direct {p0, v0, v6, v4}, Lwr;->a(Ljava/util/List;Lcom/tencent/tccdb/SmsInfo;Z)I

    move-result v0

    const-string v4, "kfc"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "try left type match rules, ret = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :cond_7
    const-string v0, "kfc"

    const-string v4, "match rules is empty"

    invoke-static {v0, v4}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    move v0, v5

    goto :goto_2

    :cond_8
    const/16 v4, -0x22

    if-eq v4, v1, :cond_9

    iget-object v4, p0, Lwr;->c:Ljd;

    invoke-virtual {v4, v6}, Ljd;->a(Lcom/tencent/tccdb/SmsInfo;)V

    :cond_9
    if-eq v0, v9, :cond_a

    move v0, v1

    :cond_a
    const-string v4, "kfc"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "doFlowAnalysis, update match rules failed, xxxxxxxxx errCode = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move v1, v3

    goto/16 :goto_3

    :cond_b
    move v1, v4

    goto/16 :goto_1

    :cond_c
    move v4, v1

    move v1, v3

    goto/16 :goto_4
.end method

.method static synthetic b(Lwr;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lwr;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic b(Lwr;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lwr;->o:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lwr;)Ljd;
    .locals 1

    iget-object v0, p0, Lwr;->c:Ljd;

    return-object v0
.end method

.method private b(I)V
    .locals 4

    const/4 v3, 0x0

    if-lez p1, :cond_0

    iget-object v0, p0, Lwr;->c:Ljd;

    invoke-virtual {v0, p1}, Ljd;->h(I)V

    :cond_0
    iget-object v0, p0, Lwr;->c:Ljd;

    invoke-virtual {v0}, Ljd;->o()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lwr;->c:Ljd;

    invoke-virtual {v1}, Ljd;->q()I

    move-result v1

    iget-object v2, p0, Lwr;->c:Ljd;

    invoke-virtual {v2}, Ljd;->s()I

    move-result v2

    if-eq v1, v2, :cond_2

    const-string v1, "22"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "kfc"

    const-string v1, "adjustScheduleFrequency 22, adjust to max frequency"

    invoke-static {v0, v1}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lwr;->c:Ljd;

    iget-object v1, p0, Lwr;->c:Ljd;

    invoke-virtual {v1}, Ljd;->s()I

    move-result v1

    invoke-virtual {v0, v1}, Ljd;->g(I)V

    :try_start_0
    iget-object v0, p0, Lwr;->i:Landroid/app/AlarmManager;

    iget-object v1, p0, Lwr;->j:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lwr;->a()V

    iget-object v0, p0, Lwr;->c:Ljd;

    invoke-virtual {v0, v3}, Ljd;->d(Z)V

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lwr;->c:Ljd;

    invoke-virtual {v1}, Ljd;->q()I

    move-result v1

    iget-object v2, p0, Lwr;->c:Ljd;

    invoke-virtual {v2}, Ljd;->t()I

    move-result v2

    if-eq v1, v2, :cond_1

    const-string v1, "00"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "kfc"

    const-string v1, "adjustScheduleFrequency 00, adjust to min frequency"

    invoke-static {v0, v1}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lwr;->c:Ljd;

    iget-object v1, p0, Lwr;->c:Ljd;

    invoke-virtual {v1}, Ljd;->t()I

    move-result v1

    invoke-virtual {v0, v1}, Ljd;->g(I)V

    :try_start_1
    iget-object v0, p0, Lwr;->i:Landroid/app/AlarmManager;

    iget-object v1, p0, Lwr;->j:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    invoke-virtual {p0}, Lwr;->a()V

    iget-object v0, p0, Lwr;->c:Ljd;

    invoke-virtual {v0, v3}, Ljd;->d(Z)V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method static synthetic b(Lwr;I)V
    .locals 3

    const-string v0, "kfc"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "doFailed, errCode = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lwr;->r:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lwr;->c(I)V

    :cond_0
    iput p1, p0, Lwr;->v:I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lwr;->b(Z)V

    const/4 v0, 0x2

    iput v0, p0, Lwr;->q:I

    const-string v0, "kfc"

    const-string v1, "doFailed end, wait unitl time out..."

    invoke-static {v0, v1}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private b(Z)V
    .locals 5

    const/16 v4, 0xa

    const/4 v3, 0x0

    const-string v0, "kfc"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "saveOneResult, isSuccess = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p1, :cond_2

    iget-object v0, p0, Lwr;->c:Ljd;

    iget-object v1, p0, Lwr;->m:LQQPIM/STQueryInfo;

    invoke-virtual {v0, v1}, Ljd;->a(LQQPIM/STQueryInfo;)V

    iget-object v0, p0, Lwr;->c:Ljd;

    invoke-virtual {v0, v3}, Ljd;->c(Z)V

    iget-object v0, p0, Lwr;->c:Ljd;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljd;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lwr;->c:Ljd;

    invoke-virtual {v0, v3}, Ljd;->f(I)V

    iget-object v0, p0, Lwr;->c:Ljd;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljd;->a(J)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lwr;->t:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lwr;->c:Ljd;

    invoke-virtual {v1}, Ljd;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v4, :cond_1

    iget-object v1, p0, Lwr;->c:Ljd;

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljd;->c(Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lwr;->c(Z)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v1, p0, Lwr;->c:Ljd;

    invoke-virtual {v1, v0}, Ljd;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lwr;->w:Z

    if-eqz v0, :cond_0

    const-string v0, "kfc"

    const-string v1, "failed, first task, save as temp result"

    invoke-static {v0, v1}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget v0, p0, Lwr;->v:I

    iput v0, p0, Lwr;->C:I

    iget v0, p0, Lwr;->t:I

    iput v0, p0, Lwr;->D:I

    iget v0, p0, Lwr;->t:I

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lwr;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lwr;->E:Ljava/lang/String;

    iget-object v0, p0, Lwr;->m:LQQPIM/STQueryInfo;

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lwr;->m:LQQPIM/STQueryInfo;

    iget-object v1, v1, LQQPIM/STQueryInfo;->strPort:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lwr;->m:LQQPIM/STQueryInfo;

    iget-object v1, v1, LQQPIM/STQueryInfo;->strCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    iput-object v0, p0, Lwr;->F:Ljava/lang/String;

    goto :goto_1

    :cond_3
    const-string v0, "-"

    goto :goto_2

    :cond_4
    const-string v0, "-"

    goto :goto_3
.end method

.method static synthetic c(Lwr;I)I
    .locals 0

    iput p1, p0, Lwr;->v:I

    return p1
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "[MONTH]"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "[YEAR]"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "MM"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v3, "[MONTH]"

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "[YEAR]"

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method static synthetic c(Lwr;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lwr;->p:Ljava/lang/String;

    return-object p1
.end method

.method private c(I)V
    .locals 4

    const v3, 0x7f0b017e

    const-string v0, "kfc"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "showErrorInfo xxxxxx "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    sparse-switch p1, :sswitch_data_0

    iget-object v0, p0, Lwr;->b:Landroid/content/Context;

    invoke-static {v0, v3}, Lha;->b(Landroid/content/Context;I)V

    :goto_0
    :sswitch_0
    return-void

    :sswitch_1
    iget-object v0, p0, Lwr;->b:Landroid/content/Context;

    const v1, 0x7f0b017b

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;I)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lwr;->b:Landroid/content/Context;

    invoke-static {v0, v3}, Lha;->b(Landroid/content/Context;I)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lwr;->b:Landroid/content/Context;

    const v1, 0x7f0b0177

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;I)V

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lwr;->b:Landroid/content/Context;

    const v1, 0x7f0b0178

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;I)V

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lwr;->b:Landroid/content/Context;

    const v1, 0x7f0b0181

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;I)V

    goto :goto_0

    :sswitch_6
    iget-object v0, p0, Lwr;->b:Landroid/content/Context;

    const v1, 0x7f0b0b80

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;I)V

    goto :goto_0

    :sswitch_7
    iget-object v0, p0, Lwr;->c:Ljd;

    invoke-virtual {v0}, Ljd;->y()I

    move-result v0

    iget-object v1, p0, Lwr;->c:Ljd;

    invoke-virtual {v1, v0}, Ljd;->j(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v0, p0, Lwr;->b:Landroid/content/Context;

    const v1, 0x7f0b0b7f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-object v1, p0, Lwr;->b:Landroid/content/Context;

    invoke-static {v1, v0}, Lha;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x38 -> :sswitch_7
        -0x37 -> :sswitch_6
        -0x36 -> :sswitch_2
        -0x34 -> :sswitch_5
        -0x33 -> :sswitch_1
        -0x2d -> :sswitch_3
        -0x29 -> :sswitch_4
        -0x22 -> :sswitch_7
        0x0 -> :sswitch_0
    .end sparse-switch
.end method

.method private c(Z)V
    .locals 4

    const/4 v2, 0x2

    const/16 v0, -0x64

    if-eqz p1, :cond_2

    iget v1, p0, Lwr;->s:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lwr;->v:I

    if-nez v1, :cond_0

    :goto_0
    iget-object v1, p0, Lwr;->m:LQQPIM/STQueryInfo;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lwr;->m:LQQPIM/STQueryInfo;

    iget-object v2, v2, LQQPIM/STQueryInfo;->strPort:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lwr;->m:LQQPIM/STQueryInfo;

    iget-object v2, v2, LQQPIM/STQueryInfo;->strCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    iget v2, p0, Lwr;->s:I

    iget-object v3, p0, Lwr;->p:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v3, v1}, Lwr;->a(IILjava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void

    :cond_0
    iget v0, p0, Lwr;->v:I

    goto :goto_0

    :cond_1
    const-string v1, "-"

    goto :goto_1

    :cond_2
    iget v1, p0, Lwr;->s:I

    if-ne v1, v2, :cond_3

    iget v1, p0, Lwr;->C:I

    if-nez v1, :cond_3

    :goto_3
    iget v1, p0, Lwr;->s:I

    iget-object v2, p0, Lwr;->E:Ljava/lang/String;

    iget-object v3, p0, Lwr;->F:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2, v3}, Lwr;->a(IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    iget v0, p0, Lwr;->C:I

    goto :goto_3
.end method

.method static synthetic c(Lwr;)Z
    .locals 1

    iget-boolean v0, p0, Lwr;->x:Z

    return v0
.end method

.method static synthetic d(Lwr;)J
    .locals 2

    iget-wide v0, p0, Lwr;->y:J

    return-wide v0
.end method

.method private d(Z)V
    .locals 4

    const-string v0, "kfc"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "resetOperatorDataSmsMonitor "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lwr;->l:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lwr;->l:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lwr;->l:Ljava/util/Timer;

    invoke-static {}, Lop;->a()Lop;

    move-result-object v0

    iget-object v1, p0, Lwr;->H:Llt;

    invoke-virtual {v0, v1}, Lop;->b(Llt;)V

    iget-object v0, p0, Lwr;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lwr;->I:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {}, Lop;->a()Lop;

    move-result-object v0

    iget-object v1, p0, Lwr;->H:Llt;

    invoke-virtual {v0, v1}, Lop;->a(Llt;)V

    iget-object v0, p0, Lwr;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://sms"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lwr;->I:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lwr;->l:Ljava/util/Timer;

    iget-object v0, p0, Lwr;->c:Ljd;

    invoke-virtual {v0}, Ljd;->A()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    iget-object v2, p0, Lwr;->l:Ljava/util/Timer;

    new-instance v3, Lwr$a;

    invoke-direct {v3, p0}, Lwr$a;-><init>(Lwr;)V

    invoke-virtual {v2, v3, v0, v1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_1
    return-void
.end method

.method static synthetic e(Lwr;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lwr;->z:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lwr;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lwr;->A:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lwr;)V
    .locals 4

    iget-object v0, p0, Lwr;->z:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lwr;->A:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lwr;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lwr;->A:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/16 v1, 0x64

    const/4 v2, 0x0

    iget-object v3, p0, Lwr;->B:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3, v0}, Lwr;->a(IILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "-"

    goto :goto_0
.end method

.method static synthetic h(Lwr;)I
    .locals 1

    iget v0, p0, Lwr;->q:I

    return v0
.end method

.method static synthetic i(Lwr;)I
    .locals 1

    iget v0, p0, Lwr;->t:I

    return v0
.end method

.method static synthetic j(Lwr;)J
    .locals 2

    iget-wide v0, p0, Lwr;->u:J

    return-wide v0
.end method

.method static synthetic k(Lwr;)Lwr$b;
    .locals 1

    iget-object v0, p0, Lwr;->g:Lwr$b;

    return-object v0
.end method

.method static synthetic l(Lwr;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lwr;->p:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic m(Lwr;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lwr;->o:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic n(Lwr;)Lki;
    .locals 1

    iget-object v0, p0, Lwr;->d:Lki;

    return-object v0
.end method

.method static synthetic n()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic o(Lwr;)I
    .locals 1

    invoke-direct {p0}, Lwr;->t()I

    move-result v0

    return v0
.end method

.method private o()V
    .locals 3

    iget-object v0, p0, Lwr;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldv;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ldv;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private p()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "kfc"

    const-string v1, "cancel"

    invoke-static {v0, v1}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lwr;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-direct {p0, v2}, Lwr;->d(Z)V

    iget-object v0, p0, Lwr;->g:Lwr$b;

    invoke-virtual {v0}, Lwr$b;->a()Lcom/tencent/tmsecure/module/aresengine/SmsEntity;

    iput v2, p0, Lwr;->q:I

    return-void
.end method

.method static synthetic p(Lwr;)Z
    .locals 1

    invoke-direct {p0}, Lwr;->v()Z

    move-result v0

    return v0
.end method

.method private q()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    const-string v0, "kfc"

    const-string v2, "doOneTask"

    invoke-static {v0, v2}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lwr;->m:LQQPIM/STQueryInfo;

    if-nez v0, :cond_1

    const-string v0, "kfc"

    const-string v1, "mCurrentQueryInfo is null, doNext"

    invoke-static {v0, v1}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lwr;->r()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lwr;->m:LQQPIM/STQueryInfo;

    invoke-virtual {v0}, LQQPIM/STQueryInfo;->getStrPort()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lwr;->m:LQQPIM/STQueryInfo;

    invoke-virtual {v2}, LQQPIM/STQueryInfo;->getStrCode()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iput v5, p0, Lwr;->q:I

    iget-object v2, p0, Lwr;->g:Lwr$b;

    iput-boolean v1, v2, Lwr$b;->a:Z

    iput v1, v2, Lwr$b;->b:I

    move v0, v1

    :goto_1
    iget-object v3, v2, Lwr$b;->c:[Lcom/tencent/tmsecure/module/aresengine/SmsEntity;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    iget-object v3, v2, Lwr$b;->c:[Lcom/tencent/tmsecure/module/aresengine/SmsEntity;

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iput v1, p0, Lwr;->t:I

    iput-object v4, p0, Lwr;->o:Ljava/lang/String;

    iput-object v4, p0, Lwr;->p:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lwr;->u:J

    invoke-direct {p0, v5}, Lwr;->d(Z)V

    iget-object v0, p0, Lwr;->m:LQQPIM/STQueryInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LQQPIM/STQueryInfo;->getStrPort()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, LQQPIM/STQueryInfo;->getStrCode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iput-object v1, p0, Lwr;->o:Ljava/lang/String;

    invoke-static {v0}, Lwr;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "kfc"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "sendQuerySms, "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v1, v0}, Lgu;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    const-string v0, "kfc"

    const-string v1, "mCurrentQueryInfo is empty, doNext"

    invoke-static {v0, v1}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lwr;->r()V

    goto/16 :goto_0
.end method

.method static synthetic q(Lwr;)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "kfc"

    const-string v3, "doSuccess"

    invoke-static {v0, v3}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lwr;->r:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lwr;->b:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lwr;->b:Landroid/content/Context;

    const v5, 0x7f0b017c

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lwr;->e:Lit;

    invoke-virtual {v4}, Lit;->getUsedForMonth()J

    move-result-wide v4

    invoke-static {v4, v5}, La;->c(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lha;->d(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    iput v2, p0, Lwr;->v:I

    invoke-direct {p0, v1}, Lwr;->b(Z)V

    iget-object v0, p0, Lwr;->c:Ljd;

    invoke-virtual {v0, v1}, Ljd;->a(Z)V

    iget-object v3, p0, Lwr;->e:Lit;

    iget v0, p0, Lwr;->s:I

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v2, v0}, Lit;->b(ZZ)V

    iget-object v0, p0, Lwr;->e:Lit;

    iget v3, p0, Lwr;->s:I

    if-nez v3, :cond_3

    :goto_1
    invoke-virtual {v0, v2, v1}, Lit;->a(ZZ)V

    iget-object v0, p0, Lwr;->f:Lcom/tencent/tmsecure/module/network/NetworkManager;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/network/NetworkManager;->notifyConfigChange()V

    invoke-direct {p0}, Lwr;->o()V

    const/4 v0, 0x2

    iput v0, p0, Lwr;->q:I

    iget-object v0, p0, Lwr;->c:Ljd;

    invoke-virtual {v0}, Ljd;->y()I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "kfc"

    const-string v1, "doSuccess, reactivate"

    invoke-static {v0, v1}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lwr;->c:Ljd;

    invoke-virtual {v0, v2}, Ljd;->i(I)V

    :cond_1
    const-string v0, "kfc"

    const-string v1, "doSuccess end, wait unitl time out..."

    invoke-static {v0, v1}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method static synthetic r(Lwr;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lwr;->b:Landroid/content/Context;

    return-object v0
.end method

.method private r()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "kfc"

    const-string v1, "doNext"

    invoke-static {v0, v1}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lwr;->n:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lwr;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lwr;->n:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/STQueryInfo;

    iput-object v0, p0, Lwr;->m:LQQPIM/STQueryInfo;

    iput-boolean v2, p0, Lwr;->w:Z

    invoke-direct {p0}, Lwr;->q()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lwr;->s()V

    goto :goto_0
.end method

.method private s()V
    .locals 7

    const/16 v6, 0xa

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "kfc"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v0, "---------------- doFinished, isSuccess = "

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lwr;->v:I

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget v0, p0, Lwr;->v:I

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lwr;->c:Ljd;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljd;->a(Z)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lwr;->c(Z)V

    iget-object v0, p0, Lwr;->c:Ljd;

    invoke-virtual {v0}, Ljd;->l()Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v0, p0, Lwr;->c:Ljd;

    iget v3, p0, Lwr;->C:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljd;->b(Ljava/lang/String;)V

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lwr;->D:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lwr;->c:Ljd;

    invoke-virtual {v3}, Ljd;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v6, :cond_4

    iget-object v3, p0, Lwr;->c:Ljd;

    const/4 v4, 0x0

    const/16 v5, 0xa

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljd;->c(Ljava/lang/String;)V

    :goto_2
    const-string v0, "kfc"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "doFinished, blocktype = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lwr;->D:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget v0, p0, Lwr;->D:I

    if-nez v0, :cond_6

    iget-object v0, p0, Lwr;->c:Ljd;

    const/16 v3, 0x258

    invoke-virtual {v0, v3}, Ljd;->l(I)V

    iget-object v0, p0, Lwr;->e:Lit;

    const/4 v3, 0x1

    iget v4, p0, Lwr;->s:I

    if-nez v4, :cond_5

    :goto_3
    invoke-virtual {v0, v3, v1}, Lit;->b(ZZ)V

    :goto_4
    iget-object v0, p0, Lwr;->c:Ljd;

    invoke-virtual {v0}, Ljd;->m()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lwr;->c:Ljd;

    invoke-virtual {v1, v0}, Ljd;->f(I)V

    const-string v1, "kfc"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "fail times = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lwr;->c:Ljd;

    invoke-virtual {v1}, Ljd;->n()I

    move-result v1

    if-lt v0, v1, :cond_8

    const-string v0, "kfc"

    const-string v1, "fail times over limit, function pause xxxxxx"

    invoke-static {v0, v1}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lwr;->c:Ljd;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljd;->d(Z)V

    :cond_0
    :goto_5
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lwr;->b(I)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lwv;

    invoke-direct {v1, p0}, Lwv;-><init>(Lwr;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_6
    iput v2, p0, Lwr;->q:I

    const-string v0, "kfc"

    const-string v1, "---------------- end"

    invoke-static {v0, v1}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_2
    move v0, v2

    goto/16 :goto_0

    :cond_3
    :try_start_1
    iget-object v3, p0, Lwr;->c:Ljd;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lwr;->C:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljd;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    :cond_4
    :try_start_2
    iget-object v3, p0, Lwr;->c:Ljd;

    invoke-virtual {v3, v0}, Ljd;->c(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_5
    move v1, v2

    goto/16 :goto_3

    :cond_6
    iget-object v0, p0, Lwr;->e:Lit;

    const/4 v3, 0x0

    iget v4, p0, Lwr;->s:I

    if-nez v4, :cond_7

    :goto_7
    invoke-virtual {v0, v3, v1}, Lit;->b(ZZ)V

    goto/16 :goto_4

    :cond_7
    move v1, v2

    goto :goto_7

    :cond_8
    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lwr;->c:Ljd;

    sget-object v1, LQQPIM/EQueryType;->E_QUERY_TRAFFIC:LQQPIM/EQueryType;

    invoke-virtual {v1}, LQQPIM/EQueryType;->value()I

    move-result v1

    invoke-virtual {v0, v1}, Ljd;->b(I)LQQPIM/STQueryInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "kfc"

    const-string v1, "continue failed, function pause xxxxxx"

    invoke-static {v0, v1}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lwr;->c:Ljd;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljd;->d(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5
.end method

.method static synthetic s(Lwr;)V
    .locals 0

    invoke-direct {p0}, Lwr;->u()V

    return-void
.end method

.method private declared-synchronized t()I
    .locals 9

    const/4 v1, 0x0

    const/16 v0, -0x16

    monitor-enter p0

    :try_start_0
    const-string v2, "kfc"

    const-string v3, "updateConfigsV2"

    invoke-static {v2, v3}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, p0, Lwr;->h:Lho;

    invoke-virtual {v2}, Lho;->cr()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lwr;->h:Lho;

    invoke-virtual {v3}, Lho;->cs()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lwr;->h:Lho;

    invoke-virtual {v4}, Lho;->ct()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lwr;->h:Lho;

    invoke-virtual {v5}, Lho;->cu()Ljava/lang/String;

    move-result-object v5

    const-string v6, "kfc"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "user setting brandCode = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    const-string v6, ""

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, ""

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, ""

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, ""

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    const-string v1, "kfc"

    const-string v2, "updateConfigsV2, sim configs is null"

    invoke-static {v1, v2}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lwr;->c:Ljd;

    const/16 v2, -0x16

    invoke-virtual {v1, v2}, Ljd;->e(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    new-instance v6, LQQPIM/STQuery;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    invoke-direct {v6, v0, v4, v5, v2}, LQQPIM/STQuery;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    const-class v0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;

    invoke-virtual {v0, v6, v2}, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->getQueryInfoMulti(LQQPIM/STQuery;Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/STVecCodeResult;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, LQQPIM/STVecCodeResult;->getQueryresult()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4

    const-string v2, "kfc"

    const-string v3, "updateConfigsV2, get query info success"

    invoke-static {v2, v3}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, p0, Lwr;->c:Ljd;

    sget-object v3, LQQPIM/EQueryType;->E_QUERY_TRAFFIC:LQQPIM/EQueryType;

    invoke-virtual {v3}, LQQPIM/EQueryType;->value()I

    move-result v3

    invoke-virtual {v2, v3}, Ljd;->d(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/STCodeResult;

    invoke-virtual {v0}, LQQPIM/STCodeResult;->getStrSimetype()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, LQQPIM/STCodeResult;->getQueryinfo()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v3, :cond_2

    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    iget-object v4, p0, Lwr;->c:Ljd;

    invoke-virtual {v4, v3, v0}, Ljd;->a(Ljava/lang/String;Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    :try_start_2
    iget-object v0, p0, Lwr;->c:Ljd;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljd;->b(Z)V

    move v0, v1

    :goto_2
    iget-object v1, p0, Lwr;->c:Ljd;

    invoke-virtual {v1, v0}, Ljd;->e(I)V

    goto/16 :goto_0

    :cond_4
    const-string v0, "kfc"

    const-string v1, "updateConfigsV2, query info from server is empty! xxxxxxxx"

    invoke-static {v0, v1}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const/16 v0, -0x17

    goto :goto_2

    :cond_5
    const-string v0, "kfc"

    const-string v1, "updateConfigsV2, query info from server is null! xxxxxxxx"

    invoke-static {v0, v1}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const/16 v0, -0x18

    goto :goto_2

    :cond_6
    const-string v1, "kfc"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "updateConfigsV2, get query err xxxxxxx, errCode = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/16 v0, -0x15

    goto :goto_2
.end method

.method static synthetic t(Lwr;)V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "kfc"

    const-string v1, "doFinishOne"

    invoke-static {v0, v1}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, v2}, Lwr;->d(Z)V

    iget-object v0, p0, Lwr;->g:Lwr$b;

    invoke-virtual {v0}, Lwr$b;->a()Lcom/tencent/tmsecure/module/aresengine/SmsEntity;

    const/4 v0, 0x2

    iget v1, p0, Lwr;->q:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lwr;->s()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v2}, Lwr;->b(Z)V

    invoke-direct {p0}, Lwr;->r()V

    goto :goto_0
.end method

.method private u()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const-string v0, "kfc"

    const-string v1, "stopMonitorSmsSendbyUser"

    invoke-static {v0, v1}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iput-boolean v3, p0, Lwr;->x:Z

    iput-object v2, p0, Lwr;->z:Ljava/lang/String;

    iput-object v2, p0, Lwr;->A:Ljava/lang/String;

    iput-object v2, p0, Lwr;->B:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lwr;->y:J

    invoke-direct {p0, v3}, Lwr;->d(Z)V

    return-void
.end method

.method private declared-synchronized v()Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    const-string v2, "kfc"

    const-string v3, "updateMatchRuleIfNeed"

    invoke-static {v2, v3}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, p0, Lwr;->c:Ljd;

    invoke-virtual {v2}, Ljd;->y()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v2, p0, Lwr;->c:Ljd;

    sget-object v3, LQQPIM/ETrafficTemplateType;->E_TRAFFIC_TEMPLATE_TYPE_USE:LQQPIM/ETrafficTemplateType;

    invoke-virtual {v3}, LQQPIM/ETrafficTemplateType;->value()I

    move-result v3

    invoke-virtual {v2, v3}, Ljd;->a(I)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lwr;->c:Ljd;

    sget-object v4, LQQPIM/ETrafficTemplateType;->E_TRAFFIC_TEMPLATE_TYPE_LEFT:LQQPIM/ETrafficTemplateType;

    invoke-virtual {v4}, LQQPIM/ETrafficTemplateType;->value()I

    move-result v4

    invoke-virtual {v3, v4}, Ljd;->a(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_4

    move v2, v1

    :goto_1
    if-eqz v2, :cond_1

    const-string v2, "kfc"

    const-string v3, "noRules"

    invoke-static {v2, v3}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, p0, Lwr;->c:Ljd;

    invoke-virtual {v2}, Ljd;->h()I

    move-result v2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_3

    const-string v2, "kfc"

    const-string v3, "noRules, today still have opportunity, need update"

    invoke-static {v2, v3}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    move v2, v1

    :goto_2
    if-eqz v2, :cond_2

    const-string v0, "kfc"

    const-string v2, "need update, now do it"

    invoke-static {v0, v2}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lwr;->w()V

    move v0, v1

    goto :goto_0

    :cond_1
    const-string v2, "kfc"

    const-string v3, "have rules"

    invoke-static {v2, v3}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, p0, Lwr;->c:Ljd;

    invoke-virtual {v2}, Ljd;->j()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    const-wide/32 v4, 0x240c8400

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    const-string v2, "kfc"

    const-string v3, "have rules, over effective time, need update"

    invoke-static {v2, v3}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    move v2, v1

    goto :goto_2

    :cond_2
    const-string v1, "kfc"

    const-string v2, "no need to update"

    invoke-static {v1, v2}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    move v2, v0

    goto :goto_2

    :cond_4
    move v2, v0

    goto :goto_1
.end method

.method private w()V
    .locals 4

    const-string v0, "kfc"

    const-string v1, "updateMatchRule"

    invoke-static {v0, v1}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lwr;->c:Ljd;

    invoke-virtual {v0}, Ljd;->D()Ljava/util/List;

    move-result-object v0

    const-string v1, "kfc"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "padding sms count = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tccdb/SmsInfo;

    invoke-direct {p0, v0}, Lwr;->a(Lcom/tencent/tccdb/SmsInfo;)I

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "kfc"

    const-string v1, "success, remove padding sms, break"

    invoke-static {v0, v1}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lwr;->c:Ljd;

    invoke-virtual {v0}, Ljd;->E()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/16 v2, -0x22

    if-ne v2, v0, :cond_0

    const-string v0, "kfc"

    const-string v1, "cmd: stop traffic adjust, remove pading sms, break"

    invoke-static {v0, v1}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lwr;->c:Ljd;

    invoke-virtual {v0}, Ljd;->E()V

    goto :goto_0

    :cond_3
    const-string v0, "kfc"

    const-string v1, "no padding sms for update match rule"

    invoke-static {v0, v1}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v0, "kfc"

    const-string v1, "saveCofigs"

    invoke-static {v0, v1}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    :cond_0
    const-string v0, "kfc"

    const-string v1, "saveConfigs, sim configs is null"

    invoke-static {v0, v1}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const/16 v0, -0x16

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lwr;->h:Lho;

    invoke-virtual {v0}, Lho;->cr()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lwr;->h:Lho;

    invoke-virtual {v1}, Lho;->cs()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lwr;->h:Lho;

    invoke-virtual {v2}, Lho;->ct()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lwr;->h:Lho;

    invoke-virtual {v3}, Lho;->cu()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Liy;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Liy;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Liy;->a()Lcom/tencent/lbsapi/model/QLBSPosition;

    move-result-object v4

    if-eqz v4, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v4}, Lcom/tencent/lbsapi/model/QLBSPosition;->getProvince()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lfs;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v4

    const/16 v5, 0x675b

    invoke-virtual {v4, v5}, Lnd;->a(I)V

    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_4
    if-eqz v2, :cond_5

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    if-eqz v3, :cond_7

    invoke-virtual {v3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    iget-object v0, p0, Lwr;->c:Ljd;

    sget-object v1, LQQPIM/EQueryType;->E_QUERY_TRAFFIC:LQQPIM/EQueryType;

    invoke-virtual {v1}, LQQPIM/EQueryType;->value()I

    move-result v1

    invoke-virtual {v0, v1}, Ljd;->d(I)V

    iget-object v0, p0, Lwr;->c:Ljd;

    sget-object v1, LQQPIM/EQueryType;->E_QUERY_TRAFFIC:LQQPIM/EQueryType;

    invoke-virtual {v1}, LQQPIM/EQueryType;->value()I

    move-result v1

    invoke-virtual {v0, v1}, Ljd;->c(I)V

    iget-object v0, p0, Lwr;->c:Ljd;

    invoke-virtual {v0}, Ljd;->b()V

    iget-object v0, p0, Lwr;->c:Ljd;

    invoke-virtual {v0}, Ljd;->E()V

    iget-object v0, p0, Lwr;->c:Ljd;

    invoke-virtual {v0}, Ljd;->i()V

    :cond_7
    iget-object v0, p0, Lwr;->h:Lho;

    invoke-virtual {v0, p1}, Lho;->A(Ljava/lang/String;)V

    iget-object v0, p0, Lwr;->h:Lho;

    invoke-virtual {v0, p2}, Lho;->B(Ljava/lang/String;)V

    iget-object v0, p0, Lwr;->h:Lho;

    invoke-virtual {v0, p3}, Lho;->C(Ljava/lang/String;)V

    iget-object v0, p0, Lwr;->h:Lho;

    invoke-virtual {v0, p4}, Lho;->D(Ljava/lang/String;)V

    iget-object v0, p0, Lwr;->b:Landroid/content/Context;

    invoke-static {v0}, Lft;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lwr;->c:Ljd;

    invoke-virtual {v1, v0}, Ljd;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lwr;->c:Ljd;

    invoke-virtual {v0, v7}, Ljd;->b(Z)V

    iget-object v0, p0, Lwr;->c:Ljd;

    invoke-virtual {v0, v7}, Ljd;->c(Z)V

    iget-object v0, p0, Lwr;->c:Ljd;

    invoke-virtual {v0, v6}, Ljd;->d(Z)V

    iget-object v0, p0, Lwr;->c:Ljd;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljd;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lwr;->c:Ljd;

    invoke-virtual {v0, v6}, Ljd;->f(I)V

    invoke-direct {p0}, Lwr;->t()I

    move-result v0

    goto/16 :goto_0

    :cond_8
    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v4

    const/16 v5, 0x675c

    invoke-virtual {v4, v5}, Lnd;->a(I)V

    goto/16 :goto_1
.end method

.method public final a()V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lwr;->c:Ljd;

    invoke-virtual {v0}, Ljd;->u()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lwr;->c:Ljd;

    invoke-virtual {v1}, Ljd;->r()J

    move-result-wide v4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/16 v1, 0xb

    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    const/4 v3, 0x2

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v1, v0}, Ljava/util/Calendar;->set(II)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->add(II)V

    :cond_0
    iget-object v0, p0, Lwr;->i:Landroid/app/AlarmManager;

    const/4 v1, 0x0

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iget-object v6, p0, Lwr;->j:Landroid/app/PendingIntent;

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final declared-synchronized a(IZ)V
    .locals 9

    const/16 v0, -0x34

    const/16 v3, -0x35

    const/16 v1, -0x37

    const/16 v2, -0x38

    const/4 v8, 0x2

    monitor-enter p0

    :try_start_0
    const-string v4, "kfc"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "---------------- triggerSync, type = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "kfc"

    const-string v5, "doParepare"

    invoke-static {v4, v5}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v4, Liu;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Liu;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Liu;->getClosingDayForMonth()I

    move-result v4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v4, v5, :cond_1

    const-string v1, "kfc"

    const-string v2, "triggerSync, closing day"

    invoke-static {v1, v2}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget v0, p0, Lwr;->q:I

    const/4 v4, 0x1

    if-ne v0, v4, :cond_2

    iget-wide v4, p0, Lwr;->u:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lwr;->u:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    iget-object v0, p0, Lwr;->c:Ljd;

    invoke-virtual {v0}, Ljd;->A()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-gez v0, :cond_2

    const-string v0, "kfc"

    const-string v1, "triggerSync, processing"

    invoke-static {v0, v1}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const/16 v0, -0x33

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lwr;->c:Ljd;

    invoke-virtual {v0}, Ljd;->k()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lwr;->b:Landroid/content/Context;

    invoke-static {v4}, Lft;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    :goto_2
    if-nez v0, :cond_4

    move v0, v1

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lwr;->c:Ljd;

    invoke-virtual {v0}, Ljd;->y()I

    move-result v0

    if-eqz v0, :cond_5

    move v0, v2

    goto :goto_0

    :cond_5
    const/4 v0, 0x1

    if-ne v0, p1, :cond_6

    iget-object v0, p0, Lwr;->c:Ljd;

    invoke-virtual {v0}, Ljd;->x()Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v3

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    goto :goto_0

    :sswitch_0
    iput p1, p0, Lwr;->s:I

    iput-boolean p2, p0, Lwr;->r:Z

    const-string v0, "kfc"

    const-string v1, "ok to start, cancel old task if exist"

    invoke-static {v0, v1}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lwr;->p()V

    invoke-direct {p0, p1}, Lwr;->a(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :sswitch_1
    if-eqz p2, :cond_0

    const/16 v0, -0x33

    :try_start_2
    invoke-direct {p0, v0}, Lwr;->c(I)V

    goto/16 :goto_1

    :sswitch_2
    const/16 v0, -0x34

    iput v0, p0, Lwr;->v:I

    iget v0, p0, Lwr;->v:I

    if-eq p1, v8, :cond_7

    const-string v1, "ignore"

    const-string v2, "ignore"

    invoke-direct {p0, v0, p1, v1, v2}, Lwr;->a(IILjava/lang/String;Ljava/lang/String;)V

    :cond_7
    if-eqz p2, :cond_0

    const/16 v0, -0x34

    invoke-direct {p0, v0}, Lwr;->c(I)V

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "kfc"

    const-string v1, "function pause"

    invoke-static {v0, v1}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const/16 v0, -0x35

    iput v0, p0, Lwr;->v:I

    iget v0, p0, Lwr;->v:I

    if-eq p1, v8, :cond_8

    const-string v1, "ignore"

    const-string v2, "ignore"

    invoke-direct {p0, v0, p1, v1, v2}, Lwr;->a(IILjava/lang/String;Ljava/lang/String;)V

    :cond_8
    if-eqz p2, :cond_9

    const/16 v0, -0x35

    invoke-direct {p0, v0}, Lwr;->c(I)V

    :cond_9
    invoke-virtual {p0}, Lwr;->i()Z

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "kfc"

    const-string v1, "function stoped"

    invoke-static {v0, v1}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lwr;->c:Ljd;

    invoke-virtual {v2}, Ljd;->z()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0x240c8400

    cmp-long v0, v0, v2

    if-lez v0, :cond_a

    const-string v0, "kfc"

    const-string v1, "stop time over 7 days, requestReactivate"

    invoke-static {v0, v1}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iput p1, p0, Lwr;->s:I

    iput-boolean p2, p0, Lwr;->r:Z

    const-string v0, "kfc"

    const-string v1, "try reactivate, cancel old task if exist"

    invoke-static {v0, v1}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lwr;->p()V

    invoke-direct {p0, p1}, Lwr;->a(I)V

    goto/16 :goto_1

    :cond_a
    const/16 v0, -0x38

    iput v0, p0, Lwr;->v:I

    iget v0, p0, Lwr;->v:I

    if-eq p1, v8, :cond_b

    const-string v1, "ignore"

    const-string v2, "ignore"

    invoke-direct {p0, v0, p1, v1, v2}, Lwr;->a(IILjava/lang/String;Ljava/lang/String;)V

    :cond_b
    if-eqz p2, :cond_0

    const/16 v0, -0x38

    invoke-direct {p0, v0}, Lwr;->c(I)V

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "kfc"

    const-string v1, "sim card unmatch"

    invoke-static {v0, v1}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const/16 v0, -0x37

    iput v0, p0, Lwr;->v:I

    iget v0, p0, Lwr;->v:I

    if-eq p1, v8, :cond_c

    const-string v1, "ignore"

    const-string v2, "ignore"

    invoke-direct {p0, v0, p1, v1, v2}, Lwr;->a(IILjava/lang/String;Ljava/lang/String;)V

    :cond_c
    if-eqz p2, :cond_0

    const/16 v0, -0x37

    invoke-direct {p0, v0}, Lwr;->c(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        -0x38 -> :sswitch_4
        -0x37 -> :sswitch_5
        -0x35 -> :sswitch_3
        -0x34 -> :sswitch_2
        -0x33 -> :sswitch_1
        0x0 -> :sswitch_0
    .end sparse-switch
.end method

.method public final a(Ldv;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldv",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lwr;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldv;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lwr;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "kfc"

    const-string v1, "monitorSmsSendbyUser"

    invoke-static {v0, v1}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "kfc"

    const-string v1, "number or body is empty"

    invoke-static {v0, v1}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lwr;->q:I

    if-eqz v0, :cond_2

    const-string v0, "kfc"

    const-string v1, "now doing traffic adjust, do not monitor sms send by user"

    invoke-static {v0, v1}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iput-boolean v2, p0, Lwr;->x:Z

    iput-object p1, p0, Lwr;->z:Ljava/lang/String;

    iput-object p2, p0, Lwr;->A:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lwr;->B:Ljava/lang/String;

    invoke-direct {p0, v2}, Lwr;->d(Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lwr;->y:J

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "kfc"

    const-string v1, "updateConfigsAsyn"

    invoke-static {v0, v1}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lwr;->G:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lwr;->G:Landroid/os/Handler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lwr;->G:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lwr;->G:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "10"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lwr;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07004a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v1, "20"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lwr;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07004b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v1, "21"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lwr;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07004c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string v1, "22"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, p0, Lwr;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07004d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    const-string v1, "23"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v0, p0, Lwr;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07004e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    const-string v1, "24"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v0, p0, Lwr;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07004f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    const-string v1, "25"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v0, p0, Lwr;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070050

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_7
    const-string v1, "27"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v0, p0, Lwr;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070051

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_8
    const-string v1, "28"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v0, p0, Lwr;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070052

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_9
    const-string v1, "29"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v0, p0, Lwr;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070053

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_a
    const-string v1, "311"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v0, p0, Lwr;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070054

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_b
    const-string v1, "351"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v0, p0, Lwr;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070055

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_c
    const-string v1, "371"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v0, p0, Lwr;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070056

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_d
    const-string v1, "431"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v0, p0, Lwr;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070057

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_e
    const-string v1, "451"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v0, p0, Lwr;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070058

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_f
    const-string v1, "471"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v0, p0, Lwr;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070059

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_10
    const-string v1, "531"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v0, p0, Lwr;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07005a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_11
    const-string v1, "551"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v0, p0, Lwr;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07005b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_12
    const-string v1, "571"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v0, p0, Lwr;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07005c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_13
    const-string v1, "591"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v0, p0, Lwr;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07005d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_14
    const-string v1, "731"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v0, p0, Lwr;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07005e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_15
    const-string v1, "771"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v0, p0, Lwr;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07005f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_16
    const-string v1, "791"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object v0, p0, Lwr;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070060

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_17
    const-string v1, "851"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    iget-object v0, p0, Lwr;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070061

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_18
    const-string v1, "871"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v0, p0, Lwr;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070062

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_19
    const-string v1, "891"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    iget-object v0, p0, Lwr;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070063

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_1a
    const-string v1, "898"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    iget-object v0, p0, Lwr;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070064

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_1b
    const-string v1, "931"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-object v0, p0, Lwr;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070065

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_1c
    const-string v1, "951"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    iget-object v0, p0, Lwr;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070066

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_1d
    const-string v1, "971"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    iget-object v0, p0, Lwr;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070067

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_1e
    const-string v1, "991"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lwr;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070068

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public final b()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lwr;->i:Landroid/app/AlarmManager;

    iget-object v1, p0, Lwr;->j:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final b(Ldv;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldv",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lwr;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lwr;->k:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lwr;->k:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "CMCC"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lwr;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07006a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v1, "UNICOM"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lwr;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07006b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v1, "TELECOM"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lwr;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07006c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final c()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lwr;->i:Landroid/app/AlarmManager;

    iget-object v1, p0, Lwr;->j:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lwr;->a()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final d()Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lwr;->c:Ljd;

    invoke-virtual {v2}, Ljd;->u()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\|"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    const/16 v4, 0xb

    const/4 v5, 0x0

    aget-object v5, v2, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0xc

    const/4 v5, 0x1

    aget-object v5, v2, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0xd

    const/4 v5, 0x2

    aget-object v2, v2, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v4, v2}, Ljava/util/Calendar;->set(II)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    sub-long v2, v4, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    const-wide/32 v4, 0xea60

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    goto :goto_0
.end method

.method public final e()Z
    .locals 2

    iget-object v0, p0, Lwr;->c:Ljd;

    sget-object v1, LQQPIM/EQueryType;->E_QUERY_TRAFFIC:LQQPIM/EQueryType;

    invoke-virtual {v1}, LQQPIM/EQueryType;->value()I

    move-result v1

    invoke-virtual {v0, v1}, Ljd;->b(I)LQQPIM/STQueryInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()Z
    .locals 1

    iget-object v0, p0, Lwr;->c:Ljd;

    invoke-virtual {v0}, Ljd;->e()Z

    move-result v0

    return v0
.end method

.method public final g()J
    .locals 2

    iget-object v0, p0, Lwr;->c:Ljd;

    invoke-virtual {v0}, Ljd;->f()J

    move-result-wide v0

    return-wide v0
.end method

.method public final h()[Ljava/lang/String;
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x2

    iget-object v0, p0, Lwr;->c:Ljd;

    invoke-virtual {v0, v4}, Ljd;->b(I)LQQPIM/STQueryInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LQQPIM/STQueryInfo;->getStrPort()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, LQQPIM/STQueryInfo;->getStrCode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Lwr;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v0, v4, [Ljava/lang/String;

    aput-object v1, v0, v5

    aput-object v2, v0, v6

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lwr;->c:Ljd;

    iget-object v1, p0, Lwr;->h:Lho;

    invoke-virtual {v1}, Lho;->cu()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Ljd;->a(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/STQueryInfo;

    invoke-virtual {v0}, LQQPIM/STQueryInfo;->getStrPort()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, LQQPIM/STQueryInfo;->getStrCode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    const-string v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v0}, Lwr;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v0, v4, [Ljava/lang/String;

    aput-object v2, v0, v5

    aput-object v1, v0, v6

    goto :goto_0

    :cond_2
    invoke-static {}, Lft;->d()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-string v1, ""

    const-string v0, ""

    :goto_1
    new-array v2, v4, [Ljava/lang/String;

    aput-object v1, v2, v5

    aput-object v0, v2, v6

    move-object v0, v2

    goto :goto_0

    :pswitch_0
    const-string v1, "10010"

    const-string v0, "CXLL"

    goto :goto_1

    :pswitch_1
    const-string v1, "10086"

    const-string v0, "cxgprstc"

    goto :goto_1

    :pswitch_2
    const-string v1, "10001"

    const-string v0, "108"

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final i()Z
    .locals 4

    const-string v0, "kfc"

    const-string v1, "getCloudCmdIfNeed"

    invoke-static {v0, v1}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lwr;->c:Ljd;

    invoke-virtual {v2}, Ljd;->w()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0xf731400

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const-string v0, "kfc"

    const-string v1, "need cloud cmd"

    invoke-static {v0, v1}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lwr;->j()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const-string v0, "kfc"

    const-string v1, "no need cloud cmd"

    invoke-static {v0, v1}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final j()V
    .locals 6

    :try_start_0
    new-instance v1, LQQPIM/STCloudOrderReq;

    invoke-direct {v1}, LQQPIM/STCloudOrderReq;-><init>()V

    iget-object v0, p0, Lwr;->c:Ljd;

    invoke-virtual {v0}, Ljd;->o()Ljava/lang/String;

    move-result-object v0

    const-string v2, "2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, LQQPIM/STCloudOrderReq;->block:Z

    iget-object v0, p0, Lwr;->c:Ljd;

    invoke-virtual {v0}, Ljd;->q()I

    move-result v0

    iput v0, v1, LQQPIM/STCloudOrderReq;->nFrequency:I

    iget-object v0, p0, Lwr;->h:Lho;

    invoke-virtual {v0}, Lho;->cs()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, LQQPIM/STCloudOrderReq;->strCity:Ljava/lang/String;

    iget-object v0, p0, Lwr;->c:Ljd;

    sget-object v2, LQQPIM/EQueryType;->E_QUERY_TRAFFIC:LQQPIM/EQueryType;

    invoke-virtual {v2}, LQQPIM/EQueryType;->value()I

    move-result v2

    invoke-virtual {v0, v2}, Ljd;->b(I)LQQPIM/STQueryInfo;

    move-result-object v0

    iput-object v0, v1, LQQPIM/STCloudOrderReq;->stCodeNow:LQQPIM/STQueryInfo;

    iget-object v0, p0, Lwr;->b:Landroid/content/Context;

    invoke-static {v0}, Lft;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, LQQPIM/STCloudOrderReq;->strHardInfo:Ljava/lang/String;

    iget-object v0, p0, Lwr;->h:Lho;

    invoke-virtual {v0}, Lho;->cr()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, LQQPIM/STCloudOrderReq;->strProvince:Ljava/lang/String;

    iget-object v0, p0, Lwr;->h:Lho;

    invoke-virtual {v0}, Lho;->cu()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, LQQPIM/STCloudOrderReq;->strsimtype:Ljava/lang/String;

    iget-object v0, p0, Lwr;->c:Ljd;

    invoke-virtual {v0}, Ljd;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, LQQPIM/STCloudOrderReq;->strTaocan:Ljava/lang/String;

    iget-object v0, p0, Lwr;->c:Ljd;

    invoke-virtual {v0}, Ljd;->u()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, LQQPIM/STCloudOrderReq;->strTime:Ljava/lang/String;

    iget-object v0, p0, Lwr;->c:Ljd;

    sget-object v2, LQQPIM/EQueryType;->E_QUERY_TRAFFIC:LQQPIM/EQueryType;

    invoke-virtual {v2}, LQQPIM/EQueryType;->value()I

    move-result v2

    const-string v3, "00000"

    invoke-virtual {v0, v2, v3}, Ljd;->a(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v1, LQQPIM/STCloudOrderReq;->vecCodeMuilty:Ljava/util/ArrayList;

    new-instance v0, Liu;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Liu;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Liu;->getClosingDayForMonth()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, LQQPIM/STCloudOrderReq;->strMonthBalance:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, LQQPIM/STCloudOrderReq;->vecFail:Ljava/util/ArrayList;

    iget-object v0, p0, Lwr;->c:Ljd;

    invoke-virtual {v0}, Ljd;->l()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "\\|"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    iget-object v5, v1, LQQPIM/STCloudOrderReq;->vecFail:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lwr;->c:Ljd;

    invoke-virtual {v0}, Ljd;->B()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v1, LQQPIM/STCloudOrderReq;->vecSmsSeconds:Ljava/util/ArrayList;

    iget-object v0, p0, Lwr;->c:Ljd;

    invoke-virtual {v0}, Ljd;->A()I

    move-result v0

    iput v0, v1, LQQPIM/STCloudOrderReq;->nTimeOutNow:I

    const-string v0, "kfc"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sms seconds: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, LQQPIM/STCloudOrderReq;->vecSmsSeconds:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "kfc"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "time out now: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v1, LQQPIM/STCloudOrderReq;->nTimeOutNow:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    const-class v0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->getTrafficCmd(LQQPIM/STCloudOrderReq;Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/STVecCloudBak;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, LQQPIM/STVecCloudBak;->getVecbak()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-direct {p0, v0}, Lwr;->a(Ljava/util/ArrayList;)V

    :goto_1
    iget-object v0, p0, Lwr;->c:Ljd;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljd;->d(J)V

    :goto_2
    return-void

    :cond_1
    const-string v1, "kfc"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cloud cmd is empty, cmds = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_2
    :try_start_1
    const-string v0, "kfc"

    const-string v1, "cloud cmd is null from server"

    invoke-static {v0, v1}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    const-string v1, "kfc"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getTrafficCmd, net error xxxxxxxxx, errCode = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public final k()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lwy;

    invoke-direct {v1, p0}, Lwy;-><init>(Lwr;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final l()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lwr;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070049

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final m()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lwr;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070069

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
