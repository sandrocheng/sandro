.class public final Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;
.super Lcom/tencent/qqpimsecure/uilib/view/BaseView;

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView$SmsSentReceiver;
    }
.end annotation


# static fields
.field private static p:Luk;


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmk;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Landroid/widget/ListView;

.field private e:Lait;

.field private f:Ljp;

.field private g:Lsy;

.field private h:Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView$SmsSentReceiver;

.field private i:Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;

.field private j:I

.field private k:I

.field private l:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/EditText;

.field private o:Lui;

.field private q:Z

.field private r:Z

.field private s:Ljava/lang/Object;

.field private t:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ladg;",
            ">;>;"
        }
    .end annotation
.end field

.field private u:Landroid/os/Handler;

.field private v:Ldv;

.field private w:Lcom/tencent/tmsecure/module/aresengine/DataHandler$DataHandlerCallback;

.field private x:Landroid/view/View$OnClickListener;

.field private y:Landroid/content/BroadcastReceiver;

.field private z:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f0300f9

    invoke-direct {p0, p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;-><init>(Landroid/content/Context;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->a:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->q:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->r:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->s:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->t:Ljava/util/HashMap;

    new-instance v0, Lbix;

    invoke-direct {v0, p0}, Lbix;-><init>(Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->u:Landroid/os/Handler;

    new-instance v0, Lbjf;

    invoke-direct {v0, p0}, Lbjf;-><init>(Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->v:Ldv;

    new-instance v0, Lbjg;

    invoke-direct {v0, p0}, Lbjg;-><init>(Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->w:Lcom/tencent/tmsecure/module/aresengine/DataHandler$DataHandlerCallback;

    new-instance v0, Lbjb;

    invoke-direct {v0, p0}, Lbjb;-><init>(Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->x:Landroid/view/View$OnClickListener;

    new-instance v0, Lbjc;

    invoke-direct {v0, p0}, Lbjc;-><init>(Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->y:Landroid/content/BroadcastReceiver;

    new-instance v0, Lbjd;

    invoke-direct {v0, p0}, Lbjd;-><init>(Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->z:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static synthetic a(Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic a(Lmk;)Ljava/util/ArrayList;
    .locals 2

    new-instance v0, Lfn;

    invoke-direct {v0}, Lfn;-><init>()V

    iget-object v1, p0, Lmk;->mmsData:Lcom/tencent/tmsecure/module/aresengine/MmsData;

    iput-object v1, v0, Lfn;->a:Lcom/tencent/tmsecure/module/aresengine/MmsData;

    invoke-virtual {v0}, Lfn;->a()V

    iget-object v0, v0, Lfn;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static a()Luk;
    .locals 1

    sget-object v0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->p:Luk;

    return-object v0
.end method

.method public static synthetic a(Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;I)V
    .locals 4

    const/4 v3, 0x2

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b0043

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(I)V

    const v1, 0x7f0b020b

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(I)V

    const v1, 0x7f0b0045

    new-instance v2, Lbjl;

    invoke-direct {v2, p0, p1, v0}, Lbjl;-><init>(Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;ILcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setPositiveButton(ILandroid/view/View$OnClickListener;I)V

    const v1, 0x7f0b0033

    new-instance v2, Lbjm;

    invoke-direct {v2, v0}, Lbjm;-><init>(Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setPositiveButton(ILandroid/view/View$OnClickListener;I)V

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    return-void
.end method

.method public static synthetic a(Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lmk;

    invoke-direct {v0}, Lmk;-><init>()V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmk;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->c:Ljava/lang/String;

    iput-object v1, v0, Lmk;->name:Ljava/lang/String;

    const/4 v1, 0x2

    iput v1, v0, Lmk;->type:I

    iput-object p1, v0, Lmk;->body:Ljava/lang/String;

    const/4 v1, 0x1

    iput v1, v0, Lmk;->a:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lmk;->date:J

    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->f:Ljp;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljp;->a(Lmk;Z)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->j:I

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->k:I

    return-void
.end method

.method public static synthetic a(Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->a(Ljava/util/List;)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmk;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmk;

    iget-object v2, v0, Lmk;->mmsData:Lcom/tencent/tmsecure/module/aresengine/MmsData;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lmk;->mmsData:Lcom/tencent/tmsecure/module/aresengine/MmsData;

    iget-object v2, v2, Lcom/tencent/tmsecure/module/aresengine/MmsData;->mmsNotificationIndHeader:Lcom/tencent/tmsecure/module/aresengine/MmsNotificationIndHeader;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->o:Lui;

    new-instance v3, Lml;

    iget v4, v0, Lmk;->id:I

    invoke-direct {v3, v0, v4}, Lml;-><init>(Lmk;I)V

    invoke-virtual {v2, v3}, Lui;->a(Lml;)V

    const/4 v2, 0x1

    iput-boolean v2, v0, Lmk;->l:Z

    goto :goto_0
.end method

.method private static a(Ljava/util/ArrayList;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ladg;",
            ">;)Z"
        }
    .end annotation

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ladg;

    invoke-virtual {v0}, Ladg;->b()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    invoke-virtual {v0}, Ladg;->b()I

    move-result v3

    if-eq v3, v1, :cond_3

    invoke-virtual {v0}, Ladg;->b()I

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Ladg;->b()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public static synthetic b(Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;)Ljp;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->f:Ljp;

    return-object v0
.end method

.method public static synthetic b(Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;Ljava/util/List;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmk;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->c(Lmk;)Z

    move-result v2

    iput-boolean v2, v0, Lmk;->i:Z

    goto :goto_0
.end method

.method public static synthetic b(Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;I)Z
    .locals 3

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->e:Lait;

    invoke-virtual {v0, p1}, Lait;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmk;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->f:Ljp;

    invoke-virtual {v1, v0}, Ljp;->a(Lmk;)Z

    move-result v1

    iget-object v2, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    const v0, 0x7f0b01c5

    :goto_0
    invoke-static {v2, v0}, Lha;->a(Landroid/content/Context;I)V

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v2, Lbjn;

    invoke-direct {v2, p0}, Lbjn;-><init>(Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return v1

    :cond_1
    const v0, 0x7f0b01cd

    goto :goto_0
.end method

.method public static synthetic b(Lmk;)Z
    .locals 1

    invoke-static {p0}, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->c(Lmk;)Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;I)I
    .locals 0

    iput p1, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->k:I

    return p1
.end method

.method public static synthetic c(Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lbjn;

    invoke-direct {v1, p0}, Lbjn;-><init>(Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic c(Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;Ljava/util/List;)V
    .locals 4

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->o:Lui;

    iget-object v2, v0, Lui;->d:Ljava/util/HashSet;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    new-instance v3, Ljava/lang/Integer;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmk;

    iget v0, v0, Lmk;->id:I

    invoke-direct {v3, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmk;

    const/4 v3, 0x1

    iput-boolean v3, v0, Lmk;->l:Z

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private static c(Lmk;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    iget-object v1, p0, Lmk;->mmsData:Lcom/tencent/tmsecure/module/aresengine/MmsData;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmk;->mmsData:Lcom/tencent/tmsecure/module/aresengine/MmsData;

    iget-object v1, v1, Lcom/tencent/tmsecure/module/aresengine/MmsData;->mmsNotificationIndHeader:Lcom/tencent/tmsecure/module/aresengine/MmsNotificationIndHeader;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmk;->mmsData:Lcom/tencent/tmsecure/module/aresengine/MmsData;

    iget-object v1, v1, Lcom/tencent/tmsecure/module/aresengine/MmsData;->mmsNotificationIndHeader:Lcom/tencent/tmsecure/module/aresengine/MmsNotificationIndHeader;

    iget-wide v1, v1, Lcom/tencent/tmsecure/module/aresengine/MmsNotificationIndHeader;->expiry:J

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static synthetic d(Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;I)I
    .locals 3

    const/4 v2, -0x1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->e:Lait;

    invoke-virtual {v0}, Lait;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->e:Lait;

    invoke-virtual {v0}, Lait;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmk;

    iget v0, v0, Lmk;->id:I

    if-ne v0, p1, :cond_0

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public static synthetic d(Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;)Lui;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->o:Lui;

    return-object v0
.end method

.method public static synthetic e(Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->s:Ljava/lang/Object;

    return-object v0
.end method

.method public static synthetic f(Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;)I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->j:I

    return v0
.end method

.method public static synthetic g(Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;)I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->k:I

    return v0
.end method

.method public static synthetic h(Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;)Lait;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->e:Lait;

    return-object v0
.end method

.method public static synthetic i(Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic j(Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->m:Landroid/widget/TextView;

    return-object v0
.end method

.method public static synthetic k(Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->n:Landroid/widget/EditText;

    return-object v0
.end method

.method public static synthetic l(Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic m(Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic n(Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic o(Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic p(Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic q(Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;)Ldv;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->v:Ldv;

    return-object v0
.end method

.method public static synthetic r(Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;)Lsy;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->g:Lsy;

    return-object v0
.end method

.method public static synthetic s(Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic t(Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->f:Ljp;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljp;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->f:Ljp;

    invoke-virtual {v1, v0}, Ljp;->c(Ljava/util/List;)Z

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->f:Ljp;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljp;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b01c0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lha;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lbjn;

    invoke-direct {v1, p0}, Lbjn;-><init>(Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static synthetic u(Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->q:Z

    return v0
.end method

.method public static synthetic v(Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public final loadDataList()V
    .locals 6

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->loadDataList()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->f:Ljp;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljp;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->a:Ljava/util/List;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->t:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->t:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->t:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    new-instance v3, Lfn;

    invoke-direct {v3}, Lfn;-><init>()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmk;

    iget-object v4, v0, Lmk;->mmsData:Lcom/tencent/tmsecure/module/aresengine/MmsData;

    iput-object v4, v3, Lfn;->a:Lcom/tencent/tmsecure/module/aresengine/MmsData;

    invoke-virtual {v3}, Lfn;->a()V

    iget-object v4, v3, Lfn;->b:Ljava/util/ArrayList;

    invoke-static {v4}, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->a(Ljava/util/ArrayList;)Z

    move-result v4

    if-nez v4, :cond_1

    iget v4, v0, Lmk;->id:I

    if-lez v4, :cond_1

    iget-object v4, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->t:Ljava/util/HashMap;

    new-instance v5, Ljava/lang/Integer;

    iget v0, v0, Lmk;->id:I

    invoke-direct {v5, v0}, Ljava/lang/Integer;-><init>(I)V

    iget-object v0, v3, Lfn;->b:Ljava/util/ArrayList;

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->a:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->mHandler:Landroid/os/Handler;

    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final onBackClick()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->n:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0113

    invoke-static {v1, v2}, Lha;->a(Landroid/content/Context;I)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->f:Ljp;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljp;->b(Ljava/lang/String;Ljava/lang/String;)Z

    :goto_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->o:Lui;

    invoke-virtual {v0}, Lui;->a()V

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onBackClick()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->f:Ljp;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljp;->d(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public final onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final onCreate()V
    .locals 4

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onCreate()V

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-static {v0}, Lsy;->a(Landroid/app/Activity;)Lsy;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->g:Lsy;

    new-instance v0, Ljp;

    const-string v1, "securesmslog"

    const-string v2, "secure_mms_pdu"

    const-string v3, "secure_mms_parts"

    invoke-direct {v0, v1, v2, v3}, Ljp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->f:Ljp;

    const-class v0, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->i:Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;

    sget-object v0, Lui;->g:Lui;

    if-nez v0, :cond_0

    new-instance v0, Lui;

    invoke-direct {v0}, Lui;-><init>()V

    sput-object v0, Lui;->g:Lui;

    :cond_0
    sget-object v0, Lui;->g:Lui;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->o:Lui;

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "smslogname"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->c:Ljava/lang/String;

    const-string v1, "smslogphonenum"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->b:Ljava/lang/String;

    const v0, 0x7f080341

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->d:Landroid/widget/ListView;

    const v0, 0x7f080242

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->n:Landroid/widget/EditText;

    const v0, 0x7f080342

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->m:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->f:Ljp;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljp;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->n:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->n:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->m:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->n:Landroid/widget/EditText;

    new-instance v1, Lbji;

    invoke-direct {v1, p0}, Lbji;-><init>(Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v0, 0x7f080343

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->l:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->l:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0189

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->l:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    new-instance v1, Lbjj;

    invoke-direct {v1, p0}, Lbjj;-><init>(Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;)V

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lait;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->a:Ljava/util/List;

    invoke-direct {v0, v1, v2, p0}, Lait;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->e:Lait;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->e:Lait;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->x:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lait;->a(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->e:Lait;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->t:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lait;->a(Ljava/util/HashMap;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->d:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->e:Lait;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->d:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->d:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.tencent.qqpimsecure.intent_secure_sms_sent"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView$SmsSentReceiver;

    invoke-direct {v1, p0}, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView$SmsSentReceiver;-><init>(Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;)V

    iput-object v1, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->h:Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView$SmsSentReceiver;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->h:Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView$SmsSentReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Luk;

    invoke-direct {v0}, Luk;-><init>()V

    sput-object v0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->p:Luk;

    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->n:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->m:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public final onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 11

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v1, -0x2

    instance-of v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v0, :cond_1

    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iput v1, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    :goto_0
    if-ne v0, v1, :cond_b

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->d:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v1, v0

    :goto_1
    if-gez v1, :cond_2

    :cond_0
    :goto_2
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->d:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_2
    new-instance v3, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v3, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->setContextItemPosition(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->e:Lait;

    invoke-virtual {v0, v1}, Lait;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmk;

    iget v1, v0, Lmk;->id:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v2, v0, Lmk;->phonenum:Ljava/lang/String;

    iget-object v1, v0, Lmk;->name:Ljava/lang/String;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2}, Lfu;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_7

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v9, :cond_7

    iget v5, v0, Lmk;->type:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_5

    new-instance v5, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;

    invoke-direct {v5}, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;-><init>()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->mContext:Landroid/content/Context;

    const v8, 0x7f0b0042

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v1, :cond_3

    const-string v7, ""

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_3
    move-object v1, v2

    :cond_4
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->name:Ljava/lang/String;

    const/16 v1, 0x8

    iput v1, v5, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->eventCode:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    iget-object v1, v0, Lmk;->mmsData:Lcom/tencent/tmsecure/module/aresengine/MmsData;

    if-nez v1, :cond_6

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;

    invoke-direct {v1}, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;-><init>()V

    iget-object v2, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->mContext:Landroid/content/Context;

    const v5, 0x7f0b0491

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->name:Ljava/lang/String;

    const/4 v2, 0x7

    iput v2, v1, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->eventCode:I

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    new-instance v1, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;

    invoke-direct {v1}, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;-><init>()V

    iget-object v2, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->mContext:Landroid/content/Context;

    const v5, 0x7f0b000c

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->name:Ljava/lang/String;

    iput v9, v1, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->eventCode:I

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;

    invoke-direct {v1}, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;-><init>()V

    iget-object v2, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->mContext:Landroid/content/Context;

    const v5, 0x7f0b0188

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->name:Ljava/lang/String;

    iput v10, v1, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->eventCode:I

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    invoke-virtual {v3, v4}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->setDataAdapter(Ljava/util/ArrayList;)V

    new-instance v1, Lbjk;

    invoke-direct {v1, p0, v3}, Lbjk;-><init>(Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;)V

    invoke-virtual {v3, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v1, v0, Lmk;->name:Ljava/lang/String;

    invoke-virtual {v0}, Lmk;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v10, :cond_8

    const/4 v0, 0x0

    :cond_8
    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_a

    move-object v0, v1

    :cond_9
    :goto_3
    invoke-virtual {v3, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->show()V

    goto/16 :goto_2

    :cond_a
    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0409

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_b
    move v1, v0

    goto/16 :goto_1
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->h:Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView$SmsSentReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    sget-object v0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->p:Luk;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->p:Luk;

    invoke-virtual {v0}, Luk;->e()V

    :cond_0
    sget-object v0, Lui;->g:Lui;

    if-nez v0, :cond_1

    new-instance v0, Lui;

    invoke-direct {v0}, Lui;-><init>()V

    sput-object v0, Lui;->g:Lui;

    :cond_1
    sget-object v0, Lui;->g:Lui;

    invoke-virtual {v0}, Lui;->a()V

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onDestroy()V

    return-void
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->e:Lait;

    invoke-virtual {v0}, Lait;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p3, v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->e:Lait;

    invoke-virtual {v0, p3}, Lait;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lmk;

    iget v0, v6, Lmk;->h:I

    const/16 v1, 0xbb8

    if-ne v0, v1, :cond_0

    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.tencent.qqpimsecure.intent_secure_sms_sent"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->mContext:Landroid/content/Context;

    invoke-static {v3, v4, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->b:Ljava/lang/String;

    invoke-virtual {v6}, Lmk;->getBody()Ljava/lang/String;

    move-result-object v3

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    iget v0, v6, Lmk;->id:I

    iput v0, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->j:I

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->k:I

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lbjn;

    invoke-direct {v1, p0}, Lbjn;-><init>(Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final onOptionClick(I)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->b:Ljava/lang/String;

    invoke-static {v0}, Lft;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final onOptionsItemSelected(Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuModel;)Z
    .locals 4

    const/4 v3, 0x2

    invoke-virtual {p1}, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuModel;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_0
    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b0030

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(I)V

    const v1, 0x7f0b01ec

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(I)V

    const v1, 0x7f0b0045

    new-instance v2, Lbiz;

    invoke-direct {v2, p0, v0}, Lbiz;-><init>(Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setPositiveButton(ILandroid/view/View$OnClickListener;I)V

    const v1, 0x7f0b0033

    new-instance v2, Lbja;

    invoke-direct {v2, v0}, Lbja;-><init>(Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setNegativeButton(ILandroid/view/View$OnClickListener;I)V

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
    .end packed-switch
.end method

.method public final onPause()V
    .locals 2

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onPause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->q:Z

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->i:Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;

    const-string v1, "incoming_sms"

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->findIntercepter(Ljava/lang/String;)Lcom/tencent/tmsecure/module/aresengine/DataIntercepter;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/tmsecure/module/aresengine/DataIntercepter;->dataHandler()Lcom/tencent/tmsecure/module/aresengine/DataHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->w:Lcom/tencent/tmsecure/module/aresengine/DataHandler$DataHandlerCallback;

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/aresengine/DataHandler;->removeCallback(Lcom/tencent/tmsecure/module/aresengine/DataHandler$DataHandlerCallback;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->i:Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;

    const-string v1, "outing_sms"

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->findIntercepter(Ljava/lang/String;)Lcom/tencent/tmsecure/module/aresengine/DataIntercepter;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/tmsecure/module/aresengine/DataIntercepter;->dataHandler()Lcom/tencent/tmsecure/module/aresengine/DataHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->w:Lcom/tencent/tmsecure/module/aresengine/DataHandler$DataHandlerCallback;

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/aresengine/DataHandler;->removeCallback(Lcom/tencent/tmsecure/module/aresengine/DataHandler$DataHandlerCallback;)V

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->y:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->z:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    const/16 v3, 0x13

    const/4 v2, 0x0

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b052c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0201f9

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final onResume()V
    .locals 5

    const/4 v4, 0x1

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onResume()V

    iput-boolean v4, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->q:Z

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->r:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->mHandler:Landroid/os/Handler;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->i:Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;

    const-string v1, "incoming_sms"

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->findIntercepter(Ljava/lang/String;)Lcom/tencent/tmsecure/module/aresengine/DataIntercepter;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/tmsecure/module/aresengine/DataIntercepter;->dataHandler()Lcom/tencent/tmsecure/module/aresengine/DataHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->w:Lcom/tencent/tmsecure/module/aresengine/DataHandler$DataHandlerCallback;

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/aresengine/DataHandler;->addCallback(Lcom/tencent/tmsecure/module/aresengine/DataHandler$DataHandlerCallback;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->i:Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;

    const-string v1, "outing_sms"

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->findIntercepter(Ljava/lang/String;)Lcom/tencent/tmsecure/module/aresengine/DataIntercepter;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/tmsecure/module/aresengine/DataIntercepter;->dataHandler()Lcom/tencent/tmsecure/module/aresengine/DataHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->w:Lcom/tencent/tmsecure/module/aresengine/DataHandler$DataHandlerCallback;

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/aresengine/DataHandler;->addCallback(Lcom/tencent/tmsecure/module/aresengine/DataHandler$DataHandlerCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->z:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.tencent.qqpimsecure.service.ACTION_NOTIFY_SECURE_MMSPATR_DOWNLOAD_FAILURE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->y:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.tencent.qqpimsecure.service.ACTION_NOTIFY_SECURE_MMSPATR_DOWNLOAD_SUCCESS"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->u:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final refreshListData()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->r:Z

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->e:Lait;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lait;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->e:Lait;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->t:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lait;->a(Ljava/util/HashMap;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->e:Lait;

    invoke-virtual {v0}, Lait;->notifyDataSetChanged()V

    return-void
.end method

.method protected final subviewTemplateUIConfig(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->b:Ljava/lang/String;

    :goto_0
    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTitleTextData(Ljava/lang/String;)V

    const v0, 0x7f02010c

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setOptionButtonWithImageResource(I)V

    const/16 v0, 0x31

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setInfoBarStyle(B)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->c:Ljava/lang/String;

    goto :goto_0
.end method
